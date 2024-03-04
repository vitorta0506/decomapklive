package com.google.android.exoplayer2.offline;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new a();
    public final int groupIndex;
    public final int periodIndex;
    public final int streamIndex;
    @Deprecated
    public final int trackIndex;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<StreamKey> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public StreamKey createFromParcel(Parcel parcel) {
            return new StreamKey(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public StreamKey[] newArray(int i9) {
            return new StreamKey[i9];
        }
    }

    StreamKey(Parcel parcel) {
        this.periodIndex = parcel.readInt();
        this.groupIndex = parcel.readInt();
        int readInt = parcel.readInt();
        this.streamIndex = readInt;
        this.trackIndex = readInt;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(StreamKey streamKey) {
        int i9 = this.periodIndex - streamKey.periodIndex;
        if (i9 == 0) {
            int i10 = this.groupIndex - streamKey.groupIndex;
            return i10 == 0 ? this.streamIndex - streamKey.streamIndex : i10;
        }
        return i9;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || StreamKey.class != obj.getClass()) {
            return false;
        }
        StreamKey streamKey = (StreamKey) obj;
        return this.periodIndex == streamKey.periodIndex && this.groupIndex == streamKey.groupIndex && this.streamIndex == streamKey.streamIndex;
    }

    public int hashCode() {
        return (((this.periodIndex * 31) + this.groupIndex) * 31) + this.streamIndex;
    }

    public String toString() {
        return this.periodIndex + "." + this.groupIndex + "." + this.streamIndex;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.periodIndex);
        parcel.writeInt(this.groupIndex);
        parcel.writeInt(this.streamIndex);
    }
}
