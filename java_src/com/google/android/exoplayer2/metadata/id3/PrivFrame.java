package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new a();
    public static final String ID = "PRIV";
    public final String owner;
    public final byte[] privateData;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<PrivFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PrivFrame[] newArray(int i9) {
            return new PrivFrame[i9];
        }
    }

    public PrivFrame(String str, byte[] bArr) {
        super(ID);
        this.owner = str;
        this.privateData = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PrivFrame.class != obj.getClass()) {
            return false;
        }
        PrivFrame privFrame = (PrivFrame) obj;
        return l0.c(this.owner, privFrame.owner) && Arrays.equals(this.privateData, privFrame.privateData);
    }

    public int hashCode() {
        String str = this.owner;
        return ((527 + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.privateData);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f6328id + ": owner=" + this.owner;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.owner);
        parcel.writeByteArray(this.privateData);
    }

    PrivFrame(Parcel parcel) {
        super(ID);
        this.owner = (String) l0.j(parcel.readString());
        this.privateData = (byte[]) l0.j(parcel.createByteArray());
    }
}
