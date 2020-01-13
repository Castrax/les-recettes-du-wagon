const search = () => {
  const searchButton = document.querySelector('.btn-search');
  searchButton.addEventListener('click', (event) => {
    const input = document.querySelector('#search_query');
    event.preventDefault();
    console.log(input.value);
  });
}

export { search };
