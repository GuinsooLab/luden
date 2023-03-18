<div align="right">
    <img src="https://raw.githubusercontent.com/GuinsooLab/glab/main/src/images/guinsoolab-badge.png" height="60" alt="badge">
    <br />
</div>
<div align="center">
    <img src="https://raw.githubusercontent.com/GuinsooLab/glab/main/src/images/guinsoolab-luden.svg" alt="logo" height="100" />
    <br />
    <br />
</div>

# Luden

**Luden** is an open source high-performance data collection service. It can:

* Capture events your application generates and stream to Data Warehouse;
* Pull data from APIs and save it to Data Warehouse

![luden-here](https://raw.githubusercontent.com/GuinsooLab/luden/main/design-docs/luden-here.png)

Read more about [our features](https://ciusji.gitbook.io/luden/features) and check out the [platform overview](https://guinsoolab.github.io/glab/)!

## Quickstart

Two easiest ways to start Luden are Heroku deployment and local docker-compose.

Start Luden using docker-compose:

```bash
git clone https://github.com/GuinsooLab/luden.git
cd luden
```

Add permission for writing log files:

```bash
# Ubuntu/Mac/Centos OS
chmod -R 777 compose-data/
```

For running `latest` version use:

```bash
docker-compose up
```

Note: `latest` image will be downloaded and started.

Visit `http://localhost:8000/configurator` after the build is complete.

To learn more check out [deployment documentation](https://ciusji.gitbook.io/luden/quickstart):

- [Docker deployment](https://ciusji.gitbook.io/luden/quickstart/deploying-with-docker)
- [Building from sources](https://ciusji.gitbook.io/luden/quickstart/building-from-source)

## Documentation

Please see our extensive documentation [here](https://ciusji.gitbook.io/luden/). Key sections include:

* [Deployment](https://ciusji.gitbook.io/luden/quickstart/) - Getting Luden running on Docker, and building from source.
* [Configuration](https://ciusji.gitbook.io/luden/configuration/configuration) - How to modify Luden Server's `yaml` file.
* [Geo Data](https://ciusji.gitbook.io/luden/features/geo-data-resolution) - Configuring data enrichment with [MaxMind](https://www.maxmind.com/en/home).

## Reporting Bugs and Contributing Code

* Want to report a bug or request a feature? Please open [an issue](https://github.com/GuinsooLab/luden/issues/new).
* Want to help us build **Luden**? Fork the project, and check our an issues [that are good for first pull request](https://github.com/GuinsooLab/luden/pulls)!
* Questions? Join our [Discussions](https://github.com/orgs/GuinsooLab/discussions)!

## License

Luden is released under [MIT License](./LICENSE).

<img src="https://raw.githubusercontent.com/GuinsooLab/glab/main/src/images/guinsoolab-group.svg" width="120" alt="license" />
