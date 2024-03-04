package com.meizu.cloud.pushsdk.handler.a.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.meizu.cloud.pushinternal.DebugLogger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new Parcelable.Creator<f>() { // from class: com.meizu.cloud.pushsdk.handler.a.c.f.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public f[] newArray(int i9) {
            return new f[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f28710a;

    /* renamed from: b  reason: collision with root package name */
    private String f28711b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28712c;

    /* renamed from: d  reason: collision with root package name */
    private String f28713d;

    /* renamed from: e  reason: collision with root package name */
    private String f28714e;

    public f() {
        this.f28712c = false;
    }

    protected f(Parcel parcel) {
        this.f28712c = false;
        this.f28710a = parcel.readString();
        this.f28711b = parcel.readString();
        this.f28712c = parcel.readByte() != 0;
        this.f28713d = parcel.readString();
        this.f28714e = parcel.readString();
    }

    public static f a(JSONObject jSONObject) {
        String str;
        f fVar = new f();
        if (jSONObject != null) {
            try {
                if (!jSONObject.isNull("taskId")) {
                    fVar.a(jSONObject.getString("taskId"));
                }
                if (!jSONObject.isNull(CrashHianalyticsData.TIME)) {
                    fVar.b(jSONObject.getString(CrashHianalyticsData.TIME));
                }
                if (!jSONObject.isNull("pushExtra")) {
                    fVar.a(jSONObject.getInt("pushExtra") == 0);
                }
            } catch (JSONException e10) {
                str = " parse statics message error " + e10.getMessage();
            }
            return fVar;
        }
        str = "no control statics can parse ";
        DebugLogger.e("statics", str);
        return fVar;
    }

    public String a() {
        return this.f28710a;
    }

    public void a(String str) {
        this.f28710a = str;
    }

    public void a(boolean z10) {
        this.f28712c = z10;
    }

    public String b() {
        return this.f28711b;
    }

    public void b(String str) {
        this.f28711b = str;
    }

    public void c(String str) {
        this.f28713d = str;
    }

    public boolean c() {
        return this.f28712c;
    }

    public String d() {
        return this.f28713d;
    }

    public void d(String str) {
        this.f28714e = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f28714e;
    }

    public String toString() {
        return "Statics{taskId='" + this.f28710a + "', time='" + this.f28711b + "', pushExtra=" + this.f28712c + ", deviceId='" + this.f28713d + "', seqId='" + this.f28714e + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f28710a);
        parcel.writeString(this.f28711b);
        parcel.writeByte(this.f28712c ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f28713d);
        parcel.writeString(this.f28714e);
    }
}
