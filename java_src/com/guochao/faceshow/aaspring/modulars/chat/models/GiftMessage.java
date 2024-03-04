package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.facetoface.data.F2FCommonJson;
import com.guochao.faceshow.facetoface.data.GiftData;
import com.guochao.faceshow.utils.Contants;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class GiftMessage extends BaseCustomMessage {
    private int isTrtcGift;
    private GiftData.GiftItemData mGiftInfo;

    /* loaded from: classes3.dex */
    class a extends TypeToken<F2FCommonJson<Map<String, String>>> {
        a() {
        }
    }

    public GiftMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.util.HashMap] */
    public static GiftMessage from(GiftData.GiftItemData giftItemData, String str, String str2, int i9) {
        String str3;
        F2FCommonJson f2FCommonJson = new F2FCommonJson();
        f2FCommonJson.cmd = CustomMessage.C2C_SEND_GIFT_CMD;
        ?? hashMap = new HashMap();
        f2FCommonJson.msg = hashMap;
        ((Map) hashMap).put("senderId", SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID));
        ((Map) f2FCommonJson.msg).put("senderName", SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_NICKNAME));
        ((Map) f2FCommonJson.msg).put("recieverName", str);
        ((Map) f2FCommonJson.msg).put("recieverId", str2);
        ((Map) f2FCommonJson.msg).put("isTrtcGift", String.valueOf(i9));
        ((Map) f2FCommonJson.msg).put("giftInfo", new Gson().toJson(giftItemData));
        try {
            str3 = new Gson().toJson(f2FCommonJson, new a().getType());
        } catch (Exception e10) {
            e10.printStackTrace();
            str3 = "";
        }
        GiftMessage giftMessage = new GiftMessage(V2TIMManager.getMessageManager().createCustomMessage(str3.getBytes(StandardCharsets.UTF_8)));
        giftMessage.setGiftInfo(giftItemData);
        giftMessage.setTrtcGift(i9);
        return giftMessage;
    }

    public GiftData.GiftItemData getGiftInfo() {
        return this.mGiftInfo;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        return isSelf() ? 6 : 5;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary(Context context) {
        if (TextUtils.isEmpty(getTransformedOtherLanguage())) {
            return context.getString(R.string.gift_summary);
        }
        String str = getTransformedOtherLanguage() + "_gift";
        Map<String, String> map = com.guochao.faceshow.aaspring.modulars.chat.models.a.MESSAGE_TIPS_MULTI_LANGUAGE;
        if (map.containsKey(str)) {
            String str2 = map.get(str);
            if (!TextUtils.isEmpty(str2)) {
                return str2;
            }
        }
        return context.getString(R.string.gift_summary);
    }

    public boolean isAnimationPlayed() {
        return this.message.getLocalCustomInt() == 1;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean isOnlineMessage() {
        return this.isTrtcGift == 1;
    }

    public boolean isTrtcGift() {
        return this.isTrtcGift == 1;
    }

    public void setAnimationPlayed() {
        this.message.setLocalCustomInt(1);
    }

    public void setGiftInfo(GiftData.GiftItemData giftItemData) {
        this.mGiftInfo = giftItemData;
    }

    public void setTrtcGift(int i9) {
        this.isTrtcGift = i9;
    }
}
