package c4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.FavaDiagnosticsEntity;
/* loaded from: classes2.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        int i9 = 0;
        String str = null;
        int i10 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 2) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 != 3) {
                SafeParcelReader.H(parcel, B);
            } else {
                i10 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new FavaDiagnosticsEntity(i9, str, i10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new FavaDiagnosticsEntity[i9];
    }
}
