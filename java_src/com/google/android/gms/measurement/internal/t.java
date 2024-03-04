package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class t implements Parcelable.Creator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzaw zzawVar, Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 2, zzawVar.zza, false);
        x3.a.p(parcel, 3, zzawVar.zzb, i9, false);
        x3.a.q(parcel, 4, zzawVar.zzc, false);
        x3.a.m(parcel, 5, zzawVar.zzd);
        x3.a.b(parcel, a10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        zzau zzauVar = null;
        String str2 = null;
        long j10 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 2) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 == 3) {
                zzauVar = (zzau) SafeParcelReader.n(parcel, B, zzau.CREATOR);
            } else if (u10 == 4) {
                str2 = SafeParcelReader.o(parcel, B);
            } else if (u10 != 5) {
                SafeParcelReader.H(parcel, B);
            } else {
                j10 = SafeParcelReader.E(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzaw(str, zzauVar, str2, j10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzaw[i9];
    }
}
