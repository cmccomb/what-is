(() => {
  const input = document.querySelector("#topic-search");
  const status = document.querySelector("#topic-search-status");
  const empty = document.querySelector(".search-empty");
  const cards = Array.from(document.querySelectorAll(".topic-card"));

  if (!input || !status || !empty || cards.length === 0) return;

  const total = cards.length;

  input.addEventListener("input", () => {
    const terms = input.value.trim().toLocaleLowerCase().split(/\s+/).filter(Boolean);
    let visible = 0;

    cards.forEach((card) => {
      const text = card.dataset.topicSearch || card.textContent.toLocaleLowerCase();
      const matches = terms.every((term) => text.includes(term));
      card.hidden = !matches;
      if (matches) visible += 1;
    });

    status.textContent = terms.length ? `${visible} of ${total} topics` : `${total} topics`;
    empty.hidden = visible !== 0;
  });
})();
