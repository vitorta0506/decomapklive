package cn.jiguang.common.app.entity;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class Status extends ProcFile {
    public static final Parcelable.Creator<Status> CREATOR = new Parcelable.Creator<Status>() { // from class: cn.jiguang.common.app.entity.Status.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Status createFromParcel(Parcel parcel) {
            return new Status(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Status[] newArray(int i9) {
            return new Status[i9];
        }
    };

    private Status(Parcel parcel) {
        super(parcel);
    }
}
