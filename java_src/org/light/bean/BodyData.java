package org.light.bean;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class BodyData implements Parcelable {
    public static final Parcelable.Creator<BodyData> CREATOR = new Parcelable.Creator<BodyData>() { // from class: org.light.bean.BodyData.1
        @Override // android.os.Parcelable.Creator
        public BodyData createFromParcel(Parcel parcel) {
            return new BodyData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BodyData[] newArray(int i9) {
            return new BodyData[i9];
        }
    };
    public float[] points;

    public BodyData() {
    }

    public BodyData(Parcel parcel) {
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
