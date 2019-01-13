
int maxbit(int data[],int n) //辅助函数，求数据的最大位数
{
    int d = 1; //保存最大的位数
    int p =10;
    for(int i = 0;i < n; ++i)
    {
        while(data[i] >= p)
        {
            p *= 10;
            ++d;
        }
    }
    return d;
}
 
 
 
void radixsort(int data[],int n) //基数排序
{
    int d = maxbit(data,n); //位数
    int * tmp = new int[n]; //n个数
    int * count = new int[10]; //计数器
    int i,j,k;
 
 
    int radix = 1;
    for(i = 1; i<= d;i++) //进行d次排序
    {
        for(j = 0;j < 10;j++)
            count[j] = 0; //每次分配前清空计数器
        for(j = 0;j < n; j++)
        {
            k = (data[j]/radix)%10; //统计每个桶中的记录数
            count[k]++;
        }
        for(j = 1;j < 10;j++)
            count[j] = count[j-1] + count[j]; //前缀和用来记录每个数的位置，将tmp中的位置依次分配给每个桶
        for(j = n-1;j >= 0;j--) //逆序保证稳定性，相同大小先出现的小，将所有桶中记录依次收 集到tmp中
        {
            k = (data[j]/radix)%10;
            tmp[count[k]-1] = data[j];
            count[k]--;
        }
        for(j = 0;j < n;j++) //将临时数组的内容复制到data中
            data[j] = tmp[j];
        radix = radix*10;
    }
    delete [] tmp;
    delete [] count;

--------------------- 
作者：笨笨呆 
来源：CSDN 
原文：https://blog.csdn.net/u014141559/article/details/38497993 
版权声明：本文为博主原创文章，转载请附上博文链接！
