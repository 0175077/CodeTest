#include "mgr.h"

bool C_MGR::insert(int nData)
{
    //std::map<int, C_DATA*>::iterator iter{};
    //iter = m_mapData.find(nData);

    //if (iter == m_mapData.end())
    //    return false;

    //C_DATA* p = new C_DATA{};
    //p->setData(nData);
    //m_mapData.insert({ nData,p});

    std::pair<std::map<int, C_DATA*>::iterator, bool> pairResult{};
    pairResult = m_mapData.insert({ nData, nullptr });

    if (!pairResult.second)
        return false;
    
    C_DATA* p = new C_DATA{};
    p->setData(nData);
    
    pairResult.first->second = p;

    return true;
}

bool C_MGR::erase(int nData)
{
    std::map<int, C_DATA*>::iterator iter = m_mapData.find(nData);

    if (iter == m_mapData.end())
    {
        return false;
    }

    delete iter->second;
    m_mapData.erase(iter);


    return true;
}

void C_MGR::clear()
{
    for (std::pair<int, C_DATA*> pairData : m_mapData)
    {
        delete pairData.second;

    }
    m_mapData.clear();
}

void C_MGR::print()
{
    for (std::pair<int, C_DATA*> pairData : m_mapData)
    {
        pairData.second->printData();

    }
}
