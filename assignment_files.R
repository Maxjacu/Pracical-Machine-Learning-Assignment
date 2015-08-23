
testi <- testing[, -seq(from = 1, to = 8, by = 1)]
testi  <- removeNAcols(testi)
testi  <- removeanyNA(testi)

setdiff(colnames(testing), colnames(train))
setdiff(colnames(train[,-52]),colnames(testing))

answers = predict(random.forest, newdata=testi)

pml_write_files = function(x){
        n = length(x)
        for(i in 1:n){
                filename = paste0("problem_id_",i,".txt")
                write.table(x[i],file=filename,quote=FALSE,row.names=FALSE,col.names=FALSE)
        }
}
pml_write_files(answers)
