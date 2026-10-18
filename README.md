# Hello World (Maven)

Requires a JDK 17 or newer and Maven 3.9.9 or newer on `PATH`.

Run the tests and package the project:

```sh
mvn clean verify
```

The convenience scripts run `verify` by default and forward any Maven arguments:

```powershell
.\build.ps1
```

```sh
sh ./build.sh
```

After packaging, run the application with:

```text
java -cp target/classes com.lab1.App
```