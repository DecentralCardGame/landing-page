#!/usr/bin/env bash

lftp -c "open davidgengenbach.de; cd sites/decentral-card.net; mirror --reverse --exclude=.git"