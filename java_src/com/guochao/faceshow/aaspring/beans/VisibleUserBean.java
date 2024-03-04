package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class VisibleUserBean {
    private boolean isAllSelected;
    private boolean isSelected;
    private String selectInvisibleName;
    private List<IM_User> selectInvisibleUsers;

    public String getSelectInvisibleName() {
        return this.selectInvisibleName;
    }

    public List<IM_User> getSelectInvisibleUsers() {
        return this.selectInvisibleUsers;
    }

    public boolean isAllSelected() {
        return this.isAllSelected;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setAllSelected(boolean z10) {
        this.isAllSelected = z10;
    }

    public void setSelectInvisibleName(String str) {
        this.selectInvisibleName = str;
    }

    public void setSelectInvisibleUsers(List<IM_User> list) {
        this.selectInvisibleUsers = list;
    }

    public void setSelected(boolean z10) {
        this.isSelected = z10;
    }
}
