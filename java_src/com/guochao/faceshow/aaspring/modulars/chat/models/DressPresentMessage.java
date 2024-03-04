package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import com.guochao.faceshow.R;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class DressPresentMessage extends a {
    private String dressIconUrl;
    private String dressId;
    private int dressType;

    public DressPresentMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
        parseMessage(v2TIMMessage);
    }

    public static DressPresentMessage from(int i9, String str, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("dress_share", 1);
            jSONObject.put("dressType", i9);
            jSONObject.put("dressId", str);
            jSONObject.put("dressIconUrl", str2);
            jSONObject.put("arDressIconUrl", str3);
            jSONObject.put("msg_type", 5000);
            jSONObject.put("msg_text", "Version is too low to view");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return new DressPresentMessage(V2TIMManager.getMessageManager().createCustomMessage(jSONObject.toString().getBytes(StandardCharsets.UTF_8)));
    }

    private void parseMessage(V2TIMMessage v2TIMMessage) {
        try {
            JSONObject jSONObject = new JSONObject(new String(v2TIMMessage.getCustomElem().getData()));
            if (q7.a.e().j()) {
                this.dressIconUrl = jSONObject.optString("arDressIconUrl");
            } else {
                this.dressIconUrl = jSONObject.optString("dressIconUrl");
            }
            this.dressId = jSONObject.optString("dressId");
            this.dressType = jSONObject.optInt("dressType");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public String getDressIconUrl() {
        return this.dressIconUrl;
    }

    public String getDressId() {
        return this.dressId;
    }

    public int getDressType() {
        return this.dressType;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a, com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        return isSelf() ? 27 : 28;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary(Context context) {
        int i9 = this.dressType;
        return i9 != 1 ? i9 != 2 ? String.format("[%s]%s", context.getString(R.string.dress_market_zuojia_present), context.getString(R.string.dress_market_zuojia_present1)) : String.format("[%s]%s", context.getString(R.string.dress_market_mask_present), context.getString(R.string.dress_market_mask_present1)) : String.format("[%s]%s", context.getString(R.string.dress_market_avatar_present), context.getString(R.string.dress_market_avatar_present1));
    }

    public void setDressIconUrl(String str) {
        this.dressIconUrl = str;
    }

    public void setDressId(String str) {
        this.dressId = str;
    }

    public void setDressType(int i9) {
        this.dressType = i9;
    }
}
