import { combineReducers } from "redux";

const initialStateUser = {
  email: " ",
  username: " ",
  auth_token: " ",
  isLoggedIn: false
};

//combine reducers, we will use this if we use more reducers in the future
const result = combineReducers({ user });

export default result;

function user(state = initialStateUser, action) {
  switch (action.type) {
    case "SUBMIT_USER":
      return {
        email: action.email,
        username: action.username,
        auth_token : action.auth_token,
        isLoggedIn : true
      };
    case "LOGOUT":
      return initialStateUser;
    default:
      return state;
  }
}
