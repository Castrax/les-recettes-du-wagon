const steps = () => {

  const btn1 = document.querySelector('.add-step2');
  const step2 = document.querySelector('.recipe_step2');
  const btn2 = document.querySelector('.add-step3');
  const step3 = document.querySelector('.recipe_step3');
  const btn3 = document.querySelector('.add-step4');
  const step4 = document.querySelector('.recipe_step4');
  const btn4 = document.querySelector('.add-step5');
  const step5 = document.querySelector('.recipe_step5');
  const btn5 = document.querySelector('.add-step6');
  const step6 = document.querySelector('.recipe_step6');
  const btn6 = document.querySelector('.add-step7');
  const step7 = document.querySelector('.recipe_step7');
  const btn7 = document.querySelector('.add-step8');
  const step8 = document.querySelector('.recipe_step8');
  const btn8 = document.querySelector('.add-step9');
  const step9 = document.querySelector('.recipe_step9');
  const btn9 = document.querySelector('.add-step10');
  const step10 = document.querySelector('.recipe_step10');
  if (btn1) {
    btn1.addEventListener('click', (event) => {
      event.preventDefault();
      step2.classList.remove('d-none');
      step2.classList.add('mt-4');
      btn2.classList.remove('d-none');
    });
  };
  if (btn2) {
    btn2.addEventListener('click', (event) => {
      event.preventDefault();
      step3.classList.remove('d-none');
      step3.classList.add('mt-4');
      btn3.classList.remove('d-none');
    });
  };
  if (btn3) {
    btn3.addEventListener('click', (event) => {
      event.preventDefault();
      step4.classList.remove('d-none');
      step4.classList.add('mt-4');
      btn4.classList.remove('d-none');
    });
  };
  if (btn4) {
    btn4.addEventListener('click', (event) => {
      event.preventDefault();
      step5.classList.remove('d-none');
      step5.classList.add('mt-4');
      btn5.classList.remove('d-none');
    });
  };
  if (btn5) {
    btn5.addEventListener('click', (event) => {
      event.preventDefault();
      step6.classList.remove('d-none');
      step6.classList.add('mt-4');
      btn6.classList.remove('d-none');
    });
  };
  if (btn6) {
    btn6.addEventListener('click', (event) => {
      event.preventDefault();
      step7.classList.remove('d-none');
      step7.classList.add('mt-4');
      btn7.classList.remove('d-none');
    });
  };
  if (btn7) {
    btn7.addEventListener('click', (event) => {
      event.preventDefault();
      step8.classList.remove('d-none');
      step8.classList.add('mt-4');
      btn8.classList.remove('d-none');
    });
  };
  if (btn8) {
    btn8.addEventListener('click', (event) => {
      event.preventDefault();
      step9.classList.remove('d-none');
      step9.classList.add('mt-4');
      btn9.classList.remove('d-none');
    });
  };
  if (btn9) {
    btn9.addEventListener('click', (event) => {
      event.preventDefault();
      step10.classList.remove('d-none');
      step10.classList.add('mt-4');
    });
  };
};

export { steps };
