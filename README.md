## dotenv.sh

[![lint](https://github.com/jonlabelle/dotenv-sh/actions/workflows/lint.yml/badge.svg?branch=main)](https://github.com/jonlabelle/dotenv-sh/actions/workflows/lint.yml)

Load environment variables from .env files in Bash.

## Usage

```bash
source dotenv [custom]
```

## Installation

To install dotenv.sh into the current user's `~/bin` directory called `dotenv`:

```bash
bash scripts/install.sh
```

## Examples

To load the dotenv file from the current directory:

```bash
source dotenv
```

To load a custom dotenv file called `.env.local`:

```bash
source dotenv local
```

## References

- [Set Environment Variables in Your Bash Shell From a .env File \(Version 2\)](https://zwbetz.com/set-environment-variables-in-your-bash-shell-from-a-env-file-version-2/)
- [Load environment variables from dotenv / .env file in Bash](https://gist.github.com/mihow/9c7f559807069a03e302605691f85572)

## License

[MIT](LICENSE.txt)
