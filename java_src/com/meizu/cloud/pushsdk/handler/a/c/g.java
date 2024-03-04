package com.meizu.cloud.pushsdk.handler.a.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.meizu.cloud.pushinternal.DebugLogger;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class g implements Parcelable {
    public static final Parcelable.Creator<g> CREATOR = new Parcelable.Creator<g>() { // from class: com.meizu.cloud.pushsdk.handler.a.c.g.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public g createFromParcel(Parcel parcel) {
            return new g(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public g[] newArray(int i9) {
            return new g[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private int f28715a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f28716b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f28717c;

    /* renamed from: d  reason: collision with root package name */
    private b f28718d;

    /* renamed from: e  reason: collision with root package name */
    private String f28719e;

    protected g(Parcel parcel) {
        this.f28715a = parcel.readInt();
        this.f28716b = parcel.readByte() != 0;
        this.f28717c = parcel.createStringArrayList();
        this.f28718d = (b) parcel.readParcelable(b.class.getClassLoader());
        this.f28719e = parcel.readString();
    }

    public g(String str, String str2, String str3, String str4) {
        this.f28719e = str;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull("max_size")) {
                this.f28715a = jSONObject.getInt("max_size");
            }
            if (!jSONObject.isNull("wifi_upload")) {
                this.f28716b = jSONObject.getBoolean("wifi_upload");
            }
            if (!jSONObject.isNull("upload_files")) {
                JSONArray jSONArray = jSONObject.getJSONArray("upload_files");
                this.f28717c = new ArrayList();
                for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                    this.f28717c.add(jSONArray.getString(i9));
                }
            }
        } catch (JSONException e10) {
            DebugLogger.e("UploadLogMessage", "parse upload message error " + e10.getMessage());
        }
        this.f28718d = new b(str2, str3, str4);
    }

    public int a() {
        return this.f28715a;
    }

    public boolean b() {
        return this.f28716b;
    }

    public List<String> c() {
        return this.f28717c;
    }

    public b d() {
        return this.f28718d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "UploadLogMessage{maxSize=" + this.f28715a + ", wifiUpload=" + this.f28716b + ", fileList=" + this.f28717c + ", controlMessage=" + this.f28718d + ", uploadMessage='" + this.f28719e + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f28715a);
        parcel.writeByte(this.f28716b ? (byte) 1 : (byte) 0);
        parcel.writeStringList(this.f28717c);
        parcel.writeParcelable(this.f28718d, i9);
        parcel.writeString(this.f28719e);
    }
}
