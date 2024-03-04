package com.guochao.faceshow.aaspring.modulars.chat.models;

import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class InputtingMessage extends TipsMessage {
    public InputtingMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean isOnlineMessage() {
        return true;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.TipsMessage, com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean shouldAddToServer() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.TipsMessage, com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean showNotification() {
        return false;
    }

    public InputtingMessage() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("msg_type", 4);
            jSONObject.put("msg_text", "");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        this.message = V2TIMManager.getMessageManager().createCustomMessage(jSONObject.toString().getBytes());
    }
}
