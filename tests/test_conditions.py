import pytest
from subprocess import check_output

script_path = "./cond1.sh"
script_path_check_string = "./check_string.sh"

def run_shell_test(script, arg1):
    out = check_output([script, str(arg1)], universal_newlines=True)
    return int(out.split("\n")[0])

def run_shell_check_string(script, arg1):
    out = check_output([script, str(arg1)], universal_newlines=True)
    return str(out.split("\n")[0])

def test_case1():
    result = run_shell_test(script_path, '1,2,3,4,5,6,7')
    assert result == 12

def test_case2():
    result = run_shell_test(script_path, '1,1,2,2,5,7')
    assert result == 4

def test_case3():
    result = run_shell_test(script_path, '0,0,0,1')
    assert result == 0

def test_case4():
    result = run_shell_test(script_path, '')
    assert result == 0

def test_case5():
    result = run_shell_test(script_path, '10,9,8,7,6,5,4,3,2,1')
    assert result == 30

def test_case6():
    result = run_shell_test(script_path, '2,2,4,5,8,111,120,12')
    assert result == 148

def test_check_string():
    check=False
    result = run_shell_check_string(script_path_check_string, 'Hello !! 238   ')
    if "Numbers: 3 Symbols: 2 Letters: 5" in result:
        check = True
    assert check == True