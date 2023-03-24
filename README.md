# Curie (Pre-Alpha)

![license](https://img.shields.io/badge/license-GPL--2.0-green.svg)

## Concept

<h1 align="center">
    <img alt="Currie Concept" title="Currie Concept" src=".github/curie_desktop_figma.png" />
</h1>

## About

- Licensed under [GPL-2.0 license](https://opensource.org/licenses/GPL-2.0)

> It's FREE -> "Free as in freedom"

### Versioning

- This project implements an opinionated interpretation of [Calendar Versioning](https://calver.org/).

```bash
                                             + YEAR
                                             |
        + YEAR                               |  + MONTH OF THE YEAR
        |                                    |  |
        |  + MONTH OF THE YEAR               |  | + RELEASE ITERATION
        |  |                                 |  | |
        |  | + RELEASE ITERATION             |  | |   + RELEASE CANDIDATE ITERATION
        |  | |                               |  | |   |
     2022.03.2                            2022.03.3-rc1

     ^ RELEASE                            ^ RELEASE CANDIDATES
```

## TODO

Some of the things needed for release.

- [x] Implement Theme switcher.
- [x] Implement Language switcher.
- [x] Implement State Managament and Dependecy injection with Riverpod.
- [ ] Implement Routing with GoRouter.
- [ ] Implement API with DIO and cancelation token.
- [ ] Connect with [Curie Api](https://github.com/NatanAmorim/curie_api).
- [ ] Make Responsive to fit all screen sizes.

### Pull Request

- Clearly describe what you aim to add or fix.
- Try to minimize code changes and use existing style/functions.

### Reporting Issues and Bugs

To better respond to issues please follow these general guidelines when explaining the problem.

1. Clearly describe what you aim to fix, if relevant attach output/logs/screenshots.
2. Describe how developers can reproduce the bug.
