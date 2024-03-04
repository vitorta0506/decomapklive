package org.light.bean;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class HandData implements Parcelable {
    public static final Parcelable.Creator<HandData> CREATOR = new Parcelable.Creator<HandData>() { // from class: org.light.bean.HandData.1
        @Override // android.os.Parcelable.Creator
        public HandData createFromParcel(Parcel parcel) {
            return new HandData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public HandData[] newArray(int i9) {
            return new HandData[i9];
        }
    };
    public float[] points;

    public HandData() {
        this.points = new float[95];
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeFloatArray(this.points);
    }

    public HandData(Parcel parcel) {
        this.points = new float[95];
        this.points = parcel.createFloatArray();
    }
}
