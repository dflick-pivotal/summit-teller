#!/usr/bin/env bash

cf cs p-mysql 100mb db
cf cs p-config-server standard config-server -c '{"git": { "uri": "https://github.com/dflick-pivotal/summit-teller", "searchPaths": "configuration" } }'
cf cs p-service-registry standard service-registry
cf cs p-circuit-breaker-dashboard standard circuit-breaker
