package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class ClipPlaceHolder implements Parcelable {
    public static final Parcelable.Creator<ClipPlaceHolder> CREATOR = new Parcelable.Creator<ClipPlaceHolder>() { // from class: org.light.ClipPlaceHolder.1
        @Override // android.os.Parcelable.Creator
        public ClipPlaceHolder createFromParcel(Parcel parcel) {
            return new ClipPlaceHolder(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ClipPlaceHolder[] newArray(int i9) {
            return new ClipPlaceHolder[i9];
        }
    };
    public long contentDuration;
    public int fillMode;
    public int height;
    public float volume;
    public int width;

    public ClipPlaceHolder(long j10, int i9, int i10, int i11, float f10) {
        this.contentDuration = j10;
        this.fillMode = i9;
        this.width = i10;
        this.height = i11;
        this.volume = f10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeLong(this.contentDuration);
        parcel.writeInt(this.fillMode);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeFloat(this.volume);
    }

    protected ClipPlaceHolder(Parcel parcel) {
        this.volume = 1.0f;
        this.contentDuration = parcel.readLong();
        this.fillMode = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.volume = parcel.readFloat();
    }
}
