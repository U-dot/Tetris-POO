//Clase tetromino
class Piece{
  color c=color(50,100,100);
  float xpos=0;
  float ypos=0;
  String[]Tetro = new String [4];

  //Constructor
  Piece(){
    Tetro[0]="0000";
    Tetro[1]="0000";
    Tetro[2]="0011";
    Tetro[3]="0011";
  }

  void display(){
    fill(c);
    for(int i=0;i<4;i++){
      println(i+xpos);
      for(int j=0; j<4;j++){
        if (Tetro[i].charAt(j)=='1'){
          rect((i+xpos)*(width-hspace-vspace)/COLS+vspace, (j+ypos)*(height-2*vspace)/ROWS+vspace, (width-hspace-vspace)/COLS, (height-2*vspace)/ROWS);
        }
      }
    }
  }
  void rotate (){
    char []a= new char[4];
    String []rotated= new String[4];
    for(int i=0;i<4;i++){
      for(int j=0; j<4;j++){
        a[j]=Tetro[j].charAt(i);
      }
      rotated[i]= new String(a);
    }
    Tetro=reverse(rotated);
  }
  void move(int a, int b){
    xpos +=a;
    ypos +=b;
  }


}
