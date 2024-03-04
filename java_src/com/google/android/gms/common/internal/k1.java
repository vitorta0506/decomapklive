package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class k1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        RootTelemetryConfiguration rootTelemetryConfiguration = null;
        int[] iArr = null;
        int[] iArr2 = null;
        boolean z10 = false;
        boolean z11 = false;
        int i9 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    rootTelemetryConfiguration = (RootTelemetryConfiguration) SafeParcelReader.n(parcel, B, RootTelemetryConfiguration.CREATOR);
                    break;
                case 2:
                    z10 = SafeParcelReader.v(parcel, B);
                    break;
                case 3:
                    z11 = SafeParcelReader.v(parcel, B);
                    break;
                case 4:
                    iArr = SafeParcelReader.j(parcel, B);
                    break;
                case 5:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                case 6:
                    iArr2 = SafeParcelReader.j(parcel, B);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new ConnectionTelemetryConfiguration(rootTelemetryConfiguration, z10, z11, iArr, i9, iArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new ConnectionTelemetryConfiguration[i9];
    }
}
