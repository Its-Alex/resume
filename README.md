# Resume

Repository to create and build a PDF of my resume.

## Requirements

- [`mise`](https://mise.jdx.dev/)
- [`direnv`](https://direnv.net/)

```sh
$ mise plugins install typst https://github.com/stephane-klein/asdf-typst
$ mise install
$ direnv allow
```

## Getting started

To compile resumes, you can use:

```bash
$ ./scripts/compile.sh
```

All datas are based from a `yaml` file, for example for the resume in french 
[fr.yaml](/fr.yaml).

For now only `french` resume is available.

## License

[MIT](/LICENSE)