package com.guochao.faceshow.aaspring.modulars.chat.models;

import x8.c;
/* loaded from: classes3.dex */
public class HelloMessage<M extends x8.c<?>> extends a {
    M mModel;

    public HelloMessage(M m10) {
        this.mModel = m10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean isOnlineMessage() {
        return true;
    }

    public M getWrappedMessage() {
        return this.mModel;
    }
}
