package com.google.android.gms.cloudmessaging;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
final class e implements Parcelable.Creator<zzd> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzd createFromParcel(Parcel parcel) {
        return new zzd(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzd[] newArray(int i9) {
        return new zzd[i9];
    }
}
