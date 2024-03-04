package com.meizu.cloud.pushsdk.handler.a.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushinternal.DebugLogger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class h implements Parcelable {
    public static final Parcelable.Creator<h> CREATOR = new Parcelable.Creator<h>() { // from class: com.meizu.cloud.pushsdk.handler.a.c.h.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public h createFromParcel(Parcel parcel) {
            return new h(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public h[] newArray(int i9) {
            return new h[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private b f28720a;

    /* renamed from: b  reason: collision with root package name */
    private String f28721b;

    /* renamed from: c  reason: collision with root package name */
    private int f28722c;

    protected h(Parcel parcel) {
        this.f28720a = (b) parcel.readParcelable(b.class.getClassLoader());
        this.f28721b = parcel.readString();
        this.f28722c = parcel.readInt();
    }

    public h(String str, String str2, String str3, String str4, String str5) {
        this.f28721b = str2;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull(RemoteMessageConst.Notification.NOTIFY_ID)) {
                this.f28722c = jSONObject.getInt(RemoteMessageConst.Notification.NOTIFY_ID);
            }
        } catch (JSONException e10) {
            DebugLogger.e("WithDrawMessage", "parse WithDrawMessage error " + e10.getMessage());
        }
        this.f28720a = new b(str3, str4, str5);
    }

    public b a() {
        return this.f28720a;
    }

    public int b() {
        return this.f28722c;
    }

    public String c() {
        return this.f28721b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "WithDrawMessage{controlMessage=" + this.f28720a + ", revokePackageName='" + this.f28721b + "', notifyId=" + this.f28722c + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable(this.f28720a, i9);
        parcel.writeString(this.f28721b);
        parcel.writeInt(this.f28722c);
    }
}
