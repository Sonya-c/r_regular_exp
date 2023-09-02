if (!requireNamespace("testthat", quietly = TRUE)) {
  install.packages("testthat")
}

library(testthat)

source('src/email.R', chdir = TRUE)

test_that("Validación de dirección de correo electrónico", {
  # Emails válidos
  expect_true(str_detect("usuario@example.com", email))
  expect_true(str_detect("us-er.name@domain.co", email))
  expect_true(str_detect("user_name@domain.com", email))
  expect_true(str_detect("user.name@domain.com", email))
  expect_true(str_detect("user.name-1@sub-domain.example.co", email))
  expect_true(str_detect("usuario@domain.c", email))
  expect_true(str_detect("casi_miro1@co", email))
  expect_true(str_detect("12_prueba.curso-1@lata_m1.db", email))
  expect_true(str_detect("ramir_2@13_ca.bar_q.co", email))
  expect_true(str_detect("usuario@domaincom", email))
  expect_true(str_detect("usuario@domain.123", email))
  expect_true(str_detect("usuario@domain.ab_c", email))
  expect_true(str_detect("usuario@sub.domain.example.com", email))

  # URLs inválidos
  expect_false(str_detect("usuarioexample.com", email))
  expect_false(str_detect("@domain.com", email))
  expect_false(str_detect("usuario@.com", email))
  expect_false(str_detect("usuario@-domain.com", email))
  expect_false(str_detect("usuario@domain-.com", email))
  expect_false(str_detect("usuario@do--main.com", email))
})