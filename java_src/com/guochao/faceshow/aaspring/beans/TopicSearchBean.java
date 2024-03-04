package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class TopicSearchBean {
    private int isNew;
    private List<UgcTopicBean> topicList;

    public int getIsNew() {
        return this.isNew;
    }

    public List<UgcTopicBean> getTopicList() {
        return this.topicList;
    }

    public void setIsNew(int i9) {
        this.isNew = i9;
    }

    public void setTopicList(List<UgcTopicBean> list) {
        this.topicList = list;
    }
}
