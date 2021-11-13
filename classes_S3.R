j <- list(
  breathe="Могут дышать",
  eat="Могут кушать"
)
class(j) <- "animals"
print.animals <- function (cr){
  cat("Дыхание:", j$breathe, "\n") 
  cat("Еда:", j$eat, "\n")
  cat("Подкласс:", cr$subclass, "\n")
  cat("Особенность:", cr$feature, "\n")
  cat("Передвижение:", cr$movement)
}
k <- list(
  subclass = "Пресмыкающиеся",
  feature = "хладнокровные",
  movement = "ползают"
)
class(k) <- c("newamimal1", "animals")
l <- list(
  subclass = "Птицы",
  feature = "перья",
  movement = "летают"
)
class(l) <- c("Newanimal2", "animals")

m <- list(
  subclass = "Млекопитающиеся",
  feature = "кормить молоком",
  movement = ""
)
class(m) <- c("Newanimal3", "animals")


chelovek <- function(){
  v1 <- readline("Информацию о каком животном вы хотите узнать (Пресмыкающиеся, Птицы, Млекопитающиеся)?: ")
  if(v1 == "Пресмыкающиеся") print.animals(k)
  if(v1 == "Птицы") print.animals(l)
  if(v1 == "Млекопитающиеся") print.animals(m)
}
chelovek()
