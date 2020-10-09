[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/qualiture/sync-bas-env">
    <img src="https://cdn2.iconfinder.com/data/icons/network-roundline/512/cloud_settings-512.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">sync-env-bas</h3>

  <p align="center">
    A bash shell script to transfer SAP Business Application Studio ("SAP BAS") settings and files across multiple SAP BAS development workspaces
    <br />
    <br />
    <a href="https://github.com/qualiture/sync-bas-env/issues">Report Bug</a>
    ·
    <a href="https://github.com/qualiture/sync-bas-env/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [Contact](#contact)



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://blogs.sap.com/wp-content/uploads/2020/07/2020-06-AppStudio-on-SCP.png)

> Warning! This project is a work-in-progress, and is tailored towards my own needs. Feel free to fork and modify to your own needs

Currently it is not possible to transfer SAP Business Application Studio settings from one development workspace to another.

This bash shell script puts your SAP BAS/Theia settings, GitHub settings, and possible installed plugins in a `sync-bas-env.tgz` file (along with the shell script)

Once the `sync-bas-env.tgz` file is copied to the target development workspace, you simply unpack the file and run the script to install the files and settings to the correct locations.

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

* `~/.scripts` directory which contains any bash scripts you might have, for instance `bash_command_timer.sh`
* `~/vscode-plugins` directory which contains the `*.vsix` files for the VSCode plugins you may have installed

### Installation

1. Open a terminal in SAP BAS and `cd` to your home directory:
```sh
cd ~
```
2. Download the `sync-bas-env.sh` file
```sh
https://raw.githubusercontent.com/qualiture/sync-bas-env/main/sync-bas-env.sh -O
```
3. Make it executable
```sh
chmod +x sync-bas-env.sh
```


<!-- USAGE EXAMPLES -->
## Usage

Execute `./sync-bas-env.sh` to get an overview of the import/export options. You may also peek inside the script itself, it's not really rocket-science ;-)

_For more examples, please refer to the [Documentation](https://example.com)_



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/qualiture/sync-bas-env/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- CONTACT -->
## Contact

Robin van het Hof - [@qualiture](https://twitter.com/qualiture)

Project Link: [https://github.com/qualiture/sync-bas-env](https://github.com/qualiture/sync-bas-env)




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/qualiture/sync-bas-env.svg?style=flat-square
[contributors-url]: https://github.com/qualiture/sync-bas-env/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/qualiture/sync-bas-env.svg?style=flat-square
[forks-url]: https://github.com/qualiture/sync-bas-env/network/members
[stars-shield]: https://img.shields.io/github/stars/qualiture/sync-bas-env.svg?style=flat-square
[stars-url]: https://github.com/qualiture/sync-bas-env/stargazers
[issues-shield]: https://img.shields.io/github/issues/qualiture/sync-bas-env.svg?style=flat-square
[issues-url]: https://github.com/qualiture/sync-bas-env/issues
[license-shield]: https://img.shields.io/github/license/qualiture/sync-bas-env.svg?style=flat-square
[license-url]: https://github.com/qualiture/sync-bas-env/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/robinvanhethof
[product-screenshot]: https://blogs.sap.com/wp-content/uploads/2020/07/2020-06-AppStudio-on-SCP.png
