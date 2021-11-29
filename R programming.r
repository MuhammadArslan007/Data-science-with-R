
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
