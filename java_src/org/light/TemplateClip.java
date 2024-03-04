package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class TemplateClip extends ClipAsset {
    public static final Parcelable.Creator<TemplateClip> CREATOR = new Parcelable.Creator<TemplateClip>() { // from class: org.light.TemplateClip.1
        @Override // android.os.Parcelable.Creator
        public TemplateClip createFromParcel(Parcel parcel) {
            return new TemplateClip(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TemplateClip[] newArray(int i9) {
            return new TemplateClip[i9];
        }
    };
    public LightAsset asset;
    public ClipAsset[] clipAssets;

    public TemplateClip() {
    }

    @Override // org.light.ClipAsset, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // org.light.ClipAsset, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeParcelable(this.asset, i9);
        parcel.writeParcelableArray(this.clipAssets, i9);
    }

    protected TemplateClip(Parcel parcel) {
        super(parcel);
        this.asset = (LightAsset) parcel.readParcelable(LightAsset.class.getClassLoader());
        Parcelable[] readParcelableArray = parcel.readParcelableArray(TemplateClip.class.getClassLoader());
        if (readParcelableArray == null) {
            return;
        }
        this.clipAssets = new ClipAsset[readParcelableArray.length];
        int i9 = 0;
        while (true) {
            ClipAsset[] clipAssetArr = this.clipAssets;
            if (i9 >= clipAssetArr.length) {
                return;
            }
            clipAssetArr[i9] = (ClipAsset) readParcelableArray[i9];
            i9++;
        }
    }
}
