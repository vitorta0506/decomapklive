package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public class k0 implements Parcelable.Creator<RemoteMessage> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(RemoteMessage remoteMessage, Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.e(parcel, 2, remoteMessage.f13982a, false);
        x3.a.b(parcel, a10);
    }

    @Override // android.os.Parcelable.Creator
    @Nullable
    /* renamed from: a */
    public RemoteMessage createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            if (SafeParcelReader.u(B) != 2) {
                SafeParcelReader.H(parcel, B);
            } else {
                bundle = SafeParcelReader.f(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new RemoteMessage(bundle);
    }

    @Override // android.os.Parcelable.Creator
    @Nullable
    /* renamed from: b */
    public RemoteMessage[] newArray(int i9) {
        return new RemoteMessage[i9];
    }
}
