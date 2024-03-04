package com.meizu.cloud.pushsdk.handler.a.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.meizu.cloud.pushinternal.DebugLogger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.meizu.cloud.pushsdk.handler.a.c.a.1
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
    private int f28683a;

    /* renamed from: b  reason: collision with root package name */
    private int f28684b;

    /* renamed from: c  reason: collision with root package name */
    private int f28685c;

    public a() {
    }

    protected a(Parcel parcel) {
        this.f28683a = parcel.readInt();
        this.f28684b = parcel.readInt();
        this.f28685c = parcel.readInt();
    }

    public static a a(JSONObject jSONObject) {
        String str;
        a aVar = new a();
        if (jSONObject != null) {
            try {
                if (!jSONObject.isNull("pushType")) {
                    aVar.a(jSONObject.getInt("pushType"));
                }
                if (!jSONObject.isNull("cached")) {
                    aVar.b(jSONObject.getInt("cached"));
                }
                if (!jSONObject.isNull("cacheNum")) {
                    aVar.c(jSONObject.getInt("cacheNum"));
                }
            } catch (JSONException e10) {
                str = " parse control message error " + e10.getMessage();
            }
            return aVar;
        }
        str = "no control message can parse ";
        DebugLogger.e("ctl", str);
        return aVar;
    }

    public int a() {
        return this.f28683a;
    }

    public void a(int i9) {
        this.f28683a = i9;
    }

    public void b(int i9) {
        this.f28684b = i9;
    }

    public void c(int i9) {
        this.f28685c = i9;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "Control{pushType=" + this.f28683a + ", cached=" + this.f28684b + ", cacheNum=" + this.f28685c + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f28683a);
        parcel.writeInt(this.f28684b);
        parcel.writeInt(this.f28685c);
    }
}
