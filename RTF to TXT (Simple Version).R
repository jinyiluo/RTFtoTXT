library(striprtf)
folder_path <- "D:/Inputs"
output_path <- "D:/Outputs/"
files<-list.files(folder_path, pattern="\\.rtf$")
for(file in files){
  x <- read_rtf(file.path(folder_path,file))
  y <- strip_rtf(x)
  write(y,paste(output_path,sub("\\.rtf$","",file),".txt",sep=""))
}
