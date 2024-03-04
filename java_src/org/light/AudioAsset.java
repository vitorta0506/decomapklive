package org.light;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
/* loaded from: classes7.dex */
public class AudioAsset implements Parcelable {
    public static final Parcelable.Creator<AudioAsset> CREATOR = new Parcelable.Creator<AudioAsset>() { // from class: org.light.AudioAsset.1
        @Override // android.os.Parcelable.Creator
        public AudioAsset createFromParcel(Parcel parcel) {
            return new AudioAsset(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AudioAsset[] newArray(int i9) {
            return new AudioAsset[i9];
        }
    };
    public long duration;
    HashMap<String, long[]> events;
    public long fadeInDuration;
    public long fadeOutDuration;
    public int loopCount;
    public String musicID;
    public String path;
    public long startOffset;
    public float volume;

    public AudioAsset(String str, long j10, long j11, float f10, String str2, long j12, long j13, HashMap<String, long[]> hashMap, int i9) {
        HashMap<String, long[]> hashMap2 = new HashMap<>();
        this.events = hashMap2;
        this.loopCount = 1;
        this.musicID = str;
        this.fadeInDuration = j10;
        this.fadeOutDuration = j11;
        this.volume = f10;
        this.path = str2;
        this.startOffset = j12;
        this.duration = j13;
        if (hashMap != null) {
            hashMap2.putAll(hashMap);
        }
        this.loopCount = i9;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.musicID);
        parcel.writeLong(this.fadeInDuration);
        parcel.writeLong(this.fadeOutDuration);
        parcel.writeFloat(this.volume);
        parcel.writeString(this.path);
        parcel.writeLong(this.startOffset);
        parcel.writeLong(this.duration);
        parcel.writeSerializable(this.events);
        parcel.writeInt(this.loopCount);
    }

    protected AudioAsset(Parcel parcel) {
        this.events = new HashMap<>();
        this.loopCount = 1;
        this.musicID = parcel.readString();
        this.fadeInDuration = parcel.readLong();
        this.fadeOutDuration = parcel.readLong();
        this.volume = parcel.readFloat();
        this.path = parcel.readString();
        this.startOffset = parcel.readLong();
        this.duration = parcel.readLong();
        this.events = (HashMap) parcel.readSerializable();
        this.loopCount = parcel.readInt();
    }
}
