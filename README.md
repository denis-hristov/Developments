#include <iostream>
#include <string>
#include <fstream>
#include <vector>
using namespace std;

class Shop
{
public:
    string name;
    Shop();
    ~Shop();

    Shop(string item, double priceItem) {
        name = item;
        price = priceItem;
    }

    //add new item
    void printItem() {
        cout << name << '\t' << price << "lv.\n";
    }

    //price
    int getPrice() {
        return price;
    }

private:
    double price;
};

Shop::Shop(){
    name = "None";
    price = 0;
}

Shop::~Shop(){}

int main()
{
    //new item in vector
    vector <Shop*> list;
    string itemNew;
    double priceNew;
    while (true) {
        cout << "0 for exit!\n";
        cout << "New item name: "; getline(cin, itemNew);
        if (itemNew == "0")break;
        cout << "Price: "; cin >> priceNew;
        cin.ignore('\n', 10);
        list.push_back(new Shop(itemNew, priceNew));
    }

    //printing
    cout << "\n\nList of the new items:\n";
    for (int x = 0; x < list.size(); x++)
        list[x]->printItem();

    

    //add in new file
    fstream NewItems;
    NewItems.open("D:\\Testing files\\New item list.txt", ios::out);
    for (int i = 0; i < list.size(); i++)
    NewItems << list[i]->name << '\t'
        << list[i]->getPrice() << " lv." << endl;
    NewItems.close();
    return 0;
}
