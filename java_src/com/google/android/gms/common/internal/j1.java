package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class j1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        Bundle bundle = null;
        Feature[] featureArr = null;
        ConnectionTelemetryConfiguration connectionTelemetryConfiguration = null;
        int i9 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                bundle = SafeParcelReader.f(parcel, B);
            } else if (u10 == 2) {
                featureArr = (Feature[]) SafeParcelReader.r(parcel, B, Feature.CREATOR);
            } else if (u10 == 3) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 != 4) {
                SafeParcelReader.H(parcel, B);
            } else {
                connectionTelemetryConfiguration = (ConnectionTelemetryConfiguration) SafeParcelReader.n(parcel, B, ConnectionTelemetryConfiguration.CREATOR);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzj(bundle, featureArr, i9, connectionTelemetryConfiguration);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzj[i9];
    }
}
