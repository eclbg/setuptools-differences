from setuptools import setup, find_packages


setup(
    name='setuptools-find-packages-test',
    version='1.0',
    author='Enric Calabuig',
    author_email='enric.calabuig@gmail.com',
    description='Comparing find_packages behaviours in different python versions',
    packages=find_packages(),
    entry_points={
        'console_scripts': [
            'a_script=pkg:run',
        ],
    }
)
