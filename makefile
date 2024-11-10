.PHONY: gen
gen: gen-chart-doc

.PHONY: gen-chart-doc
gen-chart-doc:
	@echo "Generate chart docs"
	@chart-doc-gen -t=./charts/factorio-server-charts/readme.tpl -d=./charts/factorio-server-charts/doc.yaml -v=./charts/factorio-server-charts/values.yaml > ./charts/factorio-server-charts/README.md

.PHONY: gen-schema
gen-schema:
	@echo "Generate helm schema json"
	@helm schema-gen ./charts/factorio-server-charts/values.yaml > ./charts/factorio-server-charts/values.schema.json

.PHONY: verify
verify: verify-gen

.PHONY: verify-gen
verify-gen:
	@if !(git diff --exit-code HEAD); then \
		echo "generated files are out of date, run make gen"; exit 1; \
	fi