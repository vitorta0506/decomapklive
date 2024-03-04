package com.guochao.faceshow.aaspring.utils;

import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.systemassistant.data.AssistantUserInfo;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMConversationManager;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMSendCallback;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.util.List;
import java.util.Objects;
import java.util.Observable;
import java.util.Observer;
/* loaded from: classes3.dex */
public class ChatPresenter implements Observer, d.a {
    private static final String TAG = "ChatPresenter";
    @Nullable
    private V2TIMConversation conversation;
    private ChatView view;
    private boolean isGetingMessage = false;
    private final int LAST_MESSAGE_NUM = 20;

    public ChatPresenter(ChatView chatView, String str) {
        this.view = chatView;
        V2TIMConversationManager conversationManager = V2TIMManager.getConversationManager();
        conversationManager.getConversation("c2c_" + str, new V2TIMValueCallback<V2TIMConversation>() { // from class: com.guochao.faceshow.aaspring.utils.ChatPresenter.1
            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, String str2) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onSuccess(V2TIMConversation v2TIMConversation) {
                ChatPresenter.this.conversation = v2TIMConversation;
                String draftText = ChatPresenter.this.conversation.getDraftText();
                if (ChatPresenter.this.view != null) {
                    ChatPresenter.this.view.showDraft(draftText);
                }
            }
        });
    }

    public V2TIMConversation getConversation() {
        return this.conversation;
    }

    public void getMessage(@Nullable AssistantUserInfo.OfficialUserData officialUserData, V2TIMMessage v2TIMMessage) {
        if (this.isGetingMessage || officialUserData == null) {
            return;
        }
        this.isGetingMessage = true;
        V2TIMManager.getMessageManager().getC2CHistoryMessageList(String.valueOf(officialUserData.userId), 20, v2TIMMessage, new V2TIMValueCallback<List<V2TIMMessage>>() { // from class: com.guochao.faceshow.aaspring.utils.ChatPresenter.3
            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, String str) {
                ChatPresenter.this.isGetingMessage = false;
                LogUtils.e(ChatPresenter.TAG, "get message error" + str);
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onSuccess(List<V2TIMMessage> list) {
                ChatPresenter.this.isGetingMessage = false;
                ChatPresenter.this.view.showMessage(list);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public void onNewMessage(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (this.conversation != null && Objects.equals(aVar.getMessage().getUserID(), this.conversation.getUserID())) {
            this.view.showMessage(aVar.getMessage());
            readMessages();
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public /* bridge */ /* synthetic */ void onRecvMessageRevoked(String str) {
        a8.b.a(this, str);
    }

    public void readMessages() {
        if (this.conversation == null) {
            return;
        }
        V2TIMManager.getMessageManager().markC2CMessageAsRead(this.conversation.getUserID(), new V2TIMCallback() { // from class: com.guochao.faceshow.aaspring.utils.ChatPresenter.4
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, String str) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
            }
        });
    }

    public void saveDraft(String str) {
        if (this.conversation == null) {
            return;
        }
        V2TIMManager.getConversationManager().setConversationDraft(this.conversation.getConversationID(), str, new V2TIMCallback() { // from class: com.guochao.faceshow.aaspring.utils.ChatPresenter.5
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, String str2) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
            }
        });
    }

    public void sendMessage(final V2TIMMessage v2TIMMessage) {
        SendMessageHandle.sendMessage(this.conversation, v2TIMMessage, new V2TIMSendCallback<V2TIMMessage>() { // from class: com.guochao.faceshow.aaspring.utils.ChatPresenter.2
            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, String str) {
                ChatPresenter.this.view.onSendMessageFail(i9, str, v2TIMMessage);
            }

            @Override // com.tencent.imsdk.v2.V2TIMSendCallback
            public void onProgress(int i9) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onSuccess(V2TIMMessage v2TIMMessage2) {
            }
        });
    }

    public void start(AssistantUserInfo.OfficialUserData officialUserData) {
        com.guochao.faceshow.aaspring.manager.im.b.l0().x(this);
        getMessage(officialUserData, null);
    }

    public void stop() {
        com.guochao.faceshow.aaspring.manager.im.b.l0().G(this);
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
    }
}
