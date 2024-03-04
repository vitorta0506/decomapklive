package com.huawei.hms.core.aidl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes4.dex */
public class DataBuffer implements Parcelable {
    public static final Parcelable.Creator<DataBuffer> CREATOR = new a();
    public String URI;

    /* renamed from: a  reason: collision with root package name */
    private int f27282a;

    /* renamed from: b  reason: collision with root package name */
    private Bundle f27283b;
    public Bundle header;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<DataBuffer> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataBuffer createFromParcel(Parcel parcel) {
            return new DataBuffer(parcel, (a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataBuffer[] newArray(int i9) {
            return new DataBuffer[i9];
        }
    }

    /* synthetic */ DataBuffer(Parcel parcel, a aVar) {
        this(parcel);
    }

    private static ClassLoader a(Class cls) {
        return cls.getClassLoader();
    }

    public DataBuffer addBody(Bundle bundle) {
        this.f27283b = bundle;
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getBody() {
        return this.f27283b;
    }

    public int getBodySize() {
        return this.f27283b == null ? 0 : 1;
    }

    public int getProtocol() {
        return this.f27282a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f27282a);
        parcel.writeString(this.URI);
        parcel.writeBundle(this.header);
        parcel.writeBundle(this.f27283b);
    }

    private DataBuffer(Parcel parcel) {
        this.header = null;
        this.f27282a = 1;
        this.f27283b = null;
        a(parcel);
    }

    private void a(Parcel parcel) {
        this.f27282a = parcel.readInt();
        this.URI = parcel.readString();
        this.header = parcel.readBundle(a(Bundle.class));
        this.f27283b = parcel.readBundle(a(Bundle.class));
    }

    public DataBuffer() {
        this.header = null;
        this.f27282a = 1;
        this.f27283b = null;
    }

    public DataBuffer(String str) {
        this.header = null;
        this.f27282a = 1;
        this.f27283b = null;
        this.URI = str;
    }

    public DataBuffer(String str, int i9) {
        this.header = null;
        this.f27283b = null;
        this.URI = str;
        this.f27282a = i9;
    }
}
