CHANGELOG
=======

# 2020.10.24
- Update ssh2-python pin -- keyboard interactive auth bug has been fixed!


# 2020.10.10

- Remove keepalive stuff for now (in line w/ scrapli core)
- Remove transport session locks


# 2020.10.07

- Dev pin bumps
- Re-pin ssh2 to newer versions now that there have been some updates
- Fix setup.py github url
- Add Python 3.9 to CI
- Basically no real changes for users other than the pins... :)


# 2020.06.06

- Minor internal changes, changed to use nox, better linting/typing because we now snag the scrapli type stubs, fixed
 a few docstrings, mostly just housekeeping!


# 2020.04.30

- Minor change to handle ssh keys and keep in line with scrapli core.


# 2020.04.18

- Initial separation of ssh2-python transport into its own repo as a plugin
