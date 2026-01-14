#include <iostream>
#include "mgr.h"


int main()
{
    C_MGR cMgr{};

    cMgr.insert(1);
    cMgr.insert(2);
    cMgr.insert(3);
    cMgr.insert(8);
    cMgr.insert(6);
    cMgr.insert(1);




    if (cMgr.insert(3))
        printf("성공\n");
    else
        printf("실패\n");

    cMgr.print();

}

