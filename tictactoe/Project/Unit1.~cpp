//---------------------------------------------------------------------------

#include <vcl.h>
#include <iostream>
#include <map>
#include <vector>
#pragma hdrstop
#include "Unit1.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
using namespace std;
TForm1 *Form1;
vector<int> p(10);
map<vector<int>, int> stan;
int tury, pkt1=0, pkt2=0, pkt3=0;
bool calc=true;
int str=1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
int checker(vector<int> tab){
        if(tab[1]==1&&tab[2]==1&&tab[3]==1) return 1;
        if(tab[4]==1&&tab[5]==1&&tab[6]==1) return 1;
        if(tab[7]==1&&tab[8]==1&&tab[9]==1) return 1;
        if(tab[1]==1&&tab[4]==1&&tab[7]==1) return 1;
        if(tab[2]==1&&tab[5]==1&&tab[8]==1) return 1;
        if(tab[3]==1&&tab[6]==1&&tab[9]==1) return 1;
        if(tab[1]==1&&tab[5]==1&&tab[9]==1) return 1;
        if(tab[3]==1&&tab[5]==1&&tab[7]==1) return 1;

        if(tab[1]==2&&tab[2]==2&&tab[3]==2) return 2;
        if(tab[4]==2&&tab[5]==2&&tab[6]==2) return 2;
        if(tab[7]==2&&tab[8]==2&&tab[9]==2) return 2;
        if(tab[1]==2&&tab[4]==2&&tab[7]==2) return 2;
        if(tab[2]==2&&tab[5]==2&&tab[8]==2) return 2;
        if(tab[3]==2&&tab[6]==2&&tab[9]==2) return 2;
        if(tab[1]==2&&tab[5]==2&&tab[9]==2) return 2;
        if(tab[3]==2&&tab[5]==2&&tab[7]==2) return 2;

        return 0;
}
void dfs(vector<int> tab, int ile, int py){
        int pm=checker(tab);
        if(pm){
                stan[tab]=pm;
                return;
        }
        if(ile==9){
                stan[tab]=0;
                return;
        }
        bool lose1=true, lose2=true;
        for(int i=1;i<=9;i++){
                if(tab[i]) continue;
                tab[i]=py;
                if(py==1){
                        if(stan.find(tab)==stan.end()) dfs(tab, ile+1, 2);
                        if(stan[tab]!=2) lose1=false;
                        if(stan[tab]==1){
                                tab[i]=0;
                                stan[tab]=1;
                                return;
	      		}
                }
                else{
                        if(stan.find(tab)==stan.end()) dfs(tab, ile+1, 1);
                        if(stan[tab]!=1) lose2=false;
                        if(stan[tab]==2){
                                tab[i]=0;
                                stan[tab]=2;
                                return;
                        }
                }
                tab[i]=0;
        }
        if(py==1&&lose1) stan[tab]=2;
        else if(py==1) stan[tab]=0;
        if(py==2&&lose2) stan[tab]=1;
        else if(py==2) stan[tab]=0;
}
int bot(vector<int> tab){
	int lose=0;
	for(int i=1;i<=9;i++){
		if(tab[i]) continue;
		if(!lose) lose=i;
		tab[i]=2;
		if(stan[tab]==2) return i;
		if(stan[tab]==0) lose=i;
		tab[i]=0;
	}
	return lose;
}
void __fastcall TForm1::FormCreate(TObject *Sender)
{
        pole1->Picture->LoadFromFile("img/nic.bmp");
        pole2->Picture->LoadFromFile("img/nic.bmp");
        pole3->Picture->LoadFromFile("img/nic.bmp");
        pole4->Picture->LoadFromFile("img/nic.bmp");
        pole5->Picture->LoadFromFile("img/nic.bmp");
        pole6->Picture->LoadFromFile("img/nic.bmp");
        pole7->Picture->LoadFromFile("img/nic.bmp");
        pole8->Picture->LoadFromFile("img/nic.bmp");
        pole9->Picture->LoadFromFile("img/nic.bmp");
        for(int i=0;i<=9;i++) p[i]=0;
        tury=0;
        pole1->Enabled=true;
        pole2->Enabled=true;
        pole3->Enabled=true;
        pole4->Enabled=true;
        pole5->Enabled=true;
        pole6->Enabled=true;
        pole7->Enabled=true;
        pole8->Enabled=true;
        pole9->Enabled=true;
        if(calc){
                dfs(p, 0, 1);
                calc=false;
        }
}
int sprawdz(){
        tury++;
        int pm=checker(p);
        char *w;
        if(pm==1){
                w="Gratulacje, wygra³es!";
                pkt1++;
        }
        else if(pm==2){
                w="Przegrales!";
                pkt2++;
        }
        else if(tury==9){
                w="Remis!";
                pkt3++;
        }
        if(pm||tury==9){
                Application->MessageBox(w, "Koniec gry", MB_OK);
                return true;
        }
        return false;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::pole1Click(TObject *Sender)
{
        if(p[1]==0){
                pole1->Picture->LoadFromFile("img/x.bmp");
                p[1]=1;
                pole1->Enabled=false;
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
                int pm=bot(p);
                if(pm==1){
					pole1->Picture->LoadFromFile("img/o.bmp");
					p[1]=2;
					pole1->Enabled=false;
                }
                else if(pm==2){
					pole2->Picture->LoadFromFile("img/o.bmp");
					p[2]=2;
					pole2->Enabled=false;
                }
                else if(pm==3){
					pole3->Picture->LoadFromFile("img/o.bmp");
					p[3]=2;
					pole3->Enabled=false;
                }
                else if(pm==4){
					pole4->Picture->LoadFromFile("img/o.bmp");
					p[4]=2;
					pole4->Enabled=false;
                }
                 else if(pm==5){
					pole5->Picture->LoadFromFile("img/o.bmp");
					p[5]=2;
					pole5->Enabled=false;
                }
                else if(pm==6){
					pole6->Picture->LoadFromFile("img/o.bmp");
					p[6]=2;
					pole6->Enabled=false;
                }
                else if(pm==7){
					pole7->Picture->LoadFromFile("img/o.bmp");
					p[7]=2;
					pole7->Enabled=false;
                }
                else if(pm==8){
					pole8->Picture->LoadFromFile("img/o.bmp");
					p[8]=2;
					pole8->Enabled=false;
                }
                else if(pm==9){
					pole9->Picture->LoadFromFile("img/o.bmp");
					p[9]=2;
					pole9->Enabled=false;
                }
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::pole2Click(TObject *Sender)
{
        if(p[2]==0){
                pole2->Picture->LoadFromFile("img/x.bmp");
                p[2]=1;
                pole2->Enabled=false;
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
                int pm=bot(p);
                if(pm==1){
					pole1->Picture->LoadFromFile("img/o.bmp");
					p[1]=2;
					pole1->Enabled=false;
                }
                else if(pm==2){
					pole2->Picture->LoadFromFile("img/o.bmp");
					p[2]=2;
					pole2->Enabled=false;
                }
                else if(pm==3){
					pole3->Picture->LoadFromFile("img/o.bmp");
					p[3]=2;
					pole3->Enabled=false;
                }
                else if(pm==4){
					pole4->Picture->LoadFromFile("img/o.bmp");
					p[4]=2;
					pole4->Enabled=false;
                }
                 else if(pm==5){
					pole5->Picture->LoadFromFile("img/o.bmp");
					p[5]=2;
					pole5->Enabled=false;
                }
                else if(pm==6){
					pole6->Picture->LoadFromFile("img/o.bmp");
					p[6]=2;
					pole6->Enabled=false;
                }
                else if(pm==7){
					pole7->Picture->LoadFromFile("img/o.bmp");
					p[7]=2;
					pole7->Enabled=false;
                }
                else if(pm==8){
					pole8->Picture->LoadFromFile("img/o.bmp");
					p[8]=2;
					pole8->Enabled=false;
                }
                else if(pm==9){
					pole9->Picture->LoadFromFile("img/o.bmp");
					p[9]=2;
					pole9->Enabled=false;
                }
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::pole3Click(TObject *Sender)
{
        if(p[3]==0){
                pole3->Picture->LoadFromFile("img/x.bmp");
                p[3]=1;
                pole3->Enabled=false;
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
                int pm=bot(p);
                if(pm==1){
					pole1->Picture->LoadFromFile("img/o.bmp");
					p[1]=2;
					pole1->Enabled=false;
                }
                else if(pm==2){
					pole2->Picture->LoadFromFile("img/o.bmp");
					p[2]=2;
					pole2->Enabled=false;
                }
                else if(pm==3){
					pole3->Picture->LoadFromFile("img/o.bmp");
					p[3]=2;
					pole3->Enabled=false;
                }
                else if(pm==4){
					pole4->Picture->LoadFromFile("img/o.bmp");
					p[4]=2;
					pole4->Enabled=false;
                }
                 else if(pm==5){
					pole5->Picture->LoadFromFile("img/o.bmp");
					p[5]=2;
					pole5->Enabled=false;
                }
                else if(pm==6){
					pole6->Picture->LoadFromFile("img/o.bmp");
					p[6]=2;
					pole6->Enabled=false;
                }
                else if(pm==7){
					pole7->Picture->LoadFromFile("img/o.bmp");
					p[7]=2;
					pole7->Enabled=false;
                }
                else if(pm==8){
					pole8->Picture->LoadFromFile("img/o.bmp");
					p[8]=2;
					pole8->Enabled=false;
                }
                else if(pm==9){
					pole9->Picture->LoadFromFile("img/o.bmp");
					p[9]=2;
					pole9->Enabled=false;
                }
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::pole4Click(TObject *Sender)
{
        if(p[4]==0){
                pole4->Picture->LoadFromFile("img/x.bmp");
                p[4]=1;
                pole4->Enabled=false;
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
                int pm=bot(p);
                if(pm==1){
					pole1->Picture->LoadFromFile("img/o.bmp");
					p[1]=2;
					pole1->Enabled=false;
                }
                else if(pm==2){
					pole2->Picture->LoadFromFile("img/o.bmp");
					p[2]=2;
					pole2->Enabled=false;
                }
                else if(pm==3){
					pole3->Picture->LoadFromFile("img/o.bmp");
					p[3]=2;
					pole3->Enabled=false;
                }
                else if(pm==4){
					pole4->Picture->LoadFromFile("img/o.bmp");
					p[4]=2;
					pole4->Enabled=false;
                }
                 else if(pm==5){
					pole5->Picture->LoadFromFile("img/o.bmp");
					p[5]=2;
					pole5->Enabled=false;
                }
                else if(pm==6){
					pole6->Picture->LoadFromFile("img/o.bmp");
					p[6]=2;
					pole6->Enabled=false;
                }
                else if(pm==7){
					pole7->Picture->LoadFromFile("img/o.bmp");
					p[7]=2;
					pole7->Enabled=false;
                }
                else if(pm==8){
					pole8->Picture->LoadFromFile("img/o.bmp");
					p[8]=2;
					pole8->Enabled=false;
                }
                else if(pm==9){
					pole9->Picture->LoadFromFile("img/o.bmp");
					p[9]=2;
					pole9->Enabled=false;
                }
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::pole5Click(TObject *Sender)
{
        if(p[5]==0){
                pole5->Picture->LoadFromFile("img/x.bmp");
                p[5]=1;
                pole5->Enabled=false;
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
                int pm=bot(p);
                if(pm==1){
					pole1->Picture->LoadFromFile("img/o.bmp");
					p[1]=2;
					pole1->Enabled=false;
                }
                else if(pm==2){
					pole2->Picture->LoadFromFile("img/o.bmp");
					p[2]=2;
					pole2->Enabled=false;
                }
                else if(pm==3){
					pole3->Picture->LoadFromFile("img/o.bmp");
					p[3]=2;
					pole3->Enabled=false;
                }
                else if(pm==4){
					pole4->Picture->LoadFromFile("img/o.bmp");
					p[4]=2;
					pole4->Enabled=false;
                }
                 else if(pm==5){
					pole5->Picture->LoadFromFile("img/o.bmp");
					p[5]=2;
					pole5->Enabled=false;
                }
                else if(pm==6){
					pole6->Picture->LoadFromFile("img/o.bmp");
					p[6]=2;
					pole6->Enabled=false;
                }
                else if(pm==7){
					pole7->Picture->LoadFromFile("img/o.bmp");
					p[7]=2;
					pole7->Enabled=false;
                }
                else if(pm==8){
					pole8->Picture->LoadFromFile("img/o.bmp");
					p[8]=2;
					pole8->Enabled=false;
                }
                else if(pm==9){
					pole9->Picture->LoadFromFile("img/o.bmp");
					p[9]=2;
					pole9->Enabled=false;
                }
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::pole6Click(TObject *Sender)
{
        if(p[6]==0){
                pole6->Picture->LoadFromFile("img/x.bmp");
                p[6]=1;
                pole6->Enabled=false;
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
                int pm=bot(p);
                if(pm==1){
					pole1->Picture->LoadFromFile("img/o.bmp");
					p[1]=2;
					pole1->Enabled=false;
                }
                else if(pm==2){
					pole2->Picture->LoadFromFile("img/o.bmp");
					p[2]=2;
					pole2->Enabled=false;
                }
                else if(pm==3){
					pole3->Picture->LoadFromFile("img/o.bmp");
					p[3]=2;
					pole3->Enabled=false;
                }
                else if(pm==4){
					pole4->Picture->LoadFromFile("img/o.bmp");
					p[4]=2;
					pole4->Enabled=false;
                }
                 else if(pm==5){
					pole5->Picture->LoadFromFile("img/o.bmp");
					p[5]=2;
					pole5->Enabled=false;
                }
                else if(pm==6){
					pole6->Picture->LoadFromFile("img/o.bmp");
					p[6]=2;
					pole6->Enabled=false;
                }
                else if(pm==7){
					pole7->Picture->LoadFromFile("img/o.bmp");
					p[7]=2;
					pole7->Enabled=false;
                }
                else if(pm==8){
					pole8->Picture->LoadFromFile("img/o.bmp");
					p[8]=2;
					pole8->Enabled=false;
                }
                else if(pm==9){
					pole9->Picture->LoadFromFile("img/o.bmp");
					p[9]=2;
					pole9->Enabled=false;
                }
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::pole7Click(TObject *Sender)
{
        if(p[7]==0){
                pole7->Picture->LoadFromFile("img/x.bmp");
                p[7]=1;
                pole7->Enabled=false;
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
                int pm=bot(p);
                if(pm==1){
					pole1->Picture->LoadFromFile("img/o.bmp");
					p[1]=2;
					pole1->Enabled=false;
                }
                else if(pm==2){
					pole2->Picture->LoadFromFile("img/o.bmp");
					p[2]=2;
					pole2->Enabled=false;
                }
                else if(pm==3){
					pole3->Picture->LoadFromFile("img/o.bmp");
					p[3]=2;
					pole3->Enabled=false;
                }
                else if(pm==4){
					pole4->Picture->LoadFromFile("img/o.bmp");
					p[4]=2;
					pole4->Enabled=false;
                }
                 else if(pm==5){
					pole5->Picture->LoadFromFile("img/o.bmp");
					p[5]=2;
					pole5->Enabled=false;
                }
                else if(pm==6){
					pole6->Picture->LoadFromFile("img/o.bmp");
					p[6]=2;
					pole6->Enabled=false;
                }
                else if(pm==7){
					pole7->Picture->LoadFromFile("img/o.bmp");
					p[7]=2;
					pole7->Enabled=false;
                }
                else if(pm==8){
					pole8->Picture->LoadFromFile("img/o.bmp");
					p[8]=2;
					pole8->Enabled=false;
                }
                else if(pm==9){
					pole9->Picture->LoadFromFile("img/o.bmp");
					p[9]=2;
					pole9->Enabled=false;
                }
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::pole8Click(TObject *Sender)
{
        if(p[8]==0){
                pole8->Picture->LoadFromFile("img/x.bmp");
                p[8]=1;
                pole8->Enabled=false;
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
                int pm=bot(p);
                if(pm==1){
					pole1->Picture->LoadFromFile("img/o.bmp");
					p[1]=2;
					pole1->Enabled=false;
                }
                else if(pm==2){
					pole2->Picture->LoadFromFile("img/o.bmp");
					p[2]=2;
					pole2->Enabled=false;
                }
                else if(pm==3){
					pole3->Picture->LoadFromFile("img/o.bmp");
					p[3]=2;
					pole3->Enabled=false;
                }
                else if(pm==4){
					pole4->Picture->LoadFromFile("img/o.bmp");
					p[4]=2;
					pole4->Enabled=false;
                }
                 else if(pm==5){
					pole5->Picture->LoadFromFile("img/o.bmp");
					p[5]=2;
					pole5->Enabled=false;
                }
                else if(pm==6){
					pole6->Picture->LoadFromFile("img/o.bmp");
					p[6]=2;
					pole6->Enabled=false;
                }
                else if(pm==7){
					pole7->Picture->LoadFromFile("img/o.bmp");
					p[7]=2;
					pole7->Enabled=false;
                }
                else if(pm==8){
					pole8->Picture->LoadFromFile("img/o.bmp");
					p[8]=2;
					pole8->Enabled=false;
                }
                else if(pm==9){
					pole9->Picture->LoadFromFile("img/o.bmp");
					p[9]=2;
					pole9->Enabled=false;
                }
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::pole9Click(TObject *Sender)
{
        if(p[9]==0){
                pole9->Picture->LoadFromFile("img/x.bmp");
                p[9]=1;
                pole9->Enabled=false;
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
                int pm=bot(p);
                if(pm==1){
					pole1->Picture->LoadFromFile("img/o.bmp");
					p[1]=2;
					pole1->Enabled=false;
                }
                else if(pm==2){
					pole2->Picture->LoadFromFile("img/o.bmp");
					p[2]=2;
					pole2->Enabled=false;
                }
                else if(pm==3){
					pole3->Picture->LoadFromFile("img/o.bmp");
					p[3]=2;
					pole3->Enabled=false;
                }
                else if(pm==4){
					pole4->Picture->LoadFromFile("img/o.bmp");
					p[4]=2;
					pole4->Enabled=false;
                }
                 else if(pm==5){
					pole5->Picture->LoadFromFile("img/o.bmp");
					p[5]=2;
					pole5->Enabled=false;
                }
                else if(pm==6){
					pole6->Picture->LoadFromFile("img/o.bmp");
					p[6]=2;
					pole6->Enabled=false;
                }
                else if(pm==7){
					pole7->Picture->LoadFromFile("img/o.bmp");
					p[7]=2;
					pole7->Enabled=false;
                }
                else if(pm==8){
					pole8->Picture->LoadFromFile("img/o.bmp");
					p[8]=2;
					pole8->Enabled=false;
                }
                else if(pm==9){
					pole9->Picture->LoadFromFile("img/o.bmp");
					p[9]=2;
					pole9->Enabled=false;
                }
                if(sprawdz()){
                        Label2->Caption= "Your points: "+IntToStr(pkt1);
                        Label3->Caption= "PC points: "+IntToStr(pkt2);
                        Label4->Caption= "Draws: "+IntToStr(pkt3);
                        pole1->Enabled=false;
                        pole1->Enabled=false;
                        pole2->Enabled=false;
                        pole3->Enabled=false;
                        pole4->Enabled=false;
                        pole5->Enabled=false;
                        pole6->Enabled=false;
                        pole7->Enabled=false;
                        pole8->Enabled=false;
                        pole9->Enabled=false;
                        return;
                }
        }
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Autor2Click(TObject *Sender)
{
        Application->MessageBox("Wiktor Lewicki, wiktorek.tfm@gmail.com", "Autor", MB_OK);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Oprogramie1Click(TObject *Sender)
{
        Form2->ShowModal();
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Button2Click(TObject *Sender)
{
        pole1->Picture->LoadFromFile("img/nic.bmp");
        pole2->Picture->LoadFromFile("img/nic.bmp");
        pole3->Picture->LoadFromFile("img/nic.bmp");
        pole4->Picture->LoadFromFile("img/nic.bmp");
        pole5->Picture->LoadFromFile("img/nic.bmp");
        pole6->Picture->LoadFromFile("img/nic.bmp");
        pole7->Picture->LoadFromFile("img/nic.bmp");
        pole8->Picture->LoadFromFile("img/nic.bmp");
        pole9->Picture->LoadFromFile("img/nic.bmp");
        for(int i=0;i<=9;i++) p[i]=0;
        tury=0;
        pole1->Enabled=true;
        pole2->Enabled=true;
        pole3->Enabled=true;
        pole4->Enabled=true;
        pole5->Enabled=true;
        pole6->Enabled=true;
        pole7->Enabled=true;
        pole8->Enabled=true;
        pole9->Enabled=true;
        if(str==1) str=2;
        else str=1;
}
//---------------------------------------------------------------------------

