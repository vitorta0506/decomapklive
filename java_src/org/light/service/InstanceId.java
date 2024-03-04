package org.light.service;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class InstanceId implements Parcelable {
    public static final Parcelable.Creator<InstanceId> CREATOR = new Parcelable.Creator<InstanceId>() { // from class: org.light.service.InstanceId.1
        @Override // android.os.Parcelable.Creator
        public InstanceId createFromParcel(Parcel parcel) {
            return new InstanceId(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public InstanceId[] newArray(int i9) {
            return new InstanceId[i9];
        }
    };

    /* renamed from: id  reason: collision with root package name */
    public int f56459id;

    public InstanceId(int i9) {
        this.f56459id = i9;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f56459id);
    }

    protected InstanceId(Parcel parcel) {
        this.f56459id = 0;
        this.f56459id = parcel.readInt();
    }
}
