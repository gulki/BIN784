# Load required packages
library(hierfstat)

calculate_stats <- function(genotype_data) {

  het <- sum(genotype_data == "AB") / length(genotype_data)
  

  count_genotypes <- table(genotype_data)
  genotype_freq <- count_genotypes / sum(count_genotypes)
  

  allele_freq <- count_genotypes / sum(count_genotypes)
  

  list(
    allele_frequencies = allele_freq,
    genotype_frequencies = genotype_freq,
    heterozygosity = het
  )
}

# Simulated data
dat <- sim.genot(nbpop = 3, nbloc = 500, nbal = 2, size = 1000, N = 2500)
dos <- lapply(dat[-1], biall2dos)


results <- lapply(dos, calculate_stats)


for (i in 1:length(results)) {
  cat("Population", i, "\n")
  cat("Allele frequencies:\n")
  print(results[[i]]$allele_frequencies)
  cat("\nGenotype frequencies:\n")
  print(results[[i]]$genotype_frequencies)
  cat("\nHeterozygosity:", results[[i]]$heterozygosity, "\n\n")
}

# Hands-on2


estimate_frequencies <- function(genotypes) {

  count_genotypes <- table(genotypes)
  genotype_freq <- count_genotypes / sum(count_genotypes)
  

  allele_freq <- c(sum(count_genotypes[c("CC", "CT")]), sum(count_genotypes[c("CT", "TT")])) / sum(count_genotypes)
  

  list(
    allele_frequencies = allele_freq,
    genotype_frequencies = genotype_freq
  )
}


genotypes <- c(rep("CC", 25), rep("CT", 5))


frequency_results <- estimate_frequencies(genotypes)
cat("Allele frequencies:", frequency_results$allele_frequencies, "\n")
cat("Genotype frequencies:\n")
print(frequency_results$genotype_frequencies)




# Hands-on3
q2 <- 0.0002


population_size <- 10000  


num_heterozygous <- 2 * (1 - sqrt(q2)) * sqrt(q2) * population_size
cat("Number of individuals carrying the allele in the heterozygous state:", round(num_heterozygous))


# Hands-on4

calculate_heterozygosity <- function(genotype_data) {
  observed_heterozygosity <- apply(genotype_data, 2, function(col) {
    1 - sum(col == "AA" | col == "BB") / length(col)
  })
  
  allele_frequencies <- apply(genotype_data, 2, function(col) sum(col == "AB") / length(col))
  expected_heterozygosity <- 2 * allele_frequencies * (1 - allele_frequencies)
  
  list(observed = observed_heterozygosity, expected = expected_heterozygosity)
}


heterozygosity <- lapply(dos, calculate_heterozygosity)


inbreeding_coefficient <- mapply(function(heterozygosity) {
  1 - (heterozygosity$observed / heterozygosity$expected)
}, heterozygosity)


print(inbreeding_coefficient)


# Hands-on5


f_AA <- 0.58
f_Aa <- 0.07
f_aa <- 0.35


Ho <- f_Aa


p <- sqrt(f_AA)
q <- sqrt(f_aa)


He <- 2 * p * q
F <- (Ho - He) / Ho
cat("Inbreeding coefficient (F):", F, "\n")
