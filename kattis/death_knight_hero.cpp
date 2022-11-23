#include<iostream>
#include<string>
using namespace std;

bool result_battle(string battle){
    for(int i=0; i<battle.length()-1; i++){
        if(battle[i]=='C'&&battle[i+1]=='D')
            return false;
    }
    return true;
}

int main(){
    int n;
    string battle;
    int wons=0;
    cin>> n;
    cin.ignore();
    for(int i=0; i<n; i++){
        cin>>battle;
        if(result_battle(battle)) wons++;
    }
    cout<<wons;
    return 0;
}
