function CheckAll(elementsA,elementsB)
{
    var len = elementsA;
    if(len.length > 0)
    {
        for(i=0;i<len.length;i++)
        {
            elementsA[i].checked = true;
        }
        if(elementsB.checked ==false)
        {
            for(j=0;j<len.length;j++)
            {
                elementsA[j].checked = false;
            }
        }
    }
    else
    {
        len.checked = true;
        if(elementsB.checked == false)
        {
            len.checked = false;
        }
    }
}