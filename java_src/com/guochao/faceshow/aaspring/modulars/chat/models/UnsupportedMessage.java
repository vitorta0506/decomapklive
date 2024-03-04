package com.guochao.faceshow.aaspring.modulars.chat.models;

import com.tencent.imsdk.v2.V2TIMManager;
/* loaded from: classes3.dex */
public class UnsupportedMessage extends TextMessage {
    public UnsupportedMessage(String str) {
        super(V2TIMManager.getMessageManager().createTextMessage(str));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean isSelf() {
        return false;
    }
}
