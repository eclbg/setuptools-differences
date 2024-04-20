EXPECTED_PYTHON_VERSION="3.11"
PYTHON_VERSION_OUT=$(python --version)
PYTHON_VERSION=$(echo ${PYTHON_VERSION_OUT##* } | rev | cut -d. -f2,3 | rev)

if [ "$PYTHON_VERSION" != "$EXPECTED_PYTHON_VERSION" ]; then
    printf "Expected Python $EXPECTED_PYTHON_VERSION. Run with $PYTHON_VERSION"
    return 1
fi

python -mvenv .venv_py311
. .venv_py311/bin/activate
pip install .
a_script && deactivate || deactivate
