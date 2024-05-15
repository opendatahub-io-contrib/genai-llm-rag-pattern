# Architectural Decision Records (ADRs)

This project uses [Compliance Trestle](https://github.com/oscal-compass/compliance-trestle/) to generate and enforce the structure of ADRs. Read more about how `trestle author` is used to enforce template structure [here](https://oscal-compass.github.io/compliance-trestle/trestle_author/)

In order to generate a new ADR:

1. `cd {REPO_ROOT}/docs`
1. Use `trestle author docs create-sample -tn ADR` to generate a new ADR document.
1. Write your ADR with the created documentation.
1. Validate the ADR with `trestle author docs validate -tn ADR -hv` from `{REPO_ROOT}/docs`
   1. This is also completed as part of the test pipeline
1. Commit and run through the standard PR review process.
