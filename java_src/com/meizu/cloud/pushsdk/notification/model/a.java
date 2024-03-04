package com.meizu.cloud.pushsdk.notification.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.handler.MessageV3;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.meizu.cloud.pushsdk.notification.model.a.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a[] newArray(int i9) {
            return new a[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private int f28749a;

    /* renamed from: b  reason: collision with root package name */
    private String f28750b;

    public a() {
        this.f28749a = 0;
    }

    protected a(Parcel parcel) {
        this.f28749a = 0;
        this.f28749a = parcel.readInt();
        this.f28750b = parcel.readString();
    }

    public static a a(MessageV3 messageV3) {
        a c10;
        try {
            c10 = !TextUtils.isEmpty(messageV3.getNotificationMessage()) ? a(new JSONObject(messageV3.getNotificationMessage()).getJSONObject("data").getJSONObject(PushConstants.EXTRA).getJSONObject("no")) : null;
        } catch (Exception e10) {
            DebugLogger.e("NotifyOption", "parse flyme NotifyOption setting error " + e10.getMessage() + " so get from notificationMessage");
            c10 = c(messageV3.getNotificationMessage());
        }
        DebugLogger.i("NotifyOption", "current notify option is " + c10);
        return c10;
    }

    public static a a(JSONObject jSONObject) {
        String str;
        a aVar = new a();
        if (jSONObject != null) {
            try {
                if (!jSONObject.isNull("ni")) {
                    aVar.a(jSONObject.getInt("ni"));
                }
                if (!jSONObject.isNull("nk")) {
                    aVar.a(jSONObject.getString("nk"));
                }
            } catch (JSONException e10) {
                str = "parse json obj error " + e10.getMessage();
            }
            return aVar;
        }
        str = "no such tag NotifyOption";
        DebugLogger.e("NotifyOption", str);
        return aVar;
    }

    public static int b(MessageV3 messageV3) {
        a a10 = a(messageV3);
        if (a10 != null) {
            return a10.a();
        }
        return 0;
    }

    public static a b(String str) {
        JSONObject jSONObject;
        if (!TextUtils.isEmpty(str)) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e10) {
                DebugLogger.e("NotifyOption", "parse json string error " + e10.getMessage());
            }
            return a(jSONObject);
        }
        jSONObject = null;
        return a(jSONObject);
    }

    private static a c(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return b(new JSONObject(str).getString("no"));
        } catch (JSONException e10) {
            DebugLogger.e("NotifyOption", "parse notificationMessage error " + e10.getMessage());
            return null;
        }
    }

    public int a() {
        return this.f28749a;
    }

    public void a(int i9) {
        this.f28749a = i9;
    }

    public void a(String str) {
        this.f28750b = str;
    }

    public String b() {
        return this.f28750b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "NotifyOption{notifyId=" + this.f28749a + ", notifyKey='" + this.f28750b + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f28749a);
        parcel.writeString(this.f28750b);
    }
}
