package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.im_messages.GCIMMessageFactoryRegister;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCSignalMessage;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCVideoCustomMessage;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCVoiceCustomMessage;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.facetoface.data.F2FCommonJson;
import com.guochao.faceshow.facetoface.data.GiftData;
import com.tencent.imsdk.v2.V2TIMCustomElem;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends TypeToken<F2FCommonJson<JsonElement>> {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.aaspring.modulars.chat.models.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0161b extends TypeToken<Map<String, JsonElement>> {
        C0161b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends TypeToken<F2FCommonJson<JsonElement>> {
        c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends TypeToken<Map<String, JsonElement>> {
        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends TypeToken<F2FCommonJson<JsonElement>> {
        e() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends TypeToken<Map<String, JsonElement>> {
        f() {
        }
    }

    private static com.guochao.faceshow.aaspring.modulars.chat.models.a a(V2TIMMessage v2TIMMessage, String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("f2f_cmd")) {
                return new F2fCmdMessage(jSONObject.getString("f2f_cmd"), v2TIMMessage);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private static com.guochao.faceshow.aaspring.modulars.chat.models.a b(V2TIMMessage v2TIMMessage, byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            if (jSONObject.has("msg_type")) {
                try {
                    int i9 = jSONObject.getInt("msg_type");
                    if (i9 != 4) {
                        if (i9 == 6) {
                            if (jSONObject.has("msgText")) {
                                return new TextMessage(v2TIMMessage, true);
                            }
                            return new FaceMessage(v2TIMMessage);
                        } else if (i9 != 3000) {
                            if (i9 != 4000) {
                                if (i9 != 5000) {
                                    return new TipsMessage(v2TIMMessage);
                                }
                                return new DressPresentMessage(v2TIMMessage);
                            }
                            return new LiveShareMessage(v2TIMMessage);
                        } else {
                            return c(v2TIMMessage, bArr);
                        }
                    }
                    return new InputtingMessage(v2TIMMessage);
                } catch (Exception unused) {
                }
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return null;
    }

    private static com.guochao.faceshow.aaspring.modulars.chat.models.a c(V2TIMMessage v2TIMMessage, byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            if (new JSONObject(new String(bArr)).optInt("game_invite", -1) != -1) {
                LiveGameInviteMessage liveGameInviteMessage = new LiveGameInviteMessage(v2TIMMessage);
                if (v2TIMMessage.isSelf()) {
                    ConversationInfo b10 = com.guochao.faceshow.aaspring.manager.im.b.l0().b(v2TIMMessage.getUserID());
                    if (b10 != null && b10.getConversationInfoDetail() != null) {
                        liveGameInviteMessage.setUserName(b10.getConversationInfoDetail().getNickName());
                    } else {
                        liveGameInviteMessage.setUserName(v2TIMMessage.getNickName());
                    }
                } else {
                    liveGameInviteMessage.setUserName(b8.e.g().c().getUserName());
                }
                liveGameInviteMessage.parseMsg();
                return liveGameInviteMessage;
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return null;
    }

    private static GiftMessage d(V2TIMMessage v2TIMMessage, byte[] bArr) {
        Map map;
        JsonElement jsonElement;
        if (bArr == null) {
            return null;
        }
        try {
            F2FCommonJson f2FCommonJson = (F2FCommonJson) new Gson().fromJson(new String(bArr), new e().getType());
            if (f2FCommonJson != null && CustomMessage.C2C_SEND_GIFT_CMD.equals(f2FCommonJson.cmd)) {
                try {
                    map = (Map) new Gson().fromJson((JsonElement) f2FCommonJson.msg, new f().getType());
                } catch (JsonSyntaxException e10) {
                    e10.printStackTrace();
                    map = null;
                }
                if (map == null) {
                    return null;
                }
                try {
                    GiftMessage giftMessage = new GiftMessage(v2TIMMessage);
                    String str = "";
                    String asString = map.get("senderId") == null ? "" : ((JsonElement) map.get("senderId")).getAsJsonPrimitive().getAsString();
                    String asString2 = map.get("senderName") == null ? "" : ((JsonElement) map.get("senderName")).getAsJsonPrimitive().getAsString();
                    String asString3 = map.get("recieverId") == null ? "" : ((JsonElement) map.get("recieverId")).getAsJsonPrimitive().getAsString();
                    if (map.get("recieverName") != null) {
                        str = ((JsonElement) map.get("recieverName")).getAsJsonPrimitive().getAsString();
                    }
                    if (map.containsKey("isTrtcGift") && (jsonElement = (JsonElement) map.get("isTrtcGift")) != null) {
                        giftMessage.setTrtcGift(jsonElement.getAsJsonPrimitive().getAsInt());
                    }
                    giftMessage.setSenderId(asString);
                    giftMessage.setSenderName(asString2);
                    giftMessage.setReceiverId(asString3);
                    giftMessage.setReceiverName(str);
                    if (map.get("giftInfo") != null) {
                        giftMessage.setGiftInfo((GiftData.GiftItemData) new Gson().fromJson(((JsonElement) map.get("giftInfo")).getAsJsonPrimitive().getAsString(), (Class<Object>) GiftData.GiftItemData.class));
                    }
                    return giftMessage;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return null;
                }
            }
            return null;
        } catch (JsonSyntaxException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    private static com.guochao.faceshow.aaspring.modulars.chat.models.a e(V2TIMMessage v2TIMMessage, byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            if (jSONObject.has("messageType")) {
                try {
                    int i9 = jSONObject.getInt("messageType");
                    int i10 = jSONObject.getInt("type");
                    if (i9 == 0) {
                        if (i10 == 310 && jSONObject.has("content")) {
                            LogUtils.d("24HourMessage", jSONObject.getString("content"));
                            return new TextMessage(v2TIMMessage, false, true);
                        } else if (i10 == 235) {
                            LiveInviteMessage liveInviteMessage = new LiveInviteMessage(v2TIMMessage);
                            liveInviteMessage.parseMsg();
                            return liveInviteMessage;
                        } else {
                            return new TextMessage(v2TIMMessage);
                        }
                    }
                    return null;
                } catch (Exception unused) {
                }
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return null;
    }

    private static com.guochao.faceshow.aaspring.modulars.chat.models.a f(V2TIMMessage v2TIMMessage, byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            if (jSONObject.has(NotificationCompat.CATEGORY_CALL) && TRTCSignalMessage.CALL_CMD.equals(jSONObject.get(NotificationCompat.CATEGORY_CALL))) {
                try {
                    if (!jSONObject.has("msg")) {
                        return null;
                    }
                    JSONObject jSONObject2 = jSONObject.getJSONObject("msg");
                    if (jSONObject2.has("actionType") && jSONObject2.getInt("actionType") > 0) {
                        return new TRTCSignalMessage(v2TIMMessage);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private static com.guochao.faceshow.aaspring.modulars.chat.models.a g(V2TIMMessage v2TIMMessage, String str) {
        try {
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        if (v2TIMMessage.getGroupID() == null || !v2TIMMessage.getGroupID().startsWith("live_voice")) {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("type") || jSONObject.has("type_id")) {
                if (jSONObject.has("type")) {
                    return new SystemNotifyMessage(v2TIMMessage, jSONObject.getString("type"), jSONObject);
                }
                if (jSONObject.has("type_id")) {
                    return new SystemNotifyMessage(v2TIMMessage, jSONObject.getString("type_id"), jSONObject);
                }
                return null;
            }
            return null;
        }
        return null;
    }

    private static com.guochao.faceshow.aaspring.modulars.chat.models.a h(V2TIMMessage v2TIMMessage, byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            if (jSONObject.has("call_type")) {
                try {
                    int i9 = jSONObject.getInt("call_type");
                    int i10 = jSONObject.has("trtc_type") ? jSONObject.getInt("trtc_type") : 0;
                    if (i9 != 1 || i10 <= 0) {
                        if (i9 != 2 || i10 <= 0) {
                            if (i9 == 3) {
                                return new TrtcTextMessage(v2TIMMessage);
                            }
                            return null;
                        }
                        return new TRTCVideoCustomMessage(v2TIMMessage);
                    }
                    return new TRTCVoiceCustomMessage(v2TIMMessage);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private static com.guochao.faceshow.aaspring.modulars.chat.models.a i(V2TIMMessage v2TIMMessage, byte[] bArr) {
        Map map;
        if (bArr == null) {
            return null;
        }
        try {
            F2FCommonJson f2FCommonJson = (F2FCommonJson) new Gson().fromJson(new String(bArr), new c().getType());
            if (f2FCommonJson == null) {
                return null;
            }
            try {
                map = (Map) new Gson().fromJson((JsonElement) f2FCommonJson.msg, new d().getType());
            } catch (JsonSyntaxException e10) {
                e10.printStackTrace();
                map = null;
            }
            if (!CustomMessage.C2C_SEND_FSX1_CMD.equals(f2FCommonJson.cmd) || TextUtils.isEmpty(((JsonElement) map.get("msg_type")).getAsJsonPrimitive().getAsString())) {
                return null;
            }
            return new TipsMessage(v2TIMMessage);
        } catch (Exception unused) {
        }
        return null;
    }

    private static com.guochao.faceshow.aaspring.modulars.chat.models.a j(V2TIMMessage v2TIMMessage) {
        V2TIMCustomElem customElem = v2TIMMessage.getCustomElem();
        if (customElem.getData() == null) {
            return null;
        }
        String str = new String(customElem.getData(), StandardCharsets.UTF_8);
        LiveMessageModel parseModel = customElem.getData() != null ? LiveMessageModelFactory.parseModel(str) : null;
        if (parseModel != null) {
            LiveMessage liveMessage = new LiveMessage(parseModel);
            if (parseModel.getData() != null && TextUtils.isEmpty(parseModel.getData().getRoomId())) {
                parseModel.getData().setRoomId(v2TIMMessage.getGroupID());
            }
            liveMessage.message = v2TIMMessage;
            return liveMessage;
        }
        GiftMessage d10 = d(v2TIMMessage, customElem.getData());
        if (d10 != null) {
            return d10;
        }
        com.guochao.faceshow.aaspring.modulars.chat.models.a h10 = h(v2TIMMessage, customElem.getData());
        if (h10 != null) {
            return h10;
        }
        com.guochao.faceshow.aaspring.modulars.chat.models.a f10 = f(v2TIMMessage, customElem.getData());
        if (f10 != null) {
            return f10;
        }
        com.guochao.faceshow.aaspring.modulars.chat.models.a b10 = b(v2TIMMessage, customElem.getData());
        if (b10 != null) {
            return b10;
        }
        com.guochao.faceshow.aaspring.modulars.chat.models.a e10 = e(v2TIMMessage, customElem.getData());
        if (e10 != null) {
            return e10;
        }
        com.guochao.faceshow.aaspring.modulars.chat.models.a i9 = i(v2TIMMessage, customElem.getData());
        if (i9 != null) {
            return i9;
        }
        com.guochao.faceshow.aaspring.modulars.chat.models.a g10 = g(v2TIMMessage, str);
        if (g10 != null) {
            return g10;
        }
        com.guochao.faceshow.aaspring.modulars.chat.models.a a10 = a(v2TIMMessage, str);
        if (a10 != null) {
            return a10;
        }
        x8.c<?> a11 = x8.d.a(str);
        if (a11 != null) {
            return new HelloMessage(a11);
        }
        return new CustomMessage(v2TIMMessage);
    }

    @Deprecated
    public static com.guochao.faceshow.aaspring.modulars.chat.models.a k(V2TIMMessage v2TIMMessage) {
        com.guochao.faceshow.aaspring.modulars.chat.models.a n9 = n(v2TIMMessage);
        if (n9 != null) {
            if (!TextUtils.isEmpty(v2TIMMessage.getUserID())) {
                n9.setConversationType(1);
                n9.setConversationId(v2TIMMessage.getUserID());
            } else {
                n9.setConversationType(2);
                n9.setConversationId(v2TIMMessage.getGroupID());
            }
        }
        return n9;
    }

    private static CustomMessage l(V2TIMMessage v2TIMMessage, byte[] bArr) {
        F2FCommonJson f2FCommonJson;
        if (bArr == null) {
            return null;
        }
        try {
            f2FCommonJson = (F2FCommonJson) new Gson().fromJson(new String(bArr), new a().getType());
        } catch (Exception unused) {
        }
        if (f2FCommonJson == null) {
            return null;
        }
        try {
            Map map = (Map) new Gson().fromJson((JsonElement) f2FCommonJson.msg, new C0161b().getType());
            if (CustomMessage.C2C_SEND_FSX1_CMD.equals(f2FCommonJson.cmd) && f2FCommonJson.msg_type == 0 && !map.containsKey("msg_type")) {
                return new CustomMessage(v2TIMMessage);
            }
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
        }
        return null;
    }

    public static o7.a m(V2TIMMessage v2TIMMessage) {
        o7.a create = new GCIMMessageFactoryRegister().create(v2TIMMessage);
        return create != null ? create : k(v2TIMMessage);
    }

    @Nullable
    private static com.guochao.faceshow.aaspring.modulars.chat.models.a n(V2TIMMessage v2TIMMessage) {
        if (v2TIMMessage == null) {
            return TextMessage.from("");
        }
        if (v2TIMMessage.getElemType() == 0) {
            return TextMessage.from("");
        }
        int elemType = v2TIMMessage.getElemType();
        if (elemType != 1) {
            if (elemType != 2) {
                if (elemType != 3) {
                    if (elemType != 4) {
                        if (elemType != 5) {
                            if (elemType != 9) {
                                return null;
                            }
                            v2TIMMessage.getGroupTipsElem().getType();
                            return null;
                        }
                        return new VideoMessage(v2TIMMessage);
                    }
                    return new VoiceMessage(v2TIMMessage);
                }
                return new ImageMessage(v2TIMMessage);
            }
            V2TIMCustomElem customElem = v2TIMMessage.getCustomElem();
            if (customElem == null || customElem.getData() == null) {
                return null;
            }
            com.guochao.faceshow.aaspring.modulars.chat.models.a g10 = fb.a.e(v2TIMMessage.getUserID()) ? g(v2TIMMessage, new String(customElem.getData())) : null;
            if (g10 != null) {
                return g10;
            }
            if (l(v2TIMMessage, customElem.getData()) != null) {
                return null;
            }
            com.guochao.faceshow.aaspring.modulars.chat.models.a j10 = j(v2TIMMessage);
            return j10 != null ? j10 : new UnsupportedMessage(BaseApplication.getInstance().getString(R.string.Version_too_low_to_view));
        }
        return new TextMessage(v2TIMMessage);
    }
}
