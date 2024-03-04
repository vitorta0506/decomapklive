package org.light.bean;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class FaceData implements Parcelable {
    public static final Parcelable.Creator<FaceData> CREATOR = new Parcelable.Creator<FaceData>() { // from class: org.light.bean.FaceData.1
        @Override // android.os.Parcelable.Creator
        public FaceData createFromParcel(Parcel parcel) {
            return new FaceData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FaceData[] newArray(int i9) {
            return new FaceData[i9];
        }
    };
    public float[] points;

    public FaceData() {
    }

    public FaceData(Parcel parcel) {
        this.points = parcel.createFloatArray();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeFloatArray(this.points);
    }
}
