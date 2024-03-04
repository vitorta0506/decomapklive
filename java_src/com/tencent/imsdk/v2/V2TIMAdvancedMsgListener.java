package com.tencent.imsdk.v2;

import java.util.List;
/* loaded from: classes4.dex */
public abstract class V2TIMAdvancedMsgListener {
    public void onRecvC2CReadReceipt(List<V2TIMMessageReceipt> list) {
    }

    public void onRecvMessageExtensionsChanged(String str, List<V2TIMMessageExtension> list) {
    }

    public void onRecvMessageExtensionsDeleted(String str, List<String> list) {
    }

    public void onRecvMessageModified(V2TIMMessage v2TIMMessage) {
    }

    public void onRecvMessageReadReceipts(List<V2TIMMessageReceipt> list) {
    }

    public void onRecvMessageRevoked(String str) {
    }

    public void onRecvNewMessage(V2TIMMessage v2TIMMessage) {
    }
}
