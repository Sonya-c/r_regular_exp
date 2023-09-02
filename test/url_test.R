if (!requireNamespace("testthat", quietly = TRUE)) {
  install.packages("testthat")
}

library(testthat)

source('src/url.R', chdir = TRUE)

test_that("Pruebas de validación de URLs", {
  # URLs válidas
  expect_true(str_detect("https://www.ejemplo.com/", url))
  expect_true(str_detect("http://sub.ejemplo.co.uk/folder1/folder2/", url))
  expect_true(str_detect("ftp://sub.ejemplo.co.uk/", url))
  expect_true(str_detect("https://dominio.com/", url))
  expect_true(str_detect("https://dominio.com/folder1/folder2/", url))
  expect_true(str_detect("ftp://dominio.com/", url))
  expect_true(str_detect("https://dominio.com/folder1/", url))
  expect_true(str_detect("https://dominio.com/folder1/folder2/", url))
  expect_true(str_detect("https://dominio.com/folder1/folder2", url))
  expect_true(str_detect("https://dominio.com/folder1/folder2/folder3", url))

  # URLs inválidas
  expect_false(str_detect("invalid_url", url))
  expect_false(str_detect("http://invalid url.com/", url))
  expect_false(str_detect("http://dominio.com/spaces in path/", url))
  expect_false(str_detect("https://dominio.com//double_slash/", url))
  expect_false(str_detect("https://dominio.com/single_slash_at_end/", url))
})