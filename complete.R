complete <- function(directory, id = 1:332) {
  ## 'directory' 是长度为1的字符向量，指明
  ##  CSV 文件的位置
  data <- data.frame()
  
  for (i in id){
    dir <- paste(directory, "/", sprintf("%03d", i), ".csv", sep = "")
    data <- rbind(data, nrow(na.omit(read.table(dir, sep=",", header=TRUE))))
  }
  test<-data.frame(id,data)
 colnames(test)<-c("id","nobs")
  test
}
  ## 'id' 是正整数向量，指明监测点的ID号，
  ## 将要被使用的complete("specdata", 1)
  
  ## 返回以下格式的数据帧：
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## 其中'id' 是监测点ID编号，而'nobs'是
  ## 完整案例的数量


