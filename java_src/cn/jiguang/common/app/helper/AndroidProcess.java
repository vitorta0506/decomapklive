package cn.jiguang.common.app.helper;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class AndroidProcess implements Parcelable {
    public static final Parcelable.Creator<AndroidProcess> CREATOR = new Parcelable.Creator<AndroidProcess>() { // from class: cn.jiguang.common.app.helper.AndroidProcess.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AndroidProcess createFromParcel(Parcel parcel) {
            return new AndroidProcess(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AndroidProcess[] newArray(int i9) {
            return new AndroidProcess[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2530a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2531b;

    protected AndroidProcess(Parcel parcel) {
        this.f2530a = parcel.readString();
        this.f2531b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f2530a);
        parcel.writeInt(this.f2531b);
    }
}
