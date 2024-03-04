package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new a();
    public static final String KEY_ANDROID_CAPTURE_FPS = "com.android.capture.fps";
    public final String key;
    public final int localeIndicator;
    public final int typeIndicator;
    public final byte[] value;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<MdtaMetadataEntry> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MdtaMetadataEntry createFromParcel(Parcel parcel) {
            return new MdtaMetadataEntry(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MdtaMetadataEntry[] newArray(int i9) {
            return new MdtaMetadataEntry[i9];
        }
    }

    /* synthetic */ MdtaMetadataEntry(Parcel parcel, a aVar) {
        this(parcel);
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
        if (obj == null || MdtaMetadataEntry.class != obj.getClass()) {
            return false;
        }
        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
        return this.key.equals(mdtaMetadataEntry.key) && Arrays.equals(this.value, mdtaMetadataEntry.value) && this.localeIndicator == mdtaMetadataEntry.localeIndicator && this.typeIndicator == mdtaMetadataEntry.typeIndicator;
    }

    public int hashCode() {
        return ((((((527 + this.key.hashCode()) * 31) + Arrays.hashCode(this.value)) * 31) + this.localeIndicator) * 31) + this.typeIndicator;
    }

    public String toString() {
        return "mdta: key=" + this.key;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.key);
        parcel.writeByteArray(this.value);
        parcel.writeInt(this.localeIndicator);
        parcel.writeInt(this.typeIndicator);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void y0(x1.b bVar) {
        o2.a.c(this, bVar);
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i9, int i10) {
        this.key = str;
        this.value = bArr;
        this.localeIndicator = i9;
        this.typeIndicator = i10;
    }

    private MdtaMetadataEntry(Parcel parcel) {
        this.key = (String) l0.j(parcel.readString());
        this.value = (byte[]) l0.j(parcel.createByteArray());
        this.localeIndicator = parcel.readInt();
        this.typeIndicator = parcel.readInt();
    }
}
