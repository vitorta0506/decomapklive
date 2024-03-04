package u3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        int i9 = 0;
        long j10 = -1;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 == 2) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 != 3) {
                SafeParcelReader.H(parcel, B);
            } else {
                j10 = SafeParcelReader.E(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new Feature(str, i9, j10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new Feature[i9];
    }
}
