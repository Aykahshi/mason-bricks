## Mason Bricks

This is a personl bricks for [Mason](https://github.com/felangel/mason) to generate Flutter project template with Clean Architecture, Auto Route, Freezed, Bloc, and Injectable.

## How to use

1. Install Mason CLI

```bash
dart pub global activate mason_cli
```

2. clone this repo and copy it into your project folder

```bash
git clone https://github.com/Aykahshi/mason-bricks.git
```

3. Install mason-bricks

```bash
mason add ca_fbloc --path path-to-your-bricks/ca_fbloc
```

4. Run mason

```bash
mason make ca_fbloc
```

⚠️ <strong>Warning: Ensure that you only run ca_fbloc brick once in your project, to avoid conflicts with main.dart.</strong>

## If you want to generate a new model/entity folder sturcture, use fmodel brick, and also you can use fbloc and fcubit bricks

1. Install mason-bricks

```bash
mason add fmodel --path path-to-your-bricks/fmodel
mason add fbloc --path path-to-your-bricks/fbloc
mason add fcubit --path path-to-your-bricks/fcubit
```

2. cd to your feature folder

```bash
cd path-to-your-feature
```

3. Run mason

```bash
mason make fmodel
mason make fbloc
mason make fcubit
```

## If you want to generate a new feature folder sturcture, use feature brick
1. Install mason-bricks

```bash
mason add feature --path path-to-your-bricks/feature
```

2. cd to your feature folder(root feature folder under your lib folder)

```bash
cd lib/feature or path-to-your-feature
```

3. Run mason

```bash
mason make feature

# and generate bloc/cubit by using fbloc and fcubit bricks
mason make fbloc 
mason make fcubit
```