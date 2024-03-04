package com.guochao.faceshow.aaspring.beans;

import com.tencent.imsdk.v2.V2TIMMessage;
import java.util.List;
/* loaded from: classes3.dex */
public class SearchChatRecordResult {
    private ConversationInfo mConversationInfo;
    private List<V2TIMMessage> mMatchMessages;

    public ConversationInfo getConversationInfo() {
        return this.mConversationInfo;
    }

    public List<V2TIMMessage> getMatchMessages() {
        return this.mMatchMessages;
    }

    public void setConversationInfo(ConversationInfo conversationInfo) {
        this.mConversationInfo = conversationInfo;
    }

    public void setMatchMessages(List<V2TIMMessage> list) {
        this.mMatchMessages = list;
    }
}
