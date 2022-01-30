## dotenv.sh

[![lint](https://github.com/jonlabelle/dotenv-sh/actions/workflows/lint.yml/badge.svg)](https://github.com/jonlabelle/dotenv-sh/actions/workflows/lint.yml)

> Loads variables from dotenv (`.env`) files into your environment.

## Install

Clone the [repository] then run the [install script] to create the symlink in
`~/bin/dotenv`:

```bash
git clone https://github.com/jonlabelle/dotenv-sh.git
cd dotenv-sh
bash scripts/install.sh
```

## Usage

```bash
source dotenv [environment]
```

## Examples

To load variables in the `.env` file from current working directory:

```bash
source dotenv
```

To load variables in the `.env.local` file from current working directory:

```bash
source dotenv local
```

## References

- [Set Environment Variables in Your Bash Shell From a .env File \(Version 2\)](https://zwbetz.com/set-environment-variables-in-your-bash-shell-from-a-env-file-version-2/)
- [Load environment variables from dotenv / .env file in Bash](https://gist.github.com/mihow/9c7f559807069a03e302605691f85572)

## License

[MIT](LICENSE.txt)

[repository]: https://github.com/jonlabelle/dotenv-sh.git
[install script]: https://github.com/jonlabelle/dotenv-sh/blob/main/scripts/install.sh 
