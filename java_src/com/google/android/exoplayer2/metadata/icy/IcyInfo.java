package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.x1;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class IcyInfo implements Metadata.Entry {
    public static final Parcelable.Creator<IcyInfo> CREATOR = new a();
    public final byte[] rawMetadata;
    @Nullable
    public final String title;
    @Nullable
    public final String url;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<IcyInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public IcyInfo createFromParcel(Parcel parcel) {
            return new IcyInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public IcyInfo[] newArray(int i9) {
            return new IcyInfo[i9];
        }
    }

    public IcyInfo(byte[] bArr, @Nullable String str, @Nullable String str2) {
        this.rawMetadata = bArr;
        this.title = str;
        this.url = str2;
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

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || IcyInfo.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.rawMetadata, ((IcyInfo) obj).rawMetadata);
    }

    public int hashCode() {
        return Arrays.hashCode(this.rawMetadata);
    }

    public String toString() {
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\"", this.title, this.url, Integer.valueOf(this.rawMetadata.length));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeByteArray(this.rawMetadata);
        parcel.writeString(this.title);
        parcel.writeString(this.url);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void y0(x1.b bVar) {
        String str = this.title;
        if (str != null) {
            bVar.i0(str);
        }
    }

    IcyInfo(Parcel parcel) {
        this.rawMetadata = (byte[]) com.google.android.exoplayer2.util.a.e(parcel.createByteArray());
        this.title = parcel.readString();
        this.url = parcel.readString();
    }
}
