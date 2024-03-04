package com.google.android.exoplayer2.metadata.dvbsi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.x1;
/* loaded from: classes.dex */
public final class AppInfoTable implements Metadata.Entry {
    public static final int CONTROL_CODE_AUTOSTART = 1;
    public static final int CONTROL_CODE_PRESENT = 2;
    public static final Parcelable.Creator<AppInfoTable> CREATOR = new a();
    public final int controlCode;
    public final String url;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<AppInfoTable> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppInfoTable createFromParcel(Parcel parcel) {
            return new AppInfoTable(parcel.readInt(), (String) com.google.android.exoplayer2.util.a.e(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public AppInfoTable[] newArray(int i9) {
            return new AppInfoTable[i9];
        }
    }

    public AppInfoTable(int i9, String str) {
        this.controlCode = i9;
        this.url = str;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ k1 N() {
        return o2.a.b(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] e1() {
        return o2.a.a(this);
    }

    public String toString() {
        return "Ait(controlCode=" + this.controlCode + ",url=" + this.url + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.url);
        parcel.writeInt(this.controlCode);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void y0(x1.b bVar) {
        o2.a.c(this, bVar);
    }
}
