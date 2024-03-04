package com.huawei.hms.activity.internal;

import com.facebook.internal.NativeProtocol;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class ForegroundInnerHeader {
    private static final String TAG = "ForegroundInnerHeader";
    private String action;
    private int apkVersion;
    private String responseCallbackKey;

    public void fromJson(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.apkVersion = JsonUtil.getIntValue(jSONObject, "apkVersion");
            this.action = JsonUtil.getStringValue(jSONObject, NativeProtocol.WEB_DIALOG_ACTION);
            this.responseCallbackKey = JsonUtil.getStringValue(jSONObject, "responseCallbackKey");
        } catch (JSONException e10) {
            HMSLog.e(TAG, "fromJson failed: " + e10.getMessage());
        }
    }

    public String getAction() {
        return this.action;
    }

    public int getApkVersion() {
        return this.apkVersion;
    }

    public String getResponseCallbackKey() {
        return this.responseCallbackKey;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setApkVersion(int i9) {
        this.apkVersion = i9;
    }

    public void setResponseCallbackKey(String str) {
        this.responseCallbackKey = str;
    }

    public String toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("apkVersion", this.apkVersion);
            jSONObject.put(NativeProtocol.WEB_DIALOG_ACTION, this.action);
            jSONObject.put("responseCallbackKey", this.responseCallbackKey);
        } catch (JSONException e10) {
            HMSLog.e(TAG, "ForegroundInnerHeader toJson failed: " + e10.getMessage());
        }
        return jSONObject.toString();
    }

    public String toString() {
        return "apkVersion:" + this.apkVersion + ", action:" + this.action + ", responseCallbackKey:" + this.responseCallbackKey;
    }
}
