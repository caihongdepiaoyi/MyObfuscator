//test c class syntax
//c++ gcc compiler in ubuntu needs the argument: -lstdc++
#include <cstdio>
#include <vector>
#include <iostream>
using namespace std;
class student {
    public:
        char *name;
        int age;
        void outPutName();
        void outPutAge();
};

void student::outPutAge() {
    printf("%d\n", this->age);
}

void student::outPutName() {
    printf("%s\n", this->name);

}

int main() {
    /*
    student s1;
    char name[15] = "ldc, hello";
    s1.age = 18;
    s1.name = name; 
    s1.outPutAge();
    s1.outPutName();

    for(char i : name) {
        printf("%c ", i);
    } 
    */
    vector<int> vec;
    for(int i = 0; i < 5; i++) {
        vec.push_back(i);
    }
    for(int j : vec) {
        printf("%d", j);
    }

    return 0;
}