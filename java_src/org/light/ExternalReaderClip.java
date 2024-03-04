package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class ExternalReaderClip extends VideoClip {
    public static final Parcelable.Creator<ExternalReaderClip> CREATOR = new Parcelable.Creator<ExternalReaderClip>() { // from class: org.light.ExternalReaderClip.1
        @Override // android.os.Parcelable.Creator
        public ExternalReaderClip createFromParcel(Parcel parcel) {
            return new ExternalReaderClip(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ExternalReaderClip[] newArray(int i9) {
            return new ExternalReaderClip[i9];
        }
    };

    public ExternalReaderClip() {
        this.type = ClipAsset.EXTERNAL;
    }

    @Override // org.light.VideoClip, org.light.ClipAsset, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // org.light.VideoClip, org.light.ClipAsset, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
    }

    protected ExternalReaderClip(Parcel parcel) {
        super(parcel);
    }
}
