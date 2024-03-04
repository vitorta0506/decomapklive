package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class PkFriends {
    private List<String> liveUserIds;
    private List<IM_User> userList;

    public List<String> getLiveUserIds() {
        return this.liveUserIds;
    }

    public List<IM_User> getUserList() {
        return this.userList;
    }

    public void setLiveUserIds(List<String> list) {
        this.liveUserIds = list;
    }

    public void setUserList(List<IM_User> list) {
        this.userList = list;
    }
}
