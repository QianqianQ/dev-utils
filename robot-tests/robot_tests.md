# Robot tests

## Package installation

If the packages for development purpose have not been installed
```bash
pip install -r requirements-dev.txt

robotframework==6.1.1
robotframework-selenium2library==3.0.0
robotframework-archivelibrary==0.4.2
robotframework-pdf2textlibrary==1.0.1
selenium==4.9.0
urllib3==1.26.18
```

## Directory structure

- `tests` folder contains tests suites
  - Each suite contains tests with tags defined as `Tags` which can be used to run particular types of tests.
- `resources` folder contains the resources for running the tests.
- `results` folder contains the test results. `report.html` and `log.html` files contain the test results and logs.
    > Report details clearly viewable statistics including Pass/Fail ratios and elapsed times.
    This gives you great overview on the test execution.
    Log details statistics from each step of the test execution, from keyword to keyword.
    It enables you to drill down on the specifics of the test in case of failure or otherwise.

## Running robot tests

### Using `robot` keyword
```bash
# Run all tests (and save data in results folder)
robot -d results tests

# Run a single test suite:
robot -d results tests/xx.robot

# Run a single test from a suite using test name:
robot -t <test_name> <test_suite>
# Example
robot -d results -t "test_name" tests

# To run tests from a suite by tags:
robot -i <tag> <test_suite>
# Example
robot -d results -i Tag tests

# Examples are also could be seen from run_tests.sh
```

### Using `run_tests.sh` script
```bash
# Run all tests (and save data in results folder):
sh run_tests.sh

# Run a single test suite
sh run_tests.sh xxx

# To run tests from a suite by tags:
# use tags as the first or second parameter
# Examples
sh run_tests.sh Calculation
sh run_tests.sh xxx GUI

# To clean the results directory before running tests:
# use 'clean' as first, second or third parameter
# Examples
sh run_tests.sh clean
sh run_tests.sh xxx clean
sh run_tests.sh GUI clean

# The script also re-runs failed tests once, in case of test failure.
# Run all tests (and save data in results folder)
```
