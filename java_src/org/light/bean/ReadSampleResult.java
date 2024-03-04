package org.light.bean;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class ReadSampleResult implements Parcelable {
    public static final Parcelable.Creator<ReadSampleResult> CREATOR = new Parcelable.Creator<ReadSampleResult>() { // from class: org.light.bean.ReadSampleResult.1
        @Override // android.os.Parcelable.Creator
        public ReadSampleResult createFromParcel(Parcel parcel) {
            return new ReadSampleResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ReadSampleResult[] newArray(int i9) {
            return new ReadSampleResult[i9];
        }
    };
    public ParcelFileDescriptor fenceFd;
    public boolean readOk;

    public ReadSampleResult(boolean z10) {
        this.fenceFd = null;
        this.readOk = z10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeByte(this.readOk ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.fenceFd, i9);
    }

    protected ReadSampleResult(Parcel parcel) {
        this.readOk = false;
        this.fenceFd = null;
        this.readOk = parcel.readByte() != 0;
        this.fenceFd = (ParcelFileDescriptor) parcel.readParcelable(ParcelFileDescriptor.class.getClassLoader());
    }
}
