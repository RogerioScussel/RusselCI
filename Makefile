deploy_prod/k8s:
	@echo "Deploying to PROD"
	@curl -g -X POST "http://cd.vivareal.io/buildByToken/buildWithParameters?job=datazap/metabase/metabase-prod&token=$(JENKINS_TOKEN)&VERSION=$(VERSION)&ENVIRONMENT=$(ENVIRONMENT)&cause=CD"

deploy_qa/k8s:
	@echo "Deploying to QA"
	@curl -g -X POST "http://cd.vivareal.io/buildByToken/buildWithParameters?job=datazap/metabase/metabase-qa&token=$(JENKINS_TOKEN)&VERSION=$(VERSION)&BRANCH=$(BRANCH)&ENVIRONMENT=qa&cause=CD"
