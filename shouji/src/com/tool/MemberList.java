

package com.tool;

import com.domain.MemberForm;
import java.util.Vector;

public class MemberList
{

    private static MemberList manager = new MemberList();
    private Vector vector;

    public MemberList()
    {
        vector = null;
        vector = new Vector();
    }

    public static MemberList getInstance()
    {
        return manager;
    }

    public boolean addMember(MemberForm form)
    {
        if(form != null)
        {
            vector.add(form);
            return true;
        } else
        {
            return false;
        }
    }

    public Vector getList()
    {
        return vector;
    }

    public int removeMember(int id)
    {
        for(int i = 0; i < vector.size(); i++)
        {
            MemberForm form = (MemberForm)vector.elementAt(i);
            int idd = form.getId().intValue();
            if(idd == id)
                vector.removeElementAt(i);
        }

        return id;
    }

}
