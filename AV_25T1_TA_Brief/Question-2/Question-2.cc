// Question 2: Fix the race conditions in the code. The code is supposed to add 5000 dollars
// to the wallet and parallelising it with threads. However, the final balance stored is sometimes not 5000 due
// to a race condition. The function is called a 1000 times to generate a race condition.
// https://stackoverflow.com/questions/34510/what-is-a-race-condition
// Think about how you can use a mutex to solve this

#include <vector>
#include <thread>
#include <iostream>
#include <mutex>

int total = 0;

class Wallet
{
    int mMoney;
    std::mutex mMutex;
public:
    Wallet() :mMoney(0) {}
    int getMoney() const { return mMoney; }
    void addMoney(int money)
    {
        for (int i = 0; i < money; ++i)
        {
            mMutex.lock();
            mMoney++;
            mMutex.unlock();
        }
    }
};


int fillWalletWithMoney()
{
    Wallet walletObject;
    std::vector<std::thread> threads;

    for (int i = 0; i < 5; ++i) {
        threads.emplace_back(&Wallet::addMoney, &walletObject, 1000);
    }
    for (std::size_t i = 0; i < threads.size(); i++)
    {
        threads.at(i).join();
    }
    return walletObject.getMoney();
}
int main()
{
    int val = 0;
    for (int k = 0; k < 1000; k++)
    {
        if ((val = fillWalletWithMoney()) != 5000)
        {
            std::cout << "Error at count = " << k << " Money in Wallet = " << val << std::endl;
            return EXIT_FAILURE;
        }
    }
    return 0;
}