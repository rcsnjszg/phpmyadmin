## buildx

Létező builderek listázása

```bash
docker buildx ls
```

Új, saját builder létrehozása

```
docker buildx create --name mybuilder
```

Válasszuk ki az imént létrehozott buildert.

```bash
docker buildx use mybuilder
```

```
docker buildx build \
    --platform linux/amd64, linux/arm64/v8, linux/arm/v7 \
    -t image-name:latest  \
    --push
```

A `--platform` esetében vesszővel kell felsorolni a kívánt platformokat. A példában mind linux alapú konténer lesz.
    - `linux/amd64` a legtöbb 64-bites rendszerhez jó
    - `linux/arm/v7` (32 bites ARM processzorokhoz) például raspberry pi 3
    - `linux/arm64/v8` M1, M2, ... és 64-bites raspberry pi-hez (64 bites ARM processzorokhoz)
	
A `-t` a tag-et jelöli. Nem árt, ha van egy `:latest`, különben a docker pull önmagában nem fog működni.

A `--push` fel is tölti a dockerhub-ra.

A parancsot kiadva párhuzamosan lebuildeli a különböző imageket.

A docker pull, docker run, docker start kiadásakor az architektúrának megfelelő image-t tölti be.