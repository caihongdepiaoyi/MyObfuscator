#include <iostream>
#include <ctime>
#include <string>
#include <map>
#include <cstring>
#include <vector>
#include <sstream>
#include <fstream>
using namespace std;

string inputFile;
string outputFile;
map<string, int> commandMap;
vector<string> functions;
vector<string> globals;
vector<string> locals;
void mapInit()
{
    commandMap.insert({"extract", 1});
    commandMap.insert({"link", 2});
    commandMap.insert({"getLLVMIR", 3});
    commandMap.insert({"ll2wasm", 4});
    commandMap.insert({"fla", 5});
    commandMap.insert({"bcf", 6});
    commandMap.insert({"str", 7});
    commandMap.insert({"echoColor", 8});
}

void ll2wasm(char *input) {
    string command;
    command.append("bash ./run.sh ");
    int flag = commandMap.at("ll2wasm");
    command.append(to_string(flag));
    command.append(" ");
    command.append(input);
    cout << command.data() << endl;
    system(command.data());
}

void extract(char *input){
    string command;
    command.append("bash ./run.sh ");
    int flag = commandMap.at("extract");
    command.append(to_string(flag));
    command.append(" ");
    command.append(input);
    //cout << command.data() << endl;
    system(command.data());
}

void obfuscate(string select, string func, char *input) {
    string command;
    command.append("bash ./run.sh ");
    int flag = commandMap.at(select);
    command.append(to_string(flag));
    command.append(" ");
    int index = func.find(".bc");
    string funcName = func.substr(0, index);
    //cout << "funcName: " << funcName << endl;
    command.append(funcName);
    command.append(" ");
    command.append(input);
    cout << "command:" <<  command.data() << endl;
    system(command.data());

}

void link(char* input) {
    string command;
    command.append("bash ./run.sh ");
    int flag = commandMap.at("link");
    command.append(to_string(flag));
    command.append(" ");
    command.append(input);
    cout << command.data() << endl;
    system(command.data());
}

int main(int argc, char *argv[])
{    
    mapInit();
    srand(time(NULL));

    inputFile.assign(argv[1]);

    extract(argv[1]);

    // obfuscation
    string dir(argv[1]);
    string data(dir);
    data.append("/data");
    string dataTxt(data);
    dataTxt.append("/data.txt");
    
    string global(data);
    global.append("/global.txt");
    string local(data);
    local.append("/local.txt");
    //read files
    ifstream f;
    f.open(dataTxt.data(), ios::in);
    string buff;
    while(getline(f, buff)) {}
    cout << buff.data() << endl;
    f.close();

    string word;
    istringstream record(buff); 
    while (record >> word)
    {
        functions.push_back(word); 
    }

    f.open(global.data(), ios::in);
    while(getline(f, buff)){}
    cout << buff.data() << endl;
    f.close();

    record.clear();
    record.str(buff);
    while (record >> word){
        globals.push_back(word);
    }

    f.open(local.data(), ios::in);
    
    while(getline(f, buff)){}
    cout << buff.data() << endl;
    f.close();

    record.clear();
    record.str(buff);
    while (record >> word){
        locals.push_back(word);
    }

    for(auto func : functions) {
        int caseVal = rand() % 2;
        cout << "randNum = " << caseVal << endl;
        string select;
        switch(caseVal) {
            case 0:
                select.assign("fla");
                //cout << "fla " << func.data() << endl;
            break;
            case 1:
                select.assign("bcf");
                //cout << "bcf " << func.data() << endl;
            break;
        }
        obfuscate(select,func,argv[1]);
    }
    /*
    for(auto global : globals) {
        string select("str");
        obfuscate(select, global, argv[1]);
    }
    for(auto local : locals) {
        string select("str");
        obfuscate(select, local, argv[1]);
    }*/    
    link(argv[1]);
    string select("str");
    string strFile(argv[1]);
    obfuscate(select, strFile, argv[1]);
    ll2wasm(argv[1]);
    return 0;
}