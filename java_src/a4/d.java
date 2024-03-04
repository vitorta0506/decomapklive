package a4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.moduleinstall.ModuleInstallStatusUpdate;
/* loaded from: classes2.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        Long l10 = null;
        Long l11 = null;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 2) {
                i10 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 3) {
                l10 = SafeParcelReader.F(parcel, B);
            } else if (u10 == 4) {
                l11 = SafeParcelReader.F(parcel, B);
            } else if (u10 != 5) {
                SafeParcelReader.H(parcel, B);
            } else {
                i11 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new ModuleInstallStatusUpdate(i9, i10, l10, l11, i11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new ModuleInstallStatusUpdate[i9];
    }
}
