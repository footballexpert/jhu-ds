complete <- function(directory, id = 1:332) {
  ## 'directory' �ǳ���Ϊ1���ַ�������ָ��
  ##  CSV �ļ���λ��
  data <- data.frame()
  
  for (i in id){
    dir <- paste(directory, "/", sprintf("%03d", i), ".csv", sep = "")
    data <- rbind(data, nrow(na.omit(read.table(dir, sep=",", header=TRUE))))
  }
  test<-data.frame(id,data)
 colnames(test)<-c("id","nobs")
  test
}
  ## 'id' ��������������ָ�������ID�ţ�
  ## ��Ҫ��ʹ�õ�complete("specdata", 1)
  
  ## �������¸�ʽ������֡��
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## ����'id' �Ǽ���ID��ţ���'nobs'��
  ## ��������������

