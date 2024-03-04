package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class AudioPlaceHolder implements Parcelable {
    public static final Parcelable.Creator<AudioPlaceHolder> CREATOR = new Parcelable.Creator<AudioPlaceHolder>() { // from class: org.light.AudioPlaceHolder.1
        @Override // android.os.Parcelable.Creator
        public AudioPlaceHolder createFromParcel(Parcel parcel) {
            return new AudioPlaceHolder(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AudioPlaceHolder[] newArray(int i9) {
            return new AudioPlaceHolder[i9];
        }
    };
    public long duration;
    public long fadeInDuration;
    public long fadeOutDuration;
    public String key;
    public int loopCount;
    public String musicID;
    public String path;
    public long startOffset;
    public float volume;

    public AudioPlaceHolder(String str, String str2, long j10, long j11, float f10, String str3, long j12, long j13, int i9) {
        this.key = str;
        this.musicID = str2;
        this.fadeInDuration = j10;
        this.fadeOutDuration = j11;
        this.volume = f10;
        this.path = str3;
        this.startOffset = j12;
        this.duration = j13;
        this.loopCount = i9;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.key);
        parcel.writeString(this.musicID);
        parcel.writeLong(this.fadeInDuration);
        parcel.writeLong(this.fadeOutDuration);
        parcel.writeFloat(this.volume);
        parcel.writeString(this.path);
        parcel.writeLong(this.startOffset);
        parcel.writeLong(this.duration);
        parcel.writeInt(this.loopCount);
    }

    protected AudioPlaceHolder(Parcel parcel) {
        this.loopCount = 1;
        this.key = parcel.readString();
        this.musicID = parcel.readString();
        this.fadeInDuration = parcel.readLong();
        this.fadeOutDuration = parcel.readLong();
        this.volume = parcel.readFloat();
        this.path = parcel.readString();
        this.startOffset = parcel.readLong();
        this.duration = parcel.readLong();
        this.loopCount = parcel.readInt();
    }
}
