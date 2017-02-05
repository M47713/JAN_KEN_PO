//Exercise 4: Selection Structure.
//Code a Rock, Paper, Scissors game. You choose a option and computer chooses 
//randomly. Draw a red circle for Rock, green for Paper and blue for Scissors.
//Each circle must remains in a screen corner. Using the text() function, and
//show the winner or a draw.

boolean sel = true;//boolean for the possibility of user's answer.
int diam = 200;//int variable for the circle diameter.
int r = diam/2;//int variable for the circle radius.
int ene = (int)random(1,4);//int variable with random computer's answer.
String ini;//String for atributing enemy's answer to a word.
int me;//int variable for my answer.
float posrx;//x axis position to rock.
float posry;//y axis position to rock.
float pospx;//x axis position to paper.
float pospy;//y axis position to paper.
float possx;//x axis position to scissors.
float possy;//y axis position to scissors.

void setup(){
  noStroke();
  posrx = width/2;
  posry = height-r;
  pospx = r;
  pospy = height/2;
  possx = width-r;
  possy = height/2;
  background(74);
  size(500,500);
  fill(219,61,77);
  ellipse(posrx,posry,diam,diam);
  fill(255);
  text("ROCK",posrx-r/2+30,posry-30);
  fill(101,204,77);
  ellipse(pospx,pospy,diam,diam);
  fill(255);
  text("PAPER",pospx-r/2+30,pospy-30);
  fill(56,144,219);
  ellipse(possx,possy,diam,diam);
  fill(255);
  text("SCISSORS",possx-r/2+30,possy-30);
}
void draw(){
  if(ene ==1){
    ini = "PC: Rock";
  }
  if(ene ==2){
    ini = "PC: Paper";
  }
  if(ene ==3){
    ini = "PC: Scisors";
  }
  if(ene == me){
     text("DRAW",height/2,50);
  }
}
void mouseClicked(){
  fill(255);
  while(sel){
  if (sq(mouseX-posrx)+sq(mouseY-posry) < sq(r)){
    me = 1;
    text("YOUR CHOICE",posrx-r/2,posry);
    text(ini,height/2,70);
    if(ene == 2){
      text("YOU LOSE",height/2,50);
    }
    if(ene == 3){
      text("YOU WIN",height/2,50);
    }
    sel = false;
    
  }
  if (sq(mouseX-pospx)+sq(mouseY-pospy) < sq(r)){
    me = 2;
    text("YOU CHOICE",pospx-r/2,pospy);
    text(ini,height/2,70);
    if(ene == 3){
      text("YOU LOSE",height/2,50);
    }
    if(ene == 1){
      text("YOU WIN",height/2,50);
    }
    sel = false;
  }
  if (sq(mouseX-possx)+sq(mouseY-possy) < sq(r)){
    me = 3;
    text("YOU CHOICE",possx-r/2,possy);
    text(ini,height/2,70);
    if(ene == 1){
      text("YOU LOSE",height/2,50);
    }
    if(ene == 2){
      text("YOU LOSE",height/2,50);
    }
    sel = false;
  }
  }
}