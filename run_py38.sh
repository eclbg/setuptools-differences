EXPECTED_PYTHON_VERSION="3.8"
PYTHON_VERSION_OUT=$(python --version)
PYTHON_VERSION=$(echo ${PYTHON_VERSION_OUT##* } | rev | cut -d. -f2,3 | rev)

if [ "$PYTHON_VERSION" != "$EXPECTED_PYTHON_VERSION" ]; then
    printf "Expected Python $EXPECTED_PYTHON_VERSION. Run with $PYTHON_VERSION"
    return 1
fi

python -mvenv .venv_py38
. .venv_py38/bin/activate
pip install .
a_script && deactivate || deactivate
