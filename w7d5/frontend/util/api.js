export const signUp = (user) => (
  $.ajax({
    method: "POST",
    url: "api/users",
    data: {user}
  })
);

// export const fetchUser = (id) => (
//   $.ajax({
//     method: "GET",
//     url: `api/users/${id}`
//   })
// );

export const login = (user) => (
  $.ajax({
    method: "POST",
    url: "api/session",
    data: {user}
  })
);

export const logout = () => (
  $.ajax({
    method: "DELETE",
    url: `api/session/`
  })
);
