# Subchart Update

When updating this sub-chart, please remember to tweak the image tag in values.yaml.
That is because we want to use -ubi images if possible and there is no suffix option, so
we just override the tag with the version + "-ubi"

## Steps

1. Edit the version in Chart.yaml
1. Run `helm dependency update .`
1. Run `./update-helm-dependency.sh`
1. Tweak `values.yaml` with the new image versions
1. Run `make test`
1. Commit to git
