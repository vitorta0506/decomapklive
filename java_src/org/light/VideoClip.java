package org.light;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
/* loaded from: classes7.dex */
public class VideoClip extends ClipAsset {
    public static final Parcelable.Creator<VideoClip> CREATOR = new Parcelable.Creator<VideoClip>() { // from class: org.light.VideoClip.1
        @Override // android.os.Parcelable.Creator
        public VideoClip createFromParcel(Parcel parcel) {
            return new VideoClip(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public VideoClip[] newArray(int i9) {
            return new VideoClip[i9];
        }
    };
    public HashMap<String, long[]> events;
    public float speed;
    public long startOffset;
    public float volume;
    public VolumeEffect[] volumeEffects;

    public VideoClip() {
        this.speed = 1.0f;
        this.volume = 1.0f;
        this.events = new HashMap<>();
        this.type = ClipAsset.VIDEO;
    }

    @Override // org.light.ClipAsset, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // org.light.ClipAsset, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeLong(this.startOffset);
        parcel.writeFloat(this.speed);
        parcel.writeFloat(this.volume);
        parcel.writeSerializable(this.events);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public VideoClip(Parcel parcel) {
        super(parcel);
        this.speed = 1.0f;
        this.volume = 1.0f;
        this.events = new HashMap<>();
        this.startOffset = parcel.readLong();
        this.speed = parcel.readFloat();
        this.volume = parcel.readFloat();
        this.events = (HashMap) parcel.readSerializable();
    }
}
