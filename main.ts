try {
  const result = await Deno.resolveDns("example.local", "A");
  console.log(result);
} catch (e) {
  console.error(e);
}
