#!/bin/bash
kind delete clusters hlb-dev && kind create cluster --config=../../dev/02-config/10-cluster-config.yaml