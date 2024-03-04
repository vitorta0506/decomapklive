package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
import com.google.common.base.e;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class PictureFrame implements Metadata.Entry {
    public static final Parcelable.Creator<PictureFrame> CREATOR = new a();
    public final int colors;
    public final int depth;
    public final String description;
    public final int height;
    public final String mimeType;
    public final byte[] pictureData;
    public final int pictureType;
    public final int width;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<PictureFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PictureFrame createFromParcel(Parcel parcel) {
            return new PictureFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PictureFrame[] newArray(int i9) {
            return new PictureFrame[i9];
        }
    }

    public PictureFrame(int i9, String str, String str2, int i10, int i11, int i12, int i13, byte[] bArr) {
        this.pictureType = i9;
        this.mimeType = str;
        this.description = str2;
        this.width = i10;
        this.height = i11;
        this.depth = i12;
        this.colors = i13;
        this.pictureData = bArr;
    }

    public static PictureFrame a(b0 b0Var) {
        int n9 = b0Var.n();
        String B = b0Var.B(b0Var.n(), e.f12354a);
        String A = b0Var.A(b0Var.n());
        int n10 = b0Var.n();
        int n11 = b0Var.n();
        int n12 = b0Var.n();
        int n13 = b0Var.n();
        int n14 = b0Var.n();
        byte[] bArr = new byte[n14];
        b0Var.j(bArr, 0, n14);
        return new PictureFrame(n9, B, A, n10, n11, n12, n13, bArr);
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
        if (obj == null || PictureFrame.class != obj.getClass()) {
            return false;
        }
        PictureFrame pictureFrame = (PictureFrame) obj;
        return this.pictureType == pictureFrame.pictureType && this.mimeType.equals(pictureFrame.mimeType) && this.description.equals(pictureFrame.description) && this.width == pictureFrame.width && this.height == pictureFrame.height && this.depth == pictureFrame.depth && this.colors == pictureFrame.colors && Arrays.equals(this.pictureData, pictureFrame.pictureData);
    }

    public int hashCode() {
        return ((((((((((((((527 + this.pictureType) * 31) + this.mimeType.hashCode()) * 31) + this.description.hashCode()) * 31) + this.width) * 31) + this.height) * 31) + this.depth) * 31) + this.colors) * 31) + Arrays.hashCode(this.pictureData);
    }

    public String toString() {
        return "Picture: mimeType=" + this.mimeType + ", description=" + this.description;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.pictureType);
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeInt(this.depth);
        parcel.writeInt(this.colors);
        parcel.writeByteArray(this.pictureData);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void y0(x1.b bVar) {
        bVar.G(this.pictureData, this.pictureType);
    }

    PictureFrame(Parcel parcel) {
        this.pictureType = parcel.readInt();
        this.mimeType = (String) l0.j(parcel.readString());
        this.description = (String) l0.j(parcel.readString());
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.depth = parcel.readInt();
        this.colors = parcel.readInt();
        this.pictureData = (byte[]) l0.j(parcel.createByteArray());
    }
}
