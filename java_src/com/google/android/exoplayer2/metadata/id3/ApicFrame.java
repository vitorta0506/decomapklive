package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new a();
    public static final String ID = "APIC";
    @Nullable
    public final String description;
    public final String mimeType;
    public final byte[] pictureData;
    public final int pictureType;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<ApicFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ApicFrame createFromParcel(Parcel parcel) {
            return new ApicFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ApicFrame[] newArray(int i9) {
            return new ApicFrame[i9];
        }
    }

    public ApicFrame(String str, @Nullable String str2, int i9, byte[] bArr) {
        super(ID);
        this.mimeType = str;
        this.description = str2;
        this.pictureType = i9;
        this.pictureData = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ApicFrame.class != obj.getClass()) {
            return false;
        }
        ApicFrame apicFrame = (ApicFrame) obj;
        return this.pictureType == apicFrame.pictureType && l0.c(this.mimeType, apicFrame.mimeType) && l0.c(this.description, apicFrame.description) && Arrays.equals(this.pictureData, apicFrame.pictureData);
    }

    public int hashCode() {
        int i9 = (527 + this.pictureType) * 31;
        String str = this.mimeType;
        int hashCode = (i9 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.description;
        return ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.pictureData);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f6328id + ": mimeType=" + this.mimeType + ", description=" + this.description;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.pictureType);
        parcel.writeByteArray(this.pictureData);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, com.google.android.exoplayer2.metadata.Metadata.Entry
    public void y0(x1.b bVar) {
        bVar.G(this.pictureData, this.pictureType);
    }

    ApicFrame(Parcel parcel) {
        super(ID);
        this.mimeType = (String) l0.j(parcel.readString());
        this.description = parcel.readString();
        this.pictureType = parcel.readInt();
        this.pictureData = (byte[]) l0.j(parcel.createByteArray());
    }
}
