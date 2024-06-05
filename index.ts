async function recursion() {
  console.log("Hello, via Bun with Nix!!");
  await Bun.sleep(10);
  recursion();
}

await recursion();
