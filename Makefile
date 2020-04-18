lint:
	python -m isort -rc -y .
	python -m black .
	python -m pylama .
	python -m pydocstyle .
	python -m mypy --strict scrapli_ssh2/

lint_full:
	python -m isort -rc -y .
	python -m black .
	python -m pylama .
	python -m pydocstyle .
	python -m mypy --strict scrapli_ssh2/
	find scrapli_ssh2 -type f \( -iname "*.py" ! -iname "ptyprocess.py" \) | xargs darglint -x

cov:
	python -m pytest \
	--cov=scrapli_ssh2 \
	--cov-report html \
	--cov-report term \
	tests/

cov_unit:
	python -m pytest \
	--cov=scrapli_ssh2 \
	--cov-report html \
	--cov-report term \
	tests/unit/

test:
	python -m pytest tests/

test_unit:
	python -m pytest tests/unit/

test_functional:
	python -m pytest tests/functional/
	python -m pytest examples/

.PHONY: docs
docs:
	rm -rf docs/scrapli_ssh2
	python -m pdoc \
	--html \
	--output-dir docs \
	scrapli_ssh2 \
	--force
