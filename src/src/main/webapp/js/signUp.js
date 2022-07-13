/**
 * Client Side Validation via JS
 */

const firstName = document.querySelector('#firstName');
const lastName = document.querySelector('#lastName');
const street = document.querySelector('#street');
const city = document.querySelector('#city');
const postalCode = document.querySelector('#postalCode');
const emailEl = document.querySelector('#email');
const birthDate = document.querySelector('#birthDate');

const form = document.querySelector('#dataUser');



const checkFirstName = () => {

    let valid = false;

    const min = 2, max = 25;

    const fn = firstName.value.trim();

    if (!isRequired(fn)) {
        showError(firstName, 'First Name cannot be blank.');
    } else if (!isBetween(fn.length, min, max)) {
        showError(firstName, `First Name must be between ${min} and ${max} characters.`)
    } else {
        showSuccess(firstName);
        valid = true;
    }
    return valid;
};

const checkLastName = () => {

    let valid = false;

    const min = 2, max = 25;

    const ln = lastName.value.trim();

    if (!isRequired(ln)) {
        showError(lastName, 'Last Name cannot be blank.');
    } else if (!isBetween(ln.length, min, max)) {
        showError(lastName, `Last Name must be between ${min} and ${max} characters.`)
    } else {
        showSuccess(lastName);
        valid = true;
    }
    return valid;
};


const checkStreet = () => {

    let valid = false;

    const min = 2, max = 25;

    const str = street.value.trim();

    if (!isRequired(str)) {
        showError(street, 'Street Name cannot be blank.');
    } else if (!isBetween(str.length, min, max)) {
        showError(street, `Street Name must be between ${min} and ${max} characters.`)
    } else {
        showSuccess(street);
        valid = true;
    }
    return valid;
};


const checkCity = () => {

    let valid = false;

    const min = 2, max = 25;

    const st = city.value.trim();

    if (!isRequired(st)) {
        showError(city, 'City Name cannot be blank.');
    } else if (!isBetween(st.length, min, max)) {
        showError(city, `City Name must be between ${min} and ${max} characters.`)
    } else {
        showSuccess(city);
        valid = true;
    }
    return valid;
};


const checkPostalCode = () => {

    let valid = false;

    const min = 5;

    const pc = postalCode.value.trim();

    if (!isRequired(pc)) {
        showError(postalCode, 'Postal Code cannot be blank.');
    } else if (pc.length !== min) {
        showError(postalCode, `Postal Code must be exactly ${min} characters.`)
    } else {
        showSuccess(postalCode);
        valid = true;
    }
    return valid;
};



const checkEmail = () => {
    let valid = false;
    const email = emailEl.value.trim();
    if (!isRequired(email)) {
        showError(emailEl, 'Email cannot be blank.');
    } else if (!isEmailValid(email)) {
        showError(emailEl, 'Email is not valid.')
    } else {
        showSuccess(emailEl);
        valid = true;
    }
    return valid;
};


const checkBirthDate = () => {
    let valid = false;
    const bdt = birthDate.value.trim();
    
    // Creating Date from Input
    let bd = bdt.split("/");  
    const dtDOB = new Date(bd[2],bd[1], bd[0]);
    
    /*
    console.log(bd);
    console.log(bd[2]);
    console.log(dtDOB); */
    
    const dtCurrent = new Date();
    
    /*console.log(dtCurrent);
    console.log(dtCurrent.getFullYear());*/
    
    let age = dtCurrent.getFullYear() - dtDOB.getFullYear();
    
    console.log(age);
    
    
    if (!isRequired(bdt)) {
        showError(birthDate, 'Birth Date cannot be blank.');
    } else if (!isBirthdayValid(bdt)) {
        showError(birthDate, 'Birth Date is not valid. Enter date in dd/mm/yyyy format ONLY.')
    } 
    
    else if (age < 1 || age > 100) {
        showError(birthDate, 'Age must be between 1 and 100 years!')
    } 
    
    
    
    else {
        showSuccess(birthDate);
        valid = true;
    }
    return valid;
};


const isBirthdayValid = (birthDate) => {
    const re = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;
    return re.test(birthDate);
};





const isEmailValid = (email) => {
    const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
};


const isRequired = value => value === '' ? false : true;
const isBetween = (length, min, max) => length < min || length > max ? false : true;




const showError = (input, message) => {
    // get the form-field element
    const formField = input.parentElement;
    // add the error class
    formField.classList.remove('success');
    formField.classList.add('error');

    // show the error message
    const error = formField.querySelector('small');
    error.textContent = message;
};

const showSuccess = (input) => {
    // get the form-field element
    const formField = input.parentElement;

    // remove the error class
    formField.classList.remove('error');
    formField.classList.add('success');

    // hide the error message
    const error = formField.querySelector('small');
    error.textContent = '';
}


const debounce = (fn, delay = 500) => {
    let timeoutId;
    return (...args) => {
        // cancel the previous timer
        if (timeoutId) {
            clearTimeout(timeoutId);
        }
        // setup a new timer
        timeoutId = setTimeout(() => {
            fn.apply(null, args)
        }, delay);
    };
};




// 
form.addEventListener('input', debounce(function (e) {
    switch (e.target.id) {
        
        
        case 'firstName':
            checkFirstName();
            break;
            
        case 'lastName':
            checkLastName();
            break;
            
        case 'street':
            checkStreet();
            break;
            
        case 'city':
            checkCity();
            break;
        
        case 'postalCode':
            checkPostalCode();
            break;
                    
        case 'email':
            checkEmail();
            break;
                                
        case 'birthDate':
            checkBirthDate();
            break;
                    
    }
}));