package com.meizu.cloud.pushsdk.handler.a.c;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: com.meizu.cloud.pushsdk.handler.a.c.b.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b[] newArray(int i9) {
            return new b[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f28686a;

    /* renamed from: b  reason: collision with root package name */
    private a f28687b;

    /* renamed from: c  reason: collision with root package name */
    private f f28688c;

    public b() {
    }

    protected b(Parcel parcel) {
        this.f28686a = parcel.readString();
        this.f28687b = (a) parcel.readParcelable(a.class.getClassLoader());
        this.f28688c = (f) parcel.readParcelable(f.class.getClassLoader());
    }

    public b(String str, String str2, String str3) {
        this.f28686a = str;
        if (TextUtils.isEmpty(str)) {
            this.f28687b = new a();
            this.f28688c = new f();
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f28687b = a.a(jSONObject.getJSONObject("ctl"));
            f a10 = f.a(jSONObject.getJSONObject("statics"));
            this.f28688c = a10;
            a10.c(str2);
            this.f28688c.d(str3);
        } catch (JSONException e10) {
            this.f28687b = new a();
            this.f28688c = new f();
            DebugLogger.e("ControlMessage", "parse control message error " + e10.getMessage());
        }
    }

    public static b a(String str) {
        b bVar = new b();
        try {
            JSONObject jSONObject = new JSONObject(str);
            bVar.a(a.a(jSONObject.getJSONObject("ctl")));
            bVar.a(f.a(jSONObject.getJSONObject("statics")));
        } catch (Exception e10) {
            DebugLogger.e("ControlMessage", "parse control message error " + e10.getMessage());
            bVar.a(new f());
            bVar.a(new a());
        }
        return bVar;
    }

    public a a() {
        return this.f28687b;
    }

    public void a(a aVar) {
        this.f28687b = aVar;
    }

    public void a(f fVar) {
        this.f28688c = fVar;
    }

    public f b() {
        return this.f28688c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "ControlMessage{controlMessage='" + this.f28686a + "', control=" + this.f28687b + ", statics=" + this.f28688c + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f28686a);
        parcel.writeParcelable(this.f28687b, i9);
        parcel.writeParcelable(this.f28688c, i9);
    }
}
