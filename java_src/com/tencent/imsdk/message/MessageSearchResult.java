package com.tencent.imsdk.message;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class MessageSearchResult implements Serializable {
    private List<MessageSearchResultItem> messageSearchResultItemList;
    private int totalCount;

    public List<MessageSearchResultItem> getMessageSearchResultItemList() {
        return this.messageSearchResultItemList;
    }

    public int getTotalCount() {
        return this.totalCount;
    }
}
