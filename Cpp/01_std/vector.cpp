#include <iostream>
#include <vector>


int main()
{
    std::vector<int> listData{};

    // 크기 정해 놓고 안하면
    // vector는 크기를 약 1.3배씩 늘림
    listData.reserve(10);

    for (int i = 0; i < 10; i++)
    {
        listData.push_back(1);
        printf("%zd,  %zd\n", listData.size(), listData.capacity());
    }

}
