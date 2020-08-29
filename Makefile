lint:
	python -m isort scrapli_ssh2/
	python -m isort tests/
	python -m black scrapli_ssh2/
	python -m black tests/
	python -m pylama scrapli_ssh2/
	python -m pydocstyle scrapli_ssh2/
	python -m mypy scrapli_ssh2/

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
