package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        String str = null;
        String str2 = null;
        zzlc zzlcVar = null;
        String str3 = null;
        zzaw zzawVar = null;
        zzaw zzawVar2 = null;
        zzaw zzawVar3 = null;
        boolean z10 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 2:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 3:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 4:
                    zzlcVar = (zzlc) SafeParcelReader.n(parcel, B, zzlc.CREATOR);
                    break;
                case 5:
                    j10 = SafeParcelReader.E(parcel, B);
                    break;
                case 6:
                    z10 = SafeParcelReader.v(parcel, B);
                    break;
                case 7:
                    str3 = SafeParcelReader.o(parcel, B);
                    break;
                case 8:
                    zzawVar = (zzaw) SafeParcelReader.n(parcel, B, zzaw.CREATOR);
                    break;
                case 9:
                    j11 = SafeParcelReader.E(parcel, B);
                    break;
                case 10:
                    zzawVar2 = (zzaw) SafeParcelReader.n(parcel, B, zzaw.CREATOR);
                    break;
                case 11:
                    j12 = SafeParcelReader.E(parcel, B);
                    break;
                case 12:
                    zzawVar3 = (zzaw) SafeParcelReader.n(parcel, B, zzaw.CREATOR);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzac(str, str2, zzlcVar, j10, z10, str3, zzawVar, j11, zzawVar2, j12, zzawVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzac[i9];
    }
}
