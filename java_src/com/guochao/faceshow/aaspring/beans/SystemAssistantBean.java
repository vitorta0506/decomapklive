package com.guochao.faceshow.aaspring.beans;

import com.guochao.faceshow.systemassistant.data.AssistantMsgResult;
/* loaded from: classes3.dex */
public class SystemAssistantBean {
    private int code;
    private AssistantMsgResult.AssistantMessage msg;

    public int getCode() {
        return this.code;
    }

    public AssistantMsgResult.AssistantMessage getMsg() {
        return this.msg;
    }

    public void setCode(int i9) {
        this.code = i9;
    }

    public void setMsg(AssistantMsgResult.AssistantMessage assistantMessage) {
        this.msg = assistantMessage;
    }
}
