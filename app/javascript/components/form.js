const submitFormOnClick = () => {
  const button = document.querySelector('.btn-submit');
  if (button) {
    button.addEventListener('click', (event) => {
      event.preventDefault();
      const participantsForms = document.querySelectorAll('.new_participant');
      participantsForms.forEach(element => {
        element.submit();
      })
    });
  }
}

export { submitFormOnClick };
