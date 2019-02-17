#!/bin/python

from sys import exit, argv
from yaml import load
from subprocess import check_call, CalledProcessError

class Printer:
    INFO = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'

    def print_info(message):
        print(
            Printer.INFO
            + message
            + Printer.ENDC
        )
    def print_error(message):
        print(
            Printer.FAIL
            + message
            + Printer.ENDC
        )
    def build_command_message(command):
        message = '$'
        for argument in command:
            message += ' "' + argument + '"'
        return message

class Framework:
    def __init__(self, hook_file_path):
        content = load(open(hook_file_path))
        self.hooks = content['hooks']

    def run(self, hook_event):
        if None == self.hooks:
            return
        if hook_event not in self.hooks:
            return

        hooks = self.hooks[hook_event]
        for hook in hooks:
            Printer.print_info(Printer.build_command_message(hook))
            check_call(hook)


if __name__ == '__main__':
    framework = Framework(argv[2])
    try:
        framework.run(argv[1])
    except FileNotFoundError as e:
        Printer.print_error(e.args[1])
        exit(1)
    except CalledProcessError as e:
        Printer.print_error('Returned ' + str(e.returncode))
        exit(e.returncode)
