const search = () => {
  const searchButton = document.querySelector('.btn-search');
  if (searchButton) {
    searchButton.addEventListener('click', (event) => {
      const formInput = document.querySelector('#search_query');
      event.preventDefault();
      const input = formInput.value;
    });
  };
}

export { search };
