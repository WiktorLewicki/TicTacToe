
#include <iostream>
#include <map>
#include <vector>
using namespace std;
vector<int> p(10);
map<vector<int>, int> stan;
void print(vector<int> xd){
	cout<<xd[1]<<" "<<xd[2]<<" "<<xd[3]<<"\n";
	cout<<xd[4]<<" "<<xd[5]<<" "<<xd[6]<<"\n";
	cout<<xd[7]<<" "<<xd[8]<<" "<<xd[9]<<"\n";
}
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
int play(vector<int> tab){
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
int main(){
	dfs(p, 0, 1);
	print(p);
	cout<<"\n";
	int ile=0;
	while(1){
		int x;
		cin>>x;
		p[x]=1;
		print(p);
		cout<<"\n";
		if(checker(p)) break;
		ile++;
		if(ile==9) break;
		p[play(p)]=2;
		print(p);
		cout<<"\n";
		if(checker(p)) break;
		ile++;
		if(ile==9) break;
	}
	
	return 0;
}
