package a4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;
/* loaded from: classes2.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        int i9 = 0;
        boolean z10 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 != 2) {
                SafeParcelReader.H(parcel, B);
            } else {
                z10 = SafeParcelReader.v(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new ModuleInstallResponse(i9, z10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new ModuleInstallResponse[i9];
    }
}
