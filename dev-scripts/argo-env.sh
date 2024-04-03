#!/bin/sh
ARGO_CMD=`oc get secrets -A -o jsonpath='{range .items[*]}{"oc get -n "}{.metadata.namespace}{" routes; oc -n "}{.metadata.namespace}{" extract secrets/"}{.metadata.name}{" --to=-\\n"}{end}' | grep gitops-cluster`
CMD=`echo $ARGO_CMD | sed 's|- oc|-;oc|g'`

eval $CMD
