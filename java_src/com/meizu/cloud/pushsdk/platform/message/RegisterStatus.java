package com.meizu.cloud.pushsdk.platform.message;

import com.meizu.cloud.pushsdk.constants.PushConstants;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class RegisterStatus extends BasicPushStatus {
    private int expireTime;
    private String pushId;

    public RegisterStatus() {
    }

    public RegisterStatus(String str) {
        super(str);
    }

    public int getExpireTime() {
        return this.expireTime;
    }

    public String getPushId() {
        return this.pushId;
    }

    @Override // com.meizu.cloud.pushsdk.platform.message.BasicPushStatus
    public void parseValueData(JSONObject jSONObject) throws JSONException {
        if (!jSONObject.isNull(PushConstants.KEY_PUSH_ID)) {
            setPushId(jSONObject.getString(PushConstants.KEY_PUSH_ID));
        }
        if (jSONObject.isNull("expireTime")) {
            return;
        }
        setExpireTime(jSONObject.getInt("expireTime"));
    }

    public void setExpireTime(int i9) {
        this.expireTime = i9;
    }

    public void setPushId(String str) {
        this.pushId = str;
    }

    @Override // com.meizu.cloud.pushsdk.platform.message.BasicPushStatus
    public String toString() {
        return super.toString() + "pushId='" + this.pushId + "', Become invalid after " + this.expireTime + " seconds }";
    }
}
