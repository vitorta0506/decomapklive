package com.tencent.imsdk.conversation;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ConversationListFilter implements Serializable {
    private int conversationType;
    private int count;
    private String groupName;
    private long markType;
    private long nextSeq;

    public int getCount() {
        return this.count;
    }

    public void setConversationType(int i9) {
        this.conversationType = i9;
    }

    public void setCount(int i9) {
        this.count = i9;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public void setMarkType(long j10) {
        this.markType = j10;
    }

    public void setNextSeq(long j10) {
        this.nextSeq = j10;
    }
}
