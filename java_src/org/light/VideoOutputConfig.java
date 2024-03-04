package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class VideoOutputConfig implements Parcelable {
    public static final Parcelable.Creator<VideoOutputConfig> CREATOR = new Parcelable.Creator<VideoOutputConfig>() { // from class: org.light.VideoOutputConfig.1
        @Override // android.os.Parcelable.Creator
        public VideoOutputConfig createFromParcel(Parcel parcel) {
            return new VideoOutputConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public VideoOutputConfig[] newArray(int i9) {
            return new VideoOutputConfig[i9];
        }
    };
    public float frameRate;
    public int seekTolerance;

    public VideoOutputConfig(float f10, int i9) {
        this.frameRate = f10;
        this.seekTolerance = i9;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeFloat(this.frameRate);
        parcel.writeInt(this.seekTolerance);
    }

    protected VideoOutputConfig(Parcel parcel) {
        this.frameRate = 30.0f;
        this.seekTolerance = 0;
        this.frameRate = parcel.readFloat();
        this.seekTolerance = parcel.readInt();
    }
}
