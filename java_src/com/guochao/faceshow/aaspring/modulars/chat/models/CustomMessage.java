package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.facetoface.data.F2FCommonJson;
import com.tencent.imsdk.v2.V2TIMCustomElem;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class CustomMessage extends com.guochao.faceshow.aaspring.modulars.chat.models.a {
    public static final String C2C_SEND_FSX1_CMD = "c2c_fsx1";
    public static final String C2C_SEND_GIFT_CMD = "c2c_gift";
    public static final String ONE_TO_ONE = "122";
    public static final String ONE_TO_ONE_GIFT = "121";
    public static final String TYPE_CARD = "120";
    public static final String TYPE_GIF = "114";
    public static final String TYPE_GIFT = "115";
    public static final String TYPE_MUSIC = "119";
    public static final String TYPE_TYPING = "14";
    private String TAG;
    private String c2cPrivateChatGiftInfo;
    private String c2cPrivateChatGiftRecieverId;
    public String c2cPrivateChatGiftRecieverName;
    private String c2cPrivateChatGiftSendId;
    private String c2cPrivateChatGiftSendName;
    private String c2cPrivateChatMsgTips;
    private String data;
    private String desc;
    private String gift;
    private String giftUrl;
    private String imgurl;
    private String musicImg;
    private String style;
    public Type type;
    private int width;

    /* loaded from: classes3.dex */
    public enum Type {
        TYPING,
        INVALID,
        GIF,
        GIFT,
        MUSIC,
        CARD,
        C2C_SEND_GIFT,
        C2C_SEND_FSX1
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends TypeToken<F2FCommonJson<JsonElement>> {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends TypeToken<Map<String, JsonElement>> {
        b() {
        }
    }

    public CustomMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
        this.TAG = getClass().getSimpleName();
        this.gift = "";
        this.imgurl = "";
        V2TIMCustomElem customElem = v2TIMMessage.getCustomElem();
        if (parsePrivateChatSendGiftMsg(customElem.getData())) {
            return;
        }
        parse(customElem.getData());
    }

    private void parse(byte[] bArr) {
        Type type = Type.INVALID;
        this.type = type;
        if (bArr != null) {
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr, StandardCharsets.UTF_8));
                String optString = jSONObject.optString("userAction");
                char c10 = 65535;
                switch (optString.hashCode()) {
                    case 1571:
                        if (optString.equals(TYPE_TYPING)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 48660:
                        if (optString.equals(TYPE_GIF)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 48661:
                        if (optString.equals(TYPE_GIFT)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 48665:
                        if (optString.equals(TYPE_MUSIC)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 48687:
                        if (optString.equals(TYPE_CARD)) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                if (c10 == 0) {
                    this.type = Type.TYPING;
                    String string = jSONObject.getString("actionParam");
                    this.data = string;
                    if (string.equals("EIMAMSG_InputStatus_End")) {
                        this.type = type;
                    }
                } else if (c10 == 1) {
                    this.type = Type.GIF;
                } else if (c10 == 2) {
                    this.type = Type.GIFT;
                } else if (c10 == 3) {
                    this.type = Type.MUSIC;
                } else if (c10 != 4) {
                } else {
                    this.type = Type.CARD;
                }
            } catch (JSONException unused) {
                Log.e(this.TAG, "parse json error");
            }
        }
    }

    public String getC2cPrivateChatGiftInfo() {
        return this.c2cPrivateChatGiftInfo;
    }

    public String getC2cPrivateChatGiftRecieverName() {
        return this.c2cPrivateChatGiftRecieverName;
    }

    public String getC2cPrivateChatMsgTips() {
        return this.c2cPrivateChatMsgTips;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        if (this.type != Type.C2C_SEND_GIFT || TextUtils.isEmpty(this.c2cPrivateChatGiftInfo)) {
            return super.getItemViewType();
        }
        return isSelf() ? 6 : 5;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary(Context context) {
        Type type = this.type;
        if (type == Type.GIF) {
            return "[gif]";
        }
        if (type == Type.GIFT) {
            return context.getString(R.string.gift_summary);
        }
        return (type != Type.TYPING && type == Type.C2C_SEND_GIFT) ? context.getString(R.string.gift_summary) : "";
    }

    public Type getType() {
        return this.type;
    }

    public boolean parsePrivateChatSendGiftMsg(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        try {
            F2FCommonJson f2FCommonJson = (F2FCommonJson) new Gson().fromJson(new String(bArr), new a().getType());
            if (f2FCommonJson == null) {
                return false;
            }
            if (C2C_SEND_GIFT_CMD.equals(f2FCommonJson.cmd) || C2C_SEND_FSX1_CMD.equals(f2FCommonJson.cmd)) {
                if (C2C_SEND_GIFT_CMD.equals(f2FCommonJson.cmd)) {
                    this.type = Type.C2C_SEND_GIFT;
                }
                if (C2C_SEND_FSX1_CMD.equals(f2FCommonJson.cmd)) {
                    this.type = Type.C2C_SEND_FSX1;
                }
                Map map = null;
                try {
                    map = (Map) new Gson().fromJson((JsonElement) f2FCommonJson.msg, new b().getType());
                } catch (JsonSyntaxException e10) {
                    e10.printStackTrace();
                }
                if (map == null) {
                    return false;
                }
                try {
                    this.c2cPrivateChatGiftSendId = ((JsonElement) map.get("senderId")).getAsJsonPrimitive().getAsString();
                    this.c2cPrivateChatGiftSendName = ((JsonElement) map.get("senderName")).getAsJsonPrimitive().getAsString();
                    this.c2cPrivateChatGiftRecieverId = ((JsonElement) map.get("recieverId")).getAsJsonPrimitive().getAsString();
                    this.c2cPrivateChatGiftRecieverName = ((JsonElement) map.get("recieverName")).getAsJsonPrimitive().getAsString();
                    if (map.get("giftInfo") != null) {
                        this.c2cPrivateChatGiftInfo = ((JsonElement) map.get("giftInfo")).getAsJsonPrimitive().getAsString();
                    }
                    if (map.get("msg_text") != null) {
                        this.c2cPrivateChatMsgTips = ((JsonElement) map.get("msg_text")).getAsJsonPrimitive().getAsString();
                        return true;
                    }
                    return true;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return false;
                }
            }
            return false;
        } catch (JsonSyntaxException e12) {
            e12.printStackTrace();
            return false;
        }
    }

    public void setType(Type type) {
        this.type = type;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean showNotification() {
        Type type = this.type;
        if (type == Type.TYPING || type == Type.INVALID || type == Type.CARD) {
            return false;
        }
        return super.showNotification();
    }
}
