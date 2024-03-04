package com.guochao.faceshow.aaspring.modulars.trtc.message;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.guochao.faceshow.R;
import com.tencent.imsdk.v2.V2TIMCustomElem;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class TRTCVideoCustomMessage extends com.guochao.faceshow.aaspring.modulars.chat.models.a {
    public TRTCVideoCustomMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
    }

    private static V2TIMMessage getTimMessage(int i9, int i10, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("call_type", 2);
            jSONObject.put("trtc_type", i9);
            jSONObject.put("matchLogId", str);
            jSONObject.put("call_time", i10);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return V2TIMManager.getMessageManager().createCustomMessage(jSONObject.toString().getBytes(StandardCharsets.UTF_8));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        return isSelf() ? 21 : 22;
    }

    public String getMatchLogId() {
        V2TIMCustomElem customElem = getMessage().getCustomElem();
        if (customElem != null) {
            try {
                JSONObject jSONObject = new JSONObject(new String(customElem.getData()));
                if (jSONObject.has(AnalyticsEvents.PARAMETER_CALL_ID)) {
                    return jSONObject.getString(AnalyticsEvents.PARAMETER_CALL_ID);
                }
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public String getOfflinePushSummary(Context context) {
        V2TIMCustomElem customElem = getMessage().getCustomElem();
        String str = null;
        if (customElem != null) {
            try {
                JSONObject jSONObject = new JSONObject(new String(customElem.getData()));
                if (jSONObject.has("call_type")) {
                    int i9 = jSONObject.has("trtc_type") ? jSONObject.getInt("trtc_type") : 0;
                    if (i9 == 3 || i9 == 1) {
                        str = context.getString(R.string.trtc_missed_call);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return TextUtils.isEmpty(str) ? getSummary(context) : str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary(Context context) {
        V2TIMCustomElem customElem = getMessage().getCustomElem();
        String str = null;
        if (customElem != null) {
            try {
                JSONObject jSONObject = new JSONObject(new String(customElem.getData()));
                if (jSONObject.has("call_type")) {
                    int i9 = jSONObject.has("trtc_type") ? jSONObject.getInt("trtc_type") : 0;
                    if (i9 == 3 || i9 == 1 || i9 == 2) {
                        str = context.getString(R.string.trtc_missed_call);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (TextUtils.isEmpty(getTransformedOtherLanguage())) {
            if (TextUtils.isEmpty(str)) {
                return "[" + context.getString(R.string.trtc_video_call) + "]";
            }
            return str;
        }
        String str2 = getTransformedOtherLanguage() + "_video";
        Map<String, String> map = com.guochao.faceshow.aaspring.modulars.chat.models.a.MESSAGE_TIPS_MULTI_LANGUAGE;
        if (map.containsKey(str2)) {
            String str3 = map.get(str2);
            if (!TextUtils.isEmpty(str3)) {
                return str3;
            }
        }
        if (TextUtils.isEmpty(str)) {
            return "[" + context.getString(R.string.trtc_video_call) + "]";
        }
        return str;
    }

    public TRTCVideoCustomMessage(int i9, int i10, String str) {
        super(getTimMessage(i9, i10, str));
    }
}
