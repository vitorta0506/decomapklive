package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class BinaryFrame extends Id3Frame {
    public static final Parcelable.Creator<BinaryFrame> CREATOR = new a();
    public final byte[] data;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<BinaryFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BinaryFrame createFromParcel(Parcel parcel) {
            return new BinaryFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public BinaryFrame[] newArray(int i9) {
            return new BinaryFrame[i9];
        }
    }

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.data = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || BinaryFrame.class != obj.getClass()) {
            return false;
        }
        BinaryFrame binaryFrame = (BinaryFrame) obj;
        return this.f6328id.equals(binaryFrame.f6328id) && Arrays.equals(this.data, binaryFrame.data);
    }

    public int hashCode() {
        return ((527 + this.f6328id.hashCode()) * 31) + Arrays.hashCode(this.data);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f6328id);
        parcel.writeByteArray(this.data);
    }

    BinaryFrame(Parcel parcel) {
        super((String) l0.j(parcel.readString()));
        this.data = (byte[]) l0.j(parcel.createByteArray());
    }
}
