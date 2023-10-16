## Sushi Nouns playground -[sushi.sebastien.wtf](https://sushi.sebastien.wtf)

Simple approach to create fun and interactive playgrounds using code provided by the [Nouns DAO monorepo](https://github.com/nounsDAO/nouns-monorepo).

Assets are from the [Nouns DAO Japan team](https://github.com/nounsDAO/nouns-monorepo), i simply patched the `@nouns/assets` package with their images data.

Here's some instructions to guide you through the process to make your own.

### Prerequisites

Before we get started, make sure you have [Yarn](https://classic.yarnpkg.com/en/docs/install/) installed on your computer.

### Install

Open your terminal and run the following commands from the repository folder:

```shell
yarn install
```

It will download and install all the necessary dependencies for the project. Once it's complete, you can start the playground by running:

```shell
yarn start
```

### Customize

To make your own playground, simply place your 32x32px .png into the corresponding folders inside the `src/` directory and run:

```shell
yarn encode
```

You will then have to replace the `node_modules/@nouns/assets/images-data.json` file with the new one generated in `src/` and patch the `@nouns/assets` package :

```shell
yarn patch-package @nouns/assets
```

### Build

Before uploading your playground online, it's important to build the project to create optimized files. Run the following command:

```shell
yarn build
```

This will generate a `dist/` folder with the optimized files you need.