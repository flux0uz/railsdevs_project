export function getMetaValue(name) {
  const element = findElement(document.head, `meta[name="${name}"]`);
  if (element) {
    return element.getAttribute("content");
  }
}

export function findElement(root, selector) {
  if (typeof root === "string") {
    select = root;
    root = document;
  }
  return root.querySelector(selector);
}
