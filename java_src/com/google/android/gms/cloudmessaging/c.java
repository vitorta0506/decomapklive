package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class c implements Parcelable.Creator<CloudMessage> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ CloudMessage createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            if (SafeParcelReader.u(B) != 1) {
                SafeParcelReader.H(parcel, B);
            } else {
                intent = (Intent) SafeParcelReader.n(parcel, B, Intent.CREATOR);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new CloudMessage(intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ CloudMessage[] newArray(int i9) {
        return new CloudMessage[i9];
    }
}
