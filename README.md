# Grey Matter Bridge CUE

CUE files for a Grey Matter bridge mesh configurations.

## Prerequisites

- [CUE CLI](https://cuelang.org/docs/install/)

## Dependencies

This project makes use of git submodules for dependency management.

## Getting Started

Fetch all necessary dependencies:

```sh
./scripts/bootstrap
```

## Generate mesh configs

```sh
cue eval -c EXPORT.cue --out yaml -e configs
```
