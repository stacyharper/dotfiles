
from re import match

def test(value, parameters):
    match_all = True
    for parameter in parameters:
        if (None == match(parameter, value)):
            match_all = False
    return match_all

