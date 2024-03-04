package cn.jiguang.common.app.entity;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Locale;
/* loaded from: classes.dex */
public class ControlGroup implements Parcelable {
    public static final Parcelable.Creator<ControlGroup> CREATOR = new Parcelable.Creator<ControlGroup>() { // from class: cn.jiguang.common.app.entity.ControlGroup.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ControlGroup createFromParcel(Parcel parcel) {
            return new ControlGroup(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ControlGroup[] newArray(int i9) {
            return new ControlGroup[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f2519a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2520b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2521c;

    protected ControlGroup(Parcel parcel) {
        this.f2519a = parcel.readInt();
        this.f2520b = parcel.readString();
        this.f2521c = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return String.format(Locale.ENGLISH, "%d:%s:%s", Integer.valueOf(this.f2519a), this.f2520b, this.f2521c);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f2519a);
        parcel.writeString(this.f2520b);
        parcel.writeString(this.f2521c);
    }
}
