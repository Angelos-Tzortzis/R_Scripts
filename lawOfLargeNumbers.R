# mean <- 0
# standard_deviation <- 1
sample_size <- 1000000
count <- 0

for (i in rnorm(sample_size)) {
  if (i >= -1 && i <= 1) {
    count <- count + 1;
  }
}

result <- count / sample_size
print(result)
