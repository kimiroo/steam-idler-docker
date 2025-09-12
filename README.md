## Install
1. Mount following directories to the container:
    - /your/steam-idler/config/directory:/config # This directory will store your config files
    - /your/steam-idler/data/directory:/data # This directory will store your steam session information
    - /your/steam-idler/log/directory:/log # This directory will store log filesW
2. Create config files in config directory:
    - accounts.txt
    - config.json
    - proxies.txt (optional)

3. Copy `tokens.db` into data directory if you have a existing one. (steam-idler will generate a new one if you omit this.)
4. Your steam-idler directory should look something like this:
```text
steam-idler/
├── config/
│   ├── accounts.txt
│   ├── config.json
│   └── proxies.txt (optional)
├── data/
│   └── tokens.db (optional)
└── log/
```
5. Start the container

## Start via `docker run`
1. Start the container with following sample command:
```sh
docker run -it \
  -v /your/steam-idler/config/directory:/config \
  -v /your/steam-idler/data/directory:/data \
  -v /your/steam-idler/log/directory:/log \
  kimiroo/steam-idler:latest
```
2. You should have entered the interactive mode of the container. Follow the instructions to login to your account.
3. When you're done setting up, press `Ctrl+P` and then `Ctrl+Q` to detach from the container.

Note: If you already have a valid `tokens.db` and copied `tokens.db` into the data folder, you may omit `-it` flag and skip interactive setup stage.

## Start via `docker compose`
1. Write a docker-compose file with following sample file:
```yaml
services:
  steam-idler:
    container_name: steam-idler
    image: kimiroo/steam-idler:latest
    restart: always
    volumes:
      - /your/steam-idler/config/directory:/config
      - /your/steam-idler/data/directory:/data
      - /your/steam-idler/log/directory:/log
    stdin_open: true
    tty: true
```
2. Run `docker compose up` and run `docker attach container_name` immediately to enter the interactive mode of the container.<br>
   Tips: Specify `container_name` in the docker-compose file and run command something like `docker compose up && docker attach steam-idler` for easier execution.
3. You should have entered the interactive mode of the container. Follow the instructions to login to your account.
4. When you're done setting up, press `Ctrl+P` and then `Ctrl+Q` to detach from the container.

Note: If you already have a valid `tokens.db` and copied `tokens.db` into the data folder, you may skip `docker attach container_name` to skip interactive setup stage.

## Configuration
Refer to [3urobeat's original repo](https://github.com/3urobeat/steam-idler) on how to configure steam-idler.