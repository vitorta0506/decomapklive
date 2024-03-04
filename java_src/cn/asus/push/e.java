package cn.asus.push;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
final class e implements Parcelable.Creator<DataBuffer> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataBuffer createFromParcel(Parcel parcel) {
        return new DataBuffer(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ DataBuffer[] newArray(int i9) {
        return new DataBuffer[i9];
    }
}
