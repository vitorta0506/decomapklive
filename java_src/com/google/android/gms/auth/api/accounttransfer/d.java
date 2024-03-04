package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;
/* loaded from: classes2.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        HashSet hashSet = new HashSet();
        String str = null;
        byte[] bArr = null;
        PendingIntent pendingIntent = null;
        DeviceMetaData deviceMetaData = null;
        int i9 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    i9 = SafeParcelReader.D(parcel, B);
                    hashSet.add(1);
                    break;
                case 2:
                    str = SafeParcelReader.o(parcel, B);
                    hashSet.add(2);
                    break;
                case 3:
                    i10 = SafeParcelReader.D(parcel, B);
                    hashSet.add(3);
                    break;
                case 4:
                    bArr = SafeParcelReader.g(parcel, B);
                    hashSet.add(4);
                    break;
                case 5:
                    pendingIntent = (PendingIntent) SafeParcelReader.n(parcel, B, PendingIntent.CREATOR);
                    hashSet.add(5);
                    break;
                case 6:
                    deviceMetaData = (DeviceMetaData) SafeParcelReader.n(parcel, B, DeviceMetaData.CREATOR);
                    hashSet.add(6);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        if (parcel.dataPosition() == I) {
            return new zzw(hashSet, i9, str, i10, bArr, pendingIntent, deviceMetaData);
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + I, parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzw[i9];
    }
}
