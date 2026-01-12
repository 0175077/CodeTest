#include <iostream>
#include <set>


int main()
{
    std::set<int> setData{};

    setData.insert(4);
    setData.insert(5);
    setData.insert(6);
    setData.insert(3);
    setData.insert(1);
    

    std::set<int>::iterator iterFind = setData.find(5);
    if (iterFind != setData.end())
    {
        printf("있다\n");
    }
    else
        printf("없다\n");

    // 중위 순회
    for (int nData : setData)
    {
        printf("%d\n", nData);
    }
}
