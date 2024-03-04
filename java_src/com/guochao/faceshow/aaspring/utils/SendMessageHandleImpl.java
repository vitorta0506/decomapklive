package com.guochao.faceshow.aaspring.utils;

import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import com.tencent.imsdk.v2.V2TIMSendCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class SendMessageHandleImpl {
    private static final int LIMIT_SEND_COUNT = 3;
    private int mRetryCount = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendMessageV2(final String str, final String str2, final V2TIMMessage v2TIMMessage, final int i9, final V2TIMCallback v2TIMCallback) {
        this.mRetryCount++;
        sendMessageV2(str, str2, v2TIMMessage, i9, false, new V2TIMCallback() { // from class: com.guochao.faceshow.aaspring.utils.SendMessageHandleImpl.1
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i10, String str3) {
                if (SendMessageHandleImpl.this.mRetryCount <= 3) {
                    SendMessageHandleImpl.this.sendMessageV2(str, str2, v2TIMMessage, i9, v2TIMCallback);
                    return;
                }
                V2TIMCallback v2TIMCallback2 = v2TIMCallback;
                if (v2TIMCallback2 != null) {
                    v2TIMCallback2.onError(i10, str3);
                }
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
                V2TIMCallback v2TIMCallback2 = v2TIMCallback;
                if (v2TIMCallback2 != null) {
                    v2TIMCallback2.onSuccess();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendOnlineMessageV2(String str, String str2, V2TIMMessage v2TIMMessage, int i9, V2TIMCallback v2TIMCallback) {
        sendMessageV2(str, str2, v2TIMMessage, i9, true, v2TIMCallback);
    }

    private void sendMessageV2(String str, String str2, V2TIMMessage v2TIMMessage, int i9, boolean z10, final V2TIMCallback v2TIMCallback) {
        V2TIMManager.getMessageManager().sendMessage(v2TIMMessage, str, str2, i9, z10, new V2TIMOfflinePushInfo(), new V2TIMSendCallback<V2TIMMessage>() { // from class: com.guochao.faceshow.aaspring.utils.SendMessageHandleImpl.2
            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i10, String str3) {
                V2TIMCallback v2TIMCallback2 = v2TIMCallback;
                if (v2TIMCallback2 != null) {
                    v2TIMCallback2.onError(i10, str3);
                }
            }

            @Override // com.tencent.imsdk.v2.V2TIMSendCallback
            public void onProgress(int i10) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onSuccess(V2TIMMessage v2TIMMessage2) {
                V2TIMCallback v2TIMCallback2 = v2TIMCallback;
                if (v2TIMCallback2 != null) {
                    v2TIMCallback2.onSuccess();
                }
            }
        });
    }
}
