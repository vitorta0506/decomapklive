package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import android.text.TextUtils;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class FaceMessage extends a implements d {
    private String mFaceId;
    private String mFaceUrl;
    private boolean mIsSayHi;

    public FaceMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
        parseData(v2TIMMessage.getCustomElem().getData());
    }

    public static FaceMessage from(ResourceListItemBean resourceListItemBean) {
        return from(resourceListItemBean.getDownloadUrl(), String.valueOf(resourceListItemBean.getId()));
    }

    private void parseData(byte[] bArr) {
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            this.mFaceUrl = jSONObject.optString("faceUrl");
            this.mFaceId = jSONObject.optString("faceId");
            boolean z10 = true;
            if (jSONObject.optInt("isSayHi") != 1) {
                z10 = false;
            }
            this.mIsSayHi = z10;
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public String getFaceUrl() {
        return this.mFaceUrl;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        return isSelf() ? 15 : 16;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary(Context context) {
        if (TextUtils.isEmpty(getTransformedOtherLanguage())) {
            return context.getString(R.string.summery_stickers);
        }
        String str = getTransformedOtherLanguage() + "_emoji";
        Map<String, String> map = a.MESSAGE_TIPS_MULTI_LANGUAGE;
        if (map.containsKey(str)) {
            String str2 = map.get(str);
            if (!TextUtils.isEmpty(str2)) {
                return str2;
            }
        }
        return context.getString(R.string.summery_stickers);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.d
    public boolean isSayHi() {
        return this.mIsSayHi;
    }

    public void setFaceUrl(String str) {
        this.mFaceUrl = str;
    }

    public void setSayHi(boolean z10) {
        this.mIsSayHi = z10;
    }

    public static FaceMessage from(String str, String str2) {
        return from(str, str2, false);
    }

    public static FaceMessage from(String str, String str2, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("faceUrl", str);
            jSONObject.put("faceId", str2);
            jSONObject.put("msg_type", 6);
            jSONObject.put("isSayHi", z10 ? 1 : 0);
            return new FaceMessage(V2TIMManager.getMessageManager().createCustomMessage(jSONObject.toString().getBytes()));
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
