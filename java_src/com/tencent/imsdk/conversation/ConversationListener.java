package com.tencent.imsdk.conversation;

import java.util.List;
/* loaded from: classes4.dex */
public abstract class ConversationListener {
    public void onConversationChanged(List<Conversation> list) {
    }

    public void onConversationGroupCreated(String str, List<Conversation> list) {
    }

    public void onConversationGroupDeleted(String str) {
    }

    public void onConversationGroupNameChanged(String str, String str2) {
    }

    public void onConversationsAddedToGroup(String str, List<Conversation> list) {
    }

    public void onConversationsDeletedFromGroup(String str, List<Conversation> list) {
    }

    public void onNewConversation(List<Conversation> list) {
    }

    public void onSyncServerFailed() {
    }

    public void onSyncServerFinish() {
    }

    public void onSyncServerStart() {
    }

    public void onTotalUnreadMessageCountChanged(long j10) {
    }
}
