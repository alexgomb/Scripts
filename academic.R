#Alex Gombau 2/06/20
#Academic performance algorithm
#We calculate the acdemic performance based on a simulation of random results or a imported data by the user
#and represent it in a graphic plot

option<- readline(prompt = "Do want to import(d) your data or simulate(s) them: ") #we ask the user

if (option == "d") 
{
  course<- list(primero=read.csv2("C:\\Users\\Alex\\Documents\\R\\Skynet\\porcurso\\primero.csv", header=FALSE), 
                segundo=read.csv2("C:\\Users\\Alex\\Documents\\R\\Skynet\\porcurso\\segundo.csv", header=FALSE),
                tercero=read.csv2("C:\\Users\\Alex\\Documents\\R\\Skynet\\porcurso\\tercero.csv", header=FALSE),
                cuarto=read.csv2("C:\\Users\\Alex\\Documents\\R\\Skynet\\porcurso\\cuarto.csv", header = FALSE))
}
if (option == "s"){
  course<- list(first=data.frame(), second=data.frame(), third=data.frame(), fourth=data.frame()) #in progress
}

#creation of the loop for the list
calc<- lapply(course, function(x) #apply the function
{
  
  suma<- sum(x$V2) #sum of the year credits
  sum((x$V2*x$V3)/suma) #multiply results between credits and sum the results
  
})
#graphics
plot(1:4, calc, type="l", main="Rendimiento", xlab="year", ylab="result")