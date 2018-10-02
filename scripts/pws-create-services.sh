#!/usr/bin/env bash

cf create-service cleardb spark db
cf create-service p-config-server trial config-server -c '{"git": { "uri": "https://github.com/dflick-pivotal/summit-teller", "searchPaths": "configuration" } }'
cf create-service p-service-registry trial service-registry
cf create-service p-circuit-breaker-dashboard trial circuit-breaker
