.PHONY: template package

CHART_NAME=assisted-service
VERSION ?= "2.3.0"

regenerate-chart:
	echo "Regenerating helm chart ..."
	rm -rf stable/$(CHART_NAME)
	python3 -m pip install -r autogen-chart/requirements.txt
	python3 autogen-chart/csv-to-helm-chart.py --destination .

template:
	helm template stable/$(CHART_NAME)

package:
	helm package stable/$(CHART_NAME) --version $(VERSION)

lint:
	helm lint stable/$(CHART_NAME)

install: package
	helm install $(CHART_NAME) stable/$(CHART_NAME) --version $(VERSION)