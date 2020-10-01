load("prrace08")
n<-length((prrace08$state))
D<-0
R<-0
for (i in 1:n) {
  if (prrace08$p_obama[i]>prrace08$p_mc_cain[i]){
    D <- D+prrace08$el_votes[i]}
  else R <- R+prrace08$el_votes[i]
}
D <- D+1
R <- R-1

cat("Obama:" ,D)
cat("McCain:",R)
