#!/bin/bash

config=(config_global config_ipsoft config_github)

echo "cat ${config[*]} > config"
      cat ${config[*]} > config
