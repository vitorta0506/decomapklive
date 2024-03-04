package com.guochao.faceshow.aaspring.modulars.chat.models;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.facetoface.data.F2FCommonJson;
import com.guochao.faceshow.utils.Contants;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class TipsMessage extends BaseCustomMessage {
    private String mMessageText;
    private int mMessageType;

    /* loaded from: classes3.dex */
    class a extends TypeToken<F2FCommonJson> {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends TypeToken<F2FCommonJson<JsonElement>> {
        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends TypeToken<Map<String, JsonElement>> {
        c() {
        }
    }

    public TipsMessage() {
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [T, java.util.HashMap] */
    public static TipsMessage from(int i9, String str) {
        String str2 = "";
        if (i9 != 1) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("msg_type", i9);
                jSONObject.put("msg_text", str);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            str2 = jSONObject.toString();
        } else {
            F2FCommonJson f2FCommonJson = new F2FCommonJson();
            f2FCommonJson.cmd = CustomMessage.C2C_SEND_FSX1_CMD;
            ?? hashMap = new HashMap();
            f2FCommonJson.msg = hashMap;
            f2FCommonJson.msg_type = i9;
            ((Map) hashMap).put("senderId", SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID));
            ((Map) f2FCommonJson.msg).put("senderName", SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_NICKNAME));
            ((Map) f2FCommonJson.msg).put("recieverName", "");
            ((Map) f2FCommonJson.msg).put("recieverId", "");
            ((Map) f2FCommonJson.msg).put("msg_text", str);
            ((Map) f2FCommonJson.msg).put("msg_type", String.valueOf(i9));
            try {
                str2 = new Gson().toJson(f2FCommonJson, new a().getType());
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return new TipsMessage(V2TIMManager.getMessageManager().createCustomMessage(str2.getBytes()));
    }

    private void readMessage() {
        String str = new String(this.message.getCustomElem().getData());
        boolean z10 = false;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("msg_type")) {
                setMessageType(jSONObject.optInt("msg_type"));
                z10 = true;
            }
            if (jSONObject.has("msg_text")) {
                setMessageText(jSONObject.optString("msg_text"));
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        if (z10) {
            return;
        }
        F2FCommonJson f2FCommonJson = (F2FCommonJson) new Gson().fromJson(str, new b().getType());
        Map map = null;
        try {
            map = (Map) new Gson().fromJson((JsonElement) f2FCommonJson.msg, new c().getType());
        } catch (JsonSyntaxException e11) {
            e11.printStackTrace();
        }
        try {
            String asString = ((JsonElement) map.get("senderId")).getAsJsonPrimitive().getAsString();
            String asString2 = ((JsonElement) map.get("senderName")).getAsJsonPrimitive().getAsString();
            String asString3 = ((JsonElement) map.get("recieverId")).getAsJsonPrimitive().getAsString();
            String asString4 = ((JsonElement) map.get("recieverName")).getAsJsonPrimitive().getAsString();
            String asString5 = ((JsonElement) map.get("msg_text")).getAsJsonPrimitive().getAsString();
            setMessageType(Integer.parseInt(((JsonElement) map.get("msg_type")).getAsJsonPrimitive().getAsString()));
            setMessageText(asString5);
            setSenderId(asString);
            setSenderName(asString2);
            setReceiverId(asString3);
            setReceiverName(asString4);
        } catch (Exception unused) {
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        return isSelf() ? 8 : 7;
    }

    public String getMessageText() {
        return this.mMessageText;
    }

    public int getMessageType() {
        return this.mMessageType;
    }

    public void setMessageText(String str) {
        this.mMessageText = str;
    }

    public void setMessageType(int i9) {
        this.mMessageType = i9;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean shouldAddToServer() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean showNotification() {
        return false;
    }

    public TipsMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
        readMessage();
    }
}
