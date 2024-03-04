package com.meizu.cloud.pushsdk.notification.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class AdvanceSetting implements Parcelable {
    public static final String ADVANCE_SETTING = "as";
    public static final String CLEAR_NOTIFICATION = "cn";
    public static final Parcelable.Creator<AdvanceSetting> CREATOR = new Parcelable.Creator<AdvanceSetting>() { // from class: com.meizu.cloud.pushsdk.notification.model.AdvanceSetting.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AdvanceSetting createFromParcel(Parcel parcel) {
            return new AdvanceSetting(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AdvanceSetting[] newArray(int i9) {
            return new AdvanceSetting[i9];
        }
    };
    public static final String HEAD_UP_NOTIFICATION = "hn";
    public static final String NETWORK_TYPE = "it";
    public static final String NOTIFY_TYPE = "nt";
    public static final String TAG = "advance_setting";
    private boolean clearNotification;
    private boolean headUpNotification;
    private int netWorkType;
    private NotifyType notifyType;

    public AdvanceSetting() {
        this.netWorkType = 1;
        this.clearNotification = true;
        this.headUpNotification = true;
    }

    public AdvanceSetting(Parcel parcel) {
        this.netWorkType = 1;
        this.clearNotification = true;
        this.headUpNotification = true;
        this.netWorkType = parcel.readInt();
        this.notifyType = (NotifyType) parcel.readParcelable(NotifyType.class.getClassLoader());
        this.clearNotification = parcel.readByte() != 0;
        this.headUpNotification = parcel.readByte() != 0;
    }

    public static AdvanceSetting parse(String str) {
        JSONObject jSONObject;
        if (!TextUtils.isEmpty(str)) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e10) {
                DebugLogger.e(TAG, "parse json string error " + e10.getMessage());
            }
            return parse(jSONObject);
        }
        jSONObject = null;
        return parse(jSONObject);
    }

    public static AdvanceSetting parse(JSONObject jSONObject) {
        String str;
        AdvanceSetting advanceSetting = new AdvanceSetting();
        if (jSONObject != null) {
            try {
                if (!jSONObject.isNull("it")) {
                    advanceSetting.setNetWorkType(jSONObject.getInt("it"));
                }
                if (!jSONObject.isNull("nt")) {
                    advanceSetting.setNotifyType(NotifyType.parse(jSONObject.getJSONObject("nt")));
                }
                boolean z10 = true;
                if (!jSONObject.isNull(CLEAR_NOTIFICATION)) {
                    advanceSetting.setClearNotification(jSONObject.getInt(CLEAR_NOTIFICATION) != 0);
                }
                if (!jSONObject.isNull(HEAD_UP_NOTIFICATION)) {
                    if (jSONObject.getInt(HEAD_UP_NOTIFICATION) == 0) {
                        z10 = false;
                    }
                    advanceSetting.setHeadUpNotification(z10);
                }
            } catch (JSONException e10) {
                str = "parse json obj error " + e10.getMessage();
            }
            return advanceSetting;
        }
        str = "no such tag advance_setting";
        DebugLogger.e(TAG, str);
        return advanceSetting;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getNetWorkType() {
        return this.netWorkType;
    }

    public NotifyType getNotifyType() {
        return this.notifyType;
    }

    public boolean isClearNotification() {
        return this.clearNotification;
    }

    public boolean isHeadUpNotification() {
        return this.headUpNotification;
    }

    public void setClearNotification(boolean z10) {
        this.clearNotification = z10;
    }

    public void setHeadUpNotification(boolean z10) {
        this.headUpNotification = z10;
    }

    public void setNetWorkType(int i9) {
        this.netWorkType = i9;
    }

    public void setNotifyType(NotifyType notifyType) {
        this.notifyType = notifyType;
    }

    public String toString() {
        return "AdvanceSetting{netWorkType=" + this.netWorkType + ", notifyType=" + this.notifyType + ", clearNotification=" + this.clearNotification + ", headUpNotification=" + this.headUpNotification + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.netWorkType);
        parcel.writeParcelable(this.notifyType, i9);
        parcel.writeByte(this.clearNotification ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.headUpNotification ? (byte) 1 : (byte) 0);
    }
}
