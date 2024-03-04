package com.guochao.faceshow.aaspring.modulars.chat.models;

import com.tencent.imsdk.v2.V2TIMMessage;
/* loaded from: classes3.dex */
public abstract class BaseCustomMessage extends a {
    private String mReceiverId;
    private String mReceiverName;
    private String mSenderId;
    private String mSenderName;

    public BaseCustomMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
    }

    public String getReceiverId() {
        return this.mReceiverId;
    }

    public String getReceiverName() {
        return this.mReceiverName;
    }

    public String getSenderId() {
        return this.mSenderId;
    }

    public String getSenderName() {
        return this.mSenderName;
    }

    public void setReceiverId(String str) {
        this.mReceiverId = str;
    }

    public void setReceiverName(String str) {
        this.mReceiverName = str;
    }

    public void setSenderId(String str) {
        this.mSenderId = str;
    }

    public void setSenderName(String str) {
        this.mSenderName = str;
    }

    public BaseCustomMessage() {
    }
}
