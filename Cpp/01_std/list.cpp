#include <iostream>
#include <list>


int main()
{
    std::list<int> listData{};

    listData.push_back(1);
    listData.push_back(2);
    listData.push_back(3);
    listData.push_back(4);
    listData.push_back(5);

    std::list<int>::iterator iter = listData.begin();
    while (iter != listData.end())
    {
        printf("%d\n", *iter);
        iter++;
    }

    for (int nData : listData)
    {
        printf("%d\n", nData);
    }
}
