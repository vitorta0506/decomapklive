package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class TemplateConfig implements Parcelable {
    public static final Parcelable.Creator<TemplateConfig> CREATOR = new Parcelable.Creator<TemplateConfig>() { // from class: org.light.TemplateConfig.1
        @Override // android.os.Parcelable.Creator
        public TemplateConfig createFromParcel(Parcel parcel) {
            return new TemplateConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TemplateConfig[] newArray(int i9) {
            return new TemplateConfig[i9];
        }
    };
    public static final int SourceType_MultiMedia = 2;
    public static final int SourceType_Photo = 1;
    public static final int SourceType_Video = 0;
    public int maxClipAssetCount;
    public int maxImageDuration;
    public int minClipAssetCount;
    public int minImageDuration;
    public int minVideoDuration;
    public float originVolume;
    public long preferredCoverTime;
    public int type;

    public TemplateConfig(int i9, int i10, int i11, int i12, int i13, int i14, long j10, float f10) {
        this.type = i9;
        this.minImageDuration = i10;
        this.maxImageDuration = i11;
        this.minClipAssetCount = i12;
        this.maxClipAssetCount = i13;
        this.minVideoDuration = i14;
        this.preferredCoverTime = j10;
        this.originVolume = f10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.type);
        parcel.writeInt(this.minClipAssetCount);
        parcel.writeInt(this.maxClipAssetCount);
        parcel.writeInt(this.minVideoDuration);
        parcel.writeInt(this.minImageDuration);
        parcel.writeInt(this.maxImageDuration);
        parcel.writeLong(this.preferredCoverTime);
        parcel.writeFloat(this.originVolume);
    }

    protected TemplateConfig(Parcel parcel) {
        this.type = 0;
        this.minClipAssetCount = 0;
        this.maxClipAssetCount = 0;
        this.minVideoDuration = 0;
        this.minImageDuration = 0;
        this.maxImageDuration = 0;
        this.preferredCoverTime = 0L;
        this.originVolume = 0.0f;
        this.type = parcel.readInt();
        this.minClipAssetCount = parcel.readInt();
        this.maxClipAssetCount = parcel.readInt();
        this.minVideoDuration = parcel.readInt();
        this.minImageDuration = parcel.readInt();
        this.maxImageDuration = parcel.readInt();
        this.preferredCoverTime = parcel.readLong();
        this.originVolume = parcel.readFloat();
    }
}
