package com.guochao.faceshow.aaspring.utils;

import androidx.annotation.Nullable;
import com.guochao.faceshow.utils.TXIMUtils;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import com.tencent.imsdk.v2.V2TIMSendCallback;
/* loaded from: classes3.dex */
public class SendMessageHandle {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class MessageCallbackWrapper implements V2TIMSendCallback<V2TIMMessage> {
        V2TIMSendCallback<V2TIMMessage> mCallback;

        public MessageCallbackWrapper(V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback) {
            this.mCallback = v2TIMSendCallback;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback = this.mCallback;
            if (v2TIMSendCallback != null) {
                v2TIMSendCallback.onError(i9, str);
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMSendCallback
        public void onProgress(int i9) {
            V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback = this.mCallback;
            if (v2TIMSendCallback != null) {
                v2TIMSendCallback.onProgress(i9);
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onSuccess(V2TIMMessage v2TIMMessage) {
            V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback = this.mCallback;
            if (v2TIMSendCallback != null) {
                v2TIMSendCallback.onSuccess(v2TIMMessage);
            }
        }
    }

    public static void sendC2CMessage(String str, V2TIMMessage v2TIMMessage, V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback) {
        sendC2CMessage(str, v2TIMMessage, null, v2TIMSendCallback);
    }

    public static void sendMessage(String str, String str2, V2TIMMessage v2TIMMessage, int i9, V2TIMCallback v2TIMCallback) {
        new SendMessageHandleImpl().sendMessageV2(str, str2, v2TIMMessage, i9, v2TIMCallback);
    }

    public static void sendOnLineC2CMessage(String str, V2TIMMessage v2TIMMessage, @Nullable V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback) {
        V2TIMManager.getMessageManager().sendMessage(v2TIMMessage, str, null, 0, true, null, new MessageCallbackWrapper(v2TIMSendCallback));
    }

    public static void sendOnlineMessage(String str, String str2, V2TIMMessage v2TIMMessage, int i9, V2TIMCallback v2TIMCallback) {
        new SendMessageHandleImpl().sendOnlineMessageV2(str, str2, v2TIMMessage, i9, v2TIMCallback);
    }

    public static void sendC2CMessage(String str, V2TIMMessage v2TIMMessage, @Nullable V2TIMOfflinePushInfo v2TIMOfflinePushInfo, V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback) {
        V2TIMManager.getMessageManager().sendMessage(v2TIMMessage, str, null, 0, false, v2TIMOfflinePushInfo, new MessageCallbackWrapper(v2TIMSendCallback));
    }

    public static void sendC2CMessage(String str, boolean z10, V2TIMMessage v2TIMMessage, V2TIMOfflinePushInfo v2TIMOfflinePushInfo, V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback) {
        TXIMUtils.setMessageFriendInfo(z10, v2TIMMessage);
        sendC2CMessage(str, v2TIMMessage, v2TIMOfflinePushInfo, v2TIMSendCallback);
    }

    public static void sendMessage(V2TIMConversation v2TIMConversation, V2TIMMessage v2TIMMessage) {
        sendMessage(v2TIMConversation, v2TIMMessage, null, null);
    }

    public static void sendMessage(V2TIMConversation v2TIMConversation, V2TIMMessage v2TIMMessage, V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback) {
        sendMessage(v2TIMConversation, v2TIMMessage, null, v2TIMSendCallback);
    }

    public static void sendMessage(V2TIMConversation v2TIMConversation, V2TIMMessage v2TIMMessage, V2TIMOfflinePushInfo v2TIMOfflinePushInfo, V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback) {
        if (v2TIMConversation == null) {
            return;
        }
        V2TIMManager.getMessageManager().sendMessage(v2TIMMessage, v2TIMConversation.getUserID(), v2TIMConversation.getGroupID(), 0, false, v2TIMOfflinePushInfo, new MessageCallbackWrapper(v2TIMSendCallback));
    }
}
