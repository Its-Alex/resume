# Resume

Repository to create and build a PDF of my resume.

You can see the current version in [`lastest release`](https://github.com/Its-Alex/resume/releases/tag/latest).

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

You can watch them too, one by one, for example for the french one:

```bash
$ ./scripts/watch.sh fr
```

All datas are based from a `yaml` file, for example for the resume in french 
[datas/fr.yaml](/datas/fr.yaml).

For now only `french` resume is available.

## License

[MIT](/LICENSE)