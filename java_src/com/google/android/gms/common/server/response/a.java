package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes2.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        String str2 = null;
        zaa zaaVar = null;
        int i9 = 0;
        int i10 = 0;
        boolean z10 = false;
        int i11 = 0;
        boolean z11 = false;
        int i12 = 0;
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
                    z10 = SafeParcelReader.v(parcel, B);
                    break;
                case 4:
                    i11 = SafeParcelReader.D(parcel, B);
                    break;
                case 5:
                    z11 = SafeParcelReader.v(parcel, B);
                    break;
                case 6:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 7:
                    i12 = SafeParcelReader.D(parcel, B);
                    break;
                case 8:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 9:
                    zaaVar = (zaa) SafeParcelReader.n(parcel, B, zaa.CREATOR);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new FastJsonResponse.Field(i9, i10, z10, i11, z11, str, i12, str2, zaaVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new FastJsonResponse.Field[i9];
    }
}
