FROM denoland/deno:2.0.2

WORKDIR /app

COPY . .
RUN deno install --entrypoint main.ts

RUN deno cache main.ts

CMD ["run", "--allow-net", "main.ts"]