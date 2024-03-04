package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class i0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        String str2 = null;
        long j10 = 0;
        long j11 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = -1;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                case 2:
                    i10 = SafeParcelReader.D(parcel, B);
                    break;
                case 3:
                    i11 = SafeParcelReader.D(parcel, B);
                    break;
                case 4:
                    j10 = SafeParcelReader.E(parcel, B);
                    break;
                case 5:
                    j11 = SafeParcelReader.E(parcel, B);
                    break;
                case 6:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 7:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 8:
                    i12 = SafeParcelReader.D(parcel, B);
                    break;
                case 9:
                    i13 = SafeParcelReader.D(parcel, B);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new MethodInvocation(i9, i10, i11, j10, j11, str, str2, i12, i13);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new MethodInvocation[i9];
    }
}
