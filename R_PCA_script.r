Args <- commandArgs();
inName = Args[6];
outName = Args[7];
pic = Args[8];
input<-read.csv(inName,head=TRUE);
input.pca2 <- princomp(input,cor=TRUE);
write.csv(input.pca2$score,file = outName);
jpeg(file=pic)
plot(input.pca2$score[,1:2],col='red');
dev.off()

q();
