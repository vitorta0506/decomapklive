package com.tencent.imsdk.v2;

import com.tencent.imsdk.conversation.ConversationListFilter;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class V2TIMConversationListFilter implements Serializable {
    private ConversationListFilter filter = new ConversationListFilter();

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConversationListFilter getConversationFilter() {
        return this.filter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCount() {
        return this.filter.getCount();
    }

    public void setConversationType(int i9) {
        this.filter.setConversationType(i9);
    }

    public void setCount(int i9) {
        this.filter.setCount(i9);
    }

    public void setGroupName(String str) {
        this.filter.setGroupName(str);
    }

    public void setMarkType(long j10) {
        this.filter.setMarkType(j10);
    }

    public void setNextSeq(long j10) {
        this.filter.setNextSeq(j10);
    }
}
