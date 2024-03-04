package cn.jiguang.common.app.entity;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class Stat extends ProcFile {
    public static final Parcelable.Creator<Stat> CREATOR = new Parcelable.Creator<Stat>() { // from class: cn.jiguang.common.app.entity.Stat.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Stat createFromParcel(Parcel parcel) {
            return new Stat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Stat[] newArray(int i9) {
            return new Stat[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String[] f2523a;

    private Stat(Parcel parcel) {
        super(parcel);
        this.f2523a = parcel.createStringArray();
    }

    @Override // cn.jiguang.common.app.entity.ProcFile, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeStringArray(this.f2523a);
    }
}
