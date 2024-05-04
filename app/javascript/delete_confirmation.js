document.addEventListener("turbo:load", () => {
    const deleteLinks = document.querySelectorAll('.delete-link');
    deleteLinks.forEach(link => {
      link.addEventListener('click', (event) => {
        const confirmMessage = link.getAttribute('data-confirm');
        if (confirmMessage && !confirm(confirmMessage)) {
          event.preventDefault();
        }
      });
    });
  });  