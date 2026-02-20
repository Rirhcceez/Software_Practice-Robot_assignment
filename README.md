# Hotel Registration Form - Automated UI Testing

This project contains an automated UI testing suite for a Hotel Registration Form. The tests are written using **Robot Framework** and **SeleniumLibrary** to ensure the web form functions correctly under various user scenarios.

## 📁 Project Structure

This project follows a modular Page Object Model (POM) architecture for better maintainability:

* `tests/` : Contains the main executable test suite (`testcase.robot`).
* `resources/` : Contains reusable keywords separated by their functionality (`keyword.resource`, `input.resource`, `check.resource`).
* `variables/` : Stores locators and test data (`variable.resource`).
* `results/` : Automatically generated folder storing test logs, reports, and screenshots.

## 🧪 Test Scenarios

The test suite covers 1 Happy Case and 6 Unhappy (Negative) Cases to validate form validations and error handling:

1.  **Happy Case:** Fills all valid inputs and successfully submits the form.
2.  **Unhappy Case - Missing First Name:** Verifies the system rejects the form and shows an error when the First Name is empty.
3.  **Unhappy Case - Missing Last Name:** Verifies error handling for an empty Last Name.
4.  **Unhappy Case - Missing Phone:** Verifies error handling for an empty Phone Number.
5.  **Unhappy Case - Missing Email:** Verifies error handling for an empty Email field.
6.  **Unhappy Case - Missing Number of Adults:** Verifies error handling when the Dropdown is not selected.
7.  **Unhappy Case - Missing Accept Checkbox:** Verifies error handling when Terms & Conditions are not checked.

## 🚀 How to Run the Tests

### Prerequisites
Make sure you have Python installed, then install the required libraries:
```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

**Execution Command**
To run the entire test suite and generate the reports inside the results folder, open your terminal at the root of the project and execute:
```bash
robot -d results tests/testcase.robot
```

**Running Specific Test Cases**
You can use tags to run specific groups of tests:
 - Run only the Happy Path:
    ```bash
    robot -d results tests/testcase.robot
    ```
 - Run only the Negative Tests:
    ```bash
    robot -d results -i "Unhappy Case" tests/testcase.robot
    ```