package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class f implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        PendingIntent pendingIntent = null;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        String str3 = null;
        int i9 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    pendingIntent = (PendingIntent) SafeParcelReader.n(parcel, B, PendingIntent.CREATOR);
                    break;
                case 2:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 3:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 4:
                    arrayList = SafeParcelReader.q(parcel, B);
                    break;
                case 5:
                    str3 = SafeParcelReader.o(parcel, B);
                    break;
                case 6:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new SaveAccountLinkingTokenRequest(pendingIntent, str, str2, arrayList, str3, i9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new SaveAccountLinkingTokenRequest[i9];
    }
}
