FROM snyk/snyk-cli:python-3

LABEL "com.github.actions.name"="Snyk"
LABEL "com.github.actions.description"="Run a test to check for vulnerabilities"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/snyk/snyk"
LABEL "homepage"="http://github.com/snyk/snyk"
LABEL "maintainer"="Snyk snyk-sec@snyk.io"

ADD ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
