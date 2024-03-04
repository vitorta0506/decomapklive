package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class GeobFrame extends Id3Frame {
    public static final Parcelable.Creator<GeobFrame> CREATOR = new a();
    public static final String ID = "GEOB";
    public final byte[] data;
    public final String description;
    public final String filename;
    public final String mimeType;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<GeobFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GeobFrame createFromParcel(Parcel parcel) {
            return new GeobFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public GeobFrame[] newArray(int i9) {
            return new GeobFrame[i9];
        }
    }

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super(ID);
        this.mimeType = str;
        this.filename = str2;
        this.description = str3;
        this.data = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || GeobFrame.class != obj.getClass()) {
            return false;
        }
        GeobFrame geobFrame = (GeobFrame) obj;
        return l0.c(this.mimeType, geobFrame.mimeType) && l0.c(this.filename, geobFrame.filename) && l0.c(this.description, geobFrame.description) && Arrays.equals(this.data, geobFrame.data);
    }

    public int hashCode() {
        String str = this.mimeType;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.filename;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.description;
        return ((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + Arrays.hashCode(this.data);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f6328id + ": mimeType=" + this.mimeType + ", filename=" + this.filename + ", description=" + this.description;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.filename);
        parcel.writeString(this.description);
        parcel.writeByteArray(this.data);
    }

    GeobFrame(Parcel parcel) {
        super(ID);
        this.mimeType = (String) l0.j(parcel.readString());
        this.filename = (String) l0.j(parcel.readString());
        this.description = (String) l0.j(parcel.readString());
        this.data = (byte[]) l0.j(parcel.createByteArray());
    }
}
