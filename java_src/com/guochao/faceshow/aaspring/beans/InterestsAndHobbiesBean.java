package com.guochao.faceshow.aaspring.beans;

import com.guochao.faceshow.mine.model.HobbyBean;
import java.util.List;
/* loaded from: classes3.dex */
public class InterestsAndHobbiesBean {
    private List<HobbyBean> hobbyBeans;
    private int type;

    public InterestsAndHobbiesBean(int i9, List<HobbyBean> list) {
        this.type = i9;
        this.hobbyBeans = list;
    }

    public List<HobbyBean> getHobbyBeans() {
        return this.hobbyBeans;
    }

    public int getType() {
        return this.type;
    }

    public void setHobbyBeans(List<HobbyBean> list) {
        this.hobbyBeans = list;
    }

    public void setType(int i9) {
        this.type = i9;
    }
}
