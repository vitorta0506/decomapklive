package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        int i9 = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i10 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.n(parcel, B, ParcelFileDescriptor.CREATOR);
            } else if (u10 != 3) {
                SafeParcelReader.H(parcel, B);
            } else {
                i10 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new BitmapTeleporter(i9, parcelFileDescriptor, i10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new BitmapTeleporter[i9];
    }
}
