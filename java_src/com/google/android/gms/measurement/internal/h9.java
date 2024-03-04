package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class h9 implements Parcelable.Creator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzlc zzlcVar, Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, zzlcVar.zza);
        x3.a.q(parcel, 2, zzlcVar.zzb, false);
        x3.a.m(parcel, 3, zzlcVar.zzc);
        x3.a.n(parcel, 4, zzlcVar.zzd, false);
        x3.a.i(parcel, 5, null, false);
        x3.a.q(parcel, 6, zzlcVar.zze, false);
        x3.a.q(parcel, 7, zzlcVar.zzf, false);
        x3.a.g(parcel, 8, zzlcVar.zzg, false);
        x3.a.b(parcel, a10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        Long l10 = null;
        Float f10 = null;
        String str2 = null;
        String str3 = null;
        Double d10 = null;
        long j10 = 0;
        int i9 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                case 2:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 3:
                    j10 = SafeParcelReader.E(parcel, B);
                    break;
                case 4:
                    l10 = SafeParcelReader.F(parcel, B);
                    break;
                case 5:
                    f10 = SafeParcelReader.A(parcel, B);
                    break;
                case 6:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 7:
                    str3 = SafeParcelReader.o(parcel, B);
                    break;
                case 8:
                    d10 = SafeParcelReader.y(parcel, B);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzlc(i9, str, j10, l10, f10, str2, str3, d10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzlc[i9];
    }
}
