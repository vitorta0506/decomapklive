package com.tencent.bugly.crashreport.common.info;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes4.dex */
public class PlugInBean implements Parcelable {
    public static final Parcelable.Creator<PlugInBean> CREATOR = new Parcelable.Creator<PlugInBean>() { // from class: com.tencent.bugly.crashreport.common.info.PlugInBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PlugInBean createFromParcel(Parcel parcel) {
            return new PlugInBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ PlugInBean[] newArray(int i9) {
            return new PlugInBean[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f30177a;

    /* renamed from: b  reason: collision with root package name */
    public final String f30178b;

    /* renamed from: c  reason: collision with root package name */
    public final String f30179c;

    public PlugInBean(String str, String str2, String str3) {
        this.f30177a = str;
        this.f30178b = str2;
        this.f30179c = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "plid:" + this.f30177a + " plV:" + this.f30178b + " plUUID:" + this.f30179c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f30177a);
        parcel.writeString(this.f30178b);
        parcel.writeString(this.f30179c);
    }

    public PlugInBean(Parcel parcel) {
        this.f30177a = parcel.readString();
        this.f30178b = parcel.readString();
        this.f30179c = parcel.readString();
    }
}
