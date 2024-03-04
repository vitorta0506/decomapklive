package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class ClipInfo implements Parcelable {
    public static final Parcelable.Creator<ClipInfo> CREATOR = new Parcelable.Creator<ClipInfo>() { // from class: org.light.ClipInfo.1
        @Override // android.os.Parcelable.Creator
        public ClipInfo createFromParcel(Parcel parcel) {
            return new ClipInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ClipInfo[] newArray(int i9) {
            return new ClipInfo[i9];
        }
    };
    public String path;
    public TimeRange sourceTimeRange;
    public TimeRange targetTimeRange;

    public ClipInfo(String str, TimeRange timeRange, TimeRange timeRange2) {
        this.path = str;
        this.sourceTimeRange = timeRange;
        this.targetTimeRange = timeRange2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.path);
        parcel.writeParcelable(this.sourceTimeRange, i9);
        parcel.writeParcelable(this.targetTimeRange, i9);
    }

    protected ClipInfo(Parcel parcel) {
        this.path = parcel.readString();
        this.sourceTimeRange = (TimeRange) parcel.readParcelable(TimeRange.class.getClassLoader());
        this.targetTimeRange = (TimeRange) parcel.readParcelable(TimeRange.class.getClassLoader());
    }
}
