// package templates.security;

// import org.springframework.context.annotation.Bean;
// import org.springframework.context.annotation.Configuration;
// import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
// import org.springframework.security.config.annotation.web.builders.HttpSecurity;
// import org.springframework.security.core.userdetails.UserDetailsService;
// import org.springframework.security.core.userdetails.UsernameNotFoundException;
// import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
// import org.springframework.security.crypto.password.PasswordEncoder;
// import org.springframework.security.web.SecurityFilterChain;

// import com.example.dao.UserDAO;

// @Configuration
// public class SpringSecurityConfig {

//     private final UserDAO userDAO;

//     public SpringSecurityConfig(UserDAO userDAO) {
//         this.userDAO = userDAO;
//     }

//     @Bean
//     public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
//         http
//                 .csrf(csrf -> csrf.disable()) // Disable CSRF for simplicity; enable in production
//                 .authorizeRequests(requests -> requests
//                         .antMatchers("/", "/signup", "/forgotpassword", "/assets/**", "/test-db").permitAll()
//                         .antMatchers("/stateAdmin/**").hasRole("STATEADMIN")
//                         .antMatchers("/student/**").hasRole("STUDENT")
//                         .antMatchers("/districtSupervisor/**").hasRole("DISTRICTSUPERVISOR")
//                         .antMatchers("/schoolCoordinator/**").hasRole("SCHOOLCOORDINATOR")
//                         .anyRequest().authenticated())
//                 .formLogin(login -> login
//                         .loginPage("/") // Login page
//                         .loginProcessingUrl("/login") // Login form submission URL
//                         .successHandler((request, response, authentication) -> {
//                             // Redirect based on role
//                             String role = authentication.getAuthorities().iterator().next().getAuthority();
//                             switch (role) {
//                                 case "ROLE_STATEADMIN":
//                                     response.sendRedirect("/stateAdmin/dashboard");
//                                     break;
//                                 case "ROLE_STUDENT":
//                                     response.sendRedirect("/student/dashboard");
//                                     break;
//                                 case "ROLE_DISTRICTSUPERVISOR":
//                                     response.sendRedirect("/districtSupervisor/dashboard");
//                                     break;
//                                 case "ROLE_SCHOOLCOORDINATOR":
//                                     response.sendRedirect("/schoolCoordinator/dashboard");
//                                     break;
//                                 default:
//                                     response.sendRedirect("/dashboard");
//                                     break;
//                             }
//                         })
//                         .failureUrl("/?error=true") // Redirect on failure
//                         .permitAll())
//                 .logout(logout -> logout
//                         .logoutUrl("/logout")
//                         .logoutSuccessUrl("/")
//                         .permitAll());

//         return http.build();
//     }

//     @Bean
//     public UserDetailsService userDetailsService() {
//         return email -> {
//             com.example.model.User user = userDAO.findByEmail(email);
//             if (user == null) {
//                 throw new UsernameNotFoundException("User not found with email: " + email);
//             }

//             // Ensure the roles returned are prefixed with ROLE_
//             String role = user.getRole().startsWith("ROLE_") ? user.getRole() : "ROLE_" + user.getRole();

//             return org.springframework.security.core.userdetails.User.builder()
//                     .username(user.getEmail())
//                     .password(user.getPassword()) // Password is already hashed in the database
//                     .roles(role.substring(5)) // Remove the ROLE_ prefix for Spring Security
//                     .build();
//         };
//     }

//     @Bean
//     public PasswordEncoder passwordEncoder() {
//         return new BCryptPasswordEncoder();
//     }

//     @Bean
//     public AuthenticationManagerBuilder authenticationManagerBuilder(AuthenticationManagerBuilder auth) throws Exception {
//         auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
//         return auth;
//     }
// }
