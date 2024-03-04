package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class TimeRange implements Parcelable {
    public static final Parcelable.Creator<TimeRange> CREATOR = new Parcelable.Creator<TimeRange>() { // from class: org.light.TimeRange.1
        @Override // android.os.Parcelable.Creator
        public TimeRange createFromParcel(Parcel parcel) {
            return new TimeRange(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TimeRange[] newArray(int i9) {
            return new TimeRange[i9];
        }
    };
    public long duration;
    public long startTime;

    public TimeRange(long j10, long j11) {
        this.startTime = j10;
        this.duration = j11;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeLong(this.startTime);
        parcel.writeLong(this.duration);
    }

    protected TimeRange(Parcel parcel) {
        this.startTime = parcel.readLong();
        this.duration = parcel.readLong();
    }
}
