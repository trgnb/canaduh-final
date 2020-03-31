import places from 'places.js';

const initAutocomplete = () => {
  const addressInput1 = document.getElementById('from_address');
  if (addressInput1) {
    places({ container: addressInput1 });
  }
  const addressInput2 = document.getElementById('to_address');
  if (addressInput2) {
    places({ container: addressInput2 });
  }
};

export { initAutocomplete };
