
#variable: make memory location for store value
a=4 
v=8
v1<-5
#DAta type:In R are  Five data type 
#vector,list,matrix,arry,data frame
#vector:
#vector is sequence of element it has five atomic 
#1. numeric 2. integer 3. logical 4. complex 5. character 
#numeric 
v2=3 #real value
#integer
v3=5L #all number with L sufix
#complex
v4=4+5i
#logical 
v5=c(T,F)
#character 
v6="a"
# one vector have same class of atomic
#one list have any class of atomic
#attributes of data type (name,dimname,dimisions,class,length,other user define)
attributes(v4)
class(v4 )
length(v4)
names(v4)
#printing (auto print, explict print)
v4        #auto print
print(v4) #explict print
# the : operater is used for creating integer sequences
se=1:4
se
#creating vector 
vtr0=c(1,2,3,4,5) #c() concatenate fn define latter 
vtr0
#coercion 
vtr1=c("a",4,T)
vtr1 
names(vtr1)=c("a","b","c")
vtr1
names(vtr1)
length(vtr1)
dim(vtr1)
attributes(vtr1)
class(vtr0
      )
vtr1["c"] #asscies any column from vector
#coertion typing casting
#change vector atomic 
as.character(vtr0)
#matrix 
mtr1=matrix(c(1:4),nrow=2,ncol=2)
#cbind and rbind binding two or more vector by row or by column 
vtr3<-c(1,2,3,4,5)
vtr4<-c(6,7,8,9,10)
cbind(vtr3,vtr4)
m=rbind(vtr3,vtr4)
dimnames(m)=list(c("vtr3","vtr4"),c("a","b","c","d","e"))
m
#we give the dimantion name to vector by by names() fn and matrix by list(row ,col)

#factor use for catagorical data
ftr=factor(c("ahmad","arslan","wahid","altaf"),levels=c("arslan","wahid","ahmad","altaf"),labels = c("a","b","c","d"))

ftr
unclass(ftr)
table(ftr)
ftr
data.frame(day=1:4,rain=c("monday","tuesday","wenesday","thursday"))
data.frame(day=1:5,rain=c("m","t","w","th","f"),row.names = c("a","b","c","d","e"))
#if error appear to istall packge.
options(repos = c(cran="http://cran.rstudio.com"))
install.packages("shiny")
array(c(1,2,3,4,5),c(2,3,4,4),dimnames=list(c('a','b')))
#subsetting [ used to asses the element of same class can be used more than one elements
#[[ used to asses the only singale element of class no necessery be list or data frame 
#$  search by name is also use in the place of [[
vtr0
vtr0[1]
vtr0[[2]]
names(vtr0)=(c('a','b','c','d','e'))
vtr0['a']
vtr0[['a']]
vtr0[[1]]
vtr0[c(1,2)]
vtr0[[c(1)]]
#$dollar sing not used in vector
#matrix element acces 
mtr1
mtr1[1,2]
mtr1[[1,2]]
mtr1[1,]
mtr1[2,1]
mtr1[[2,1]]
#list element access 
ls=list('a',1,'b',c(2,3,4),'c',matrix(1:5,2,3))
ls
ls[[1]]
ls[1]
ls[[c(4,2)]] #list in list element access 
#missing values is.na()
vtr2=c(1,2,3,4,5,NA,6,NaN)#missing values
is.na(vtr2)
is.nan(vtr2)#nan value is detect by na fn but na value not detect by nan fn
#remove nan and na value
a=is.na(vtr2)
a
vtr2[!a]
a=complete.cases(vtr2) #we remove na value more than one vector or list
a
vtr2[a] #print vtr2 with out na value
#remark if you want to remove na value from dataframe than it skip complete row if it have any na value
View(airquality) #view deafult data of R
#  functions
f=function(a=1,b,c){
       print(a)
      print(b)
      print(c)
      }
f(1,2,3)  
f(1,)
f(1,4)
f(b=23,c=2)
args(lm) #for  knowing  arguments of bulit in function
# vectorize operation on vectors   
x<-c(1,2,3,4,5,);y<-c(6,7,8,9,10)
x/y
x+y
x*y
# vectorize operation on matrix 
mtr1=matrix(1:6,2,2)
mtr2=matrix(3:8,2,2)
mtr1
mtr2
mtr1*mtr2   #dot product of matrix
mtr1%*%mtr2   #matrix multiplication
mtr1+mtr2
mtr1/mtr2
mtr1-mtr2
