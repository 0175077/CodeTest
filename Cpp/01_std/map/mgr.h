#pragma once

#include <map>
#include "data.h"

class C_MGR
{
private:
	std::map<int, C_DATA*> m_mapData;

public:
	C_MGR() = default;
	bool insert(int nData);
	bool erase(int nData);
	void clear();
	void print();

};