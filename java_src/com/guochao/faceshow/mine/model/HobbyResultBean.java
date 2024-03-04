package com.guochao.faceshow.mine.model;

import java.util.List;
/* loaded from: classes4.dex */
public class HobbyResultBean {
    private List<HobbyBean> sysHobbies;
    private List<HobbyBean> userHobbies;

    public HobbyResultBean() {
    }

    public List<HobbyBean> getSysHobbies() {
        return this.sysHobbies;
    }

    public List<HobbyBean> getUserHobbies() {
        return this.userHobbies;
    }

    public void setSysHobbies(List<HobbyBean> list) {
        this.sysHobbies = list;
    }

    public void setUserHobbies(List<HobbyBean> list) {
        this.userHobbies = list;
    }

    public String toString() {
        return "HobbyResultBean{userHobbies=" + this.userHobbies + ", sysHobbies=" + this.sysHobbies + '}';
    }

    public HobbyResultBean(List<HobbyBean> list, List<HobbyBean> list2) {
        this.userHobbies = list;
        this.sysHobbies = list2;
    }
}
