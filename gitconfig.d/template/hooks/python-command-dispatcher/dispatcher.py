#!/usr/bin/python3

from sys import exit, argv
from yaml import load
from subprocess import check_call, CalledProcessError
from os.path import expandvars

class CommandNameNotDefined(Exception):
    def __init__(self, command_name):
        self.message = 'The command name "' + command_name + '" is undefined'

class Printer:
    INFO = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'

    @classmethod
    def print_info(cls, message):
        print(
            cls.INFO
            + message
            + cls.ENDC
        )
    @classmethod
    def print_error(cls, message):
        print(
            cls.FAIL
            + message
            + cls.ENDC
        )
    def build_command_message(command):
        message = '$'
        for argument in command:
            message += ' \'' + argument + '\''
        return message



class Dispatcher:
    def __init__(self, command_file_path):
        content = load(open(command_file_path))['config']
        self.commands = self.expand_command(content['commands'])
        self.events = content['events']

    @staticmethod
    def expand_command(commands):
        for command_name, command in commands.items():
            commands[command_name] = list(map(expandvars, command))

        return commands

    def run(self, event_name):
        if None == self.events:
            return
        if event_name not in self.events:
            return

        command_names = self.events[event_name]
        for command_name in command_names:
            if command_name not in self.commands:
                raise CommandNameNotDefined(command_name)
            command = self.commands[command_name]
            Printer.print_info(Printer.build_command_message(command))
            check_call(command)


if __name__ == '__main__':
    framework = Dispatcher(argv[2])
    try:
        framework.run(argv[1])
    except FileNotFoundError as e:
        Printer.print_error(e.args[1])
        exit(1)
    except CommandNameNotDefined as e:
        Printer.print_error(e.message)
        exit(1)
    except CalledProcessError as e:
        Printer.print_error('Returned ' + str(e.returncode))
        exit(e.returncode)
