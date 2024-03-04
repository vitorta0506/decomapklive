package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class p9 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = "";
        String str2 = str;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        Boolean bool = null;
        ArrayList<String> arrayList = null;
        String str10 = null;
        String str11 = null;
        long j15 = -2147483648L;
        boolean z10 = true;
        boolean z11 = false;
        int i9 = 0;
        boolean z12 = true;
        boolean z13 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 2:
                    str3 = SafeParcelReader.o(parcel, B);
                    break;
                case 3:
                    str4 = SafeParcelReader.o(parcel, B);
                    break;
                case 4:
                    str5 = SafeParcelReader.o(parcel, B);
                    break;
                case 5:
                    str6 = SafeParcelReader.o(parcel, B);
                    break;
                case 6:
                    j10 = SafeParcelReader.E(parcel, B);
                    break;
                case 7:
                    j11 = SafeParcelReader.E(parcel, B);
                    break;
                case 8:
                    str7 = SafeParcelReader.o(parcel, B);
                    break;
                case 9:
                    z10 = SafeParcelReader.v(parcel, B);
                    break;
                case 10:
                    z11 = SafeParcelReader.v(parcel, B);
                    break;
                case 11:
                    j15 = SafeParcelReader.E(parcel, B);
                    break;
                case 12:
                    str8 = SafeParcelReader.o(parcel, B);
                    break;
                case 13:
                    j12 = SafeParcelReader.E(parcel, B);
                    break;
                case 14:
                    j13 = SafeParcelReader.E(parcel, B);
                    break;
                case 15:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                case 16:
                    z12 = SafeParcelReader.v(parcel, B);
                    break;
                case 17:
                case 20:
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
                case 18:
                    z13 = SafeParcelReader.v(parcel, B);
                    break;
                case 19:
                    str9 = SafeParcelReader.o(parcel, B);
                    break;
                case 21:
                    bool = SafeParcelReader.w(parcel, B);
                    break;
                case 22:
                    j14 = SafeParcelReader.E(parcel, B);
                    break;
                case 23:
                    arrayList = SafeParcelReader.q(parcel, B);
                    break;
                case 24:
                    str10 = SafeParcelReader.o(parcel, B);
                    break;
                case 25:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 26:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 27:
                    str11 = SafeParcelReader.o(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzq(str3, str4, str5, str6, j10, j11, str7, z10, z11, j15, str8, j12, j13, i9, z12, z13, str9, bool, j14, arrayList, str10, str, str2, str11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzq[i9];
    }
}
