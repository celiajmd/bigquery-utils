#!/bin/bash

echo "{\"projectId\": \"${PROJECT_ID}\", \"location\": \"${BQ_LOCATION}\"}" > .df-credentials.json
dataform install
dataform run "${DATAFORM_ACTIONS}" "${DATAFORM_TAGS}"