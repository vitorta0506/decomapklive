package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepName;
@KeepName
/* loaded from: classes2.dex */
public final class BinderWrapper implements Parcelable {
    @NonNull
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new h1();
    private IBinder zza;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        parcel.writeStrongBinder(this.zza);
    }
}
