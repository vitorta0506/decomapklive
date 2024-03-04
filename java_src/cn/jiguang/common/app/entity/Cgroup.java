package cn.jiguang.common.app.entity;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class Cgroup extends ProcFile {
    public static final Parcelable.Creator<Cgroup> CREATOR = new Parcelable.Creator<Cgroup>() { // from class: cn.jiguang.common.app.entity.Cgroup.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Cgroup createFromParcel(Parcel parcel) {
            return new Cgroup(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Cgroup[] newArray(int i9) {
            return new Cgroup[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<ControlGroup> f2518a;

    private Cgroup(Parcel parcel) {
        super(parcel);
        this.f2518a = parcel.createTypedArrayList(ControlGroup.CREATOR);
    }

    @Override // cn.jiguang.common.app.entity.ProcFile, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeTypedList(this.f2518a);
    }
}
