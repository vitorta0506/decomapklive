package com.meizu.cloud.pushsdk.handler;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.ActVideoSetting;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class MessageV4 extends MessageV3 {
    public static final Parcelable.Creator<MessageV3> CREATOR = new Parcelable.Creator<MessageV3>() { // from class: com.meizu.cloud.pushsdk.handler.MessageV4.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MessageV4 createFromParcel(Parcel parcel) {
            return new MessageV4(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MessageV4[] newArray(int i9) {
            return new MessageV4[i9];
        }
    };
    private static final String TAG = "MessageV4";
    private ActVideoSetting actVideoSetting;

    public MessageV4() {
    }

    public MessageV4(Parcel parcel) {
        super(parcel);
        this.actVideoSetting = (ActVideoSetting) parcel.readParcelable(ActVideoSetting.class.getClassLoader());
    }

    public static MessageV4 parse(MessageV3 messageV3) {
        MessageV4 messageV4 = new MessageV4();
        if (!TextUtils.isEmpty(messageV3.getNotificationMessage())) {
            try {
                JSONObject jSONObject = new JSONObject(messageV3.getNotificationMessage()).getJSONObject("data");
                if (!jSONObject.isNull(PushConstants.EXTRA)) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(PushConstants.EXTRA);
                    if (!jSONObject2.isNull(ActVideoSetting.ACT_VIDEO_SETTING)) {
                        messageV4.setActVideoSetting(ActVideoSetting.parse(jSONObject2.getJSONObject(ActVideoSetting.ACT_VIDEO_SETTING)));
                    }
                }
            } catch (JSONException e10) {
                DebugLogger.e(TAG, "parse messageV4 error " + e10.getMessage());
            }
        }
        DebugLogger.i(TAG, "MessageV4 " + messageV4);
        return messageV4;
    }

    public ActVideoSetting getActVideoSetting() {
        return this.actVideoSetting;
    }

    public void setActVideoSetting(ActVideoSetting actVideoSetting) {
        this.actVideoSetting = actVideoSetting;
    }

    @Override // com.meizu.cloud.pushsdk.handler.MessageV3
    public String toString() {
        return "MessageV4{actVideoSetting=" + this.actVideoSetting + '}' + super.toString();
    }

    @Override // com.meizu.cloud.pushsdk.handler.MessageV3, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeParcelable(this.actVideoSetting, i9);
    }
}
