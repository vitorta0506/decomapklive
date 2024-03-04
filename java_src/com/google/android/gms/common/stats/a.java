package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        String str = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        float f10 = 0.0f;
        boolean z10 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                case 2:
                    j10 = SafeParcelReader.E(parcel, B);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
                case 4:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 5:
                    i11 = SafeParcelReader.D(parcel, B);
                    break;
                case 6:
                    arrayList = SafeParcelReader.q(parcel, B);
                    break;
                case 8:
                    j11 = SafeParcelReader.E(parcel, B);
                    break;
                case 10:
                    str3 = SafeParcelReader.o(parcel, B);
                    break;
                case 11:
                    i10 = SafeParcelReader.D(parcel, B);
                    break;
                case 12:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 13:
                    str4 = SafeParcelReader.o(parcel, B);
                    break;
                case 14:
                    i12 = SafeParcelReader.D(parcel, B);
                    break;
                case 15:
                    f10 = SafeParcelReader.z(parcel, B);
                    break;
                case 16:
                    j12 = SafeParcelReader.E(parcel, B);
                    break;
                case 17:
                    str5 = SafeParcelReader.o(parcel, B);
                    break;
                case 18:
                    z10 = SafeParcelReader.v(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new WakeLockEvent(i9, j10, i10, str, i11, arrayList, str2, j11, i12, str3, str4, f10, j12, str5, z10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new WakeLockEvent[i9];
    }
}
