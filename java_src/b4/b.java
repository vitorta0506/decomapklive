package b4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.moduleinstall.internal.ApiFeatureRequest;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        ArrayList arrayList = null;
        String str = null;
        String str2 = null;
        boolean z10 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                arrayList = SafeParcelReader.s(parcel, B, Feature.CREATOR);
            } else if (u10 == 2) {
                z10 = SafeParcelReader.v(parcel, B);
            } else if (u10 == 3) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 != 4) {
                SafeParcelReader.H(parcel, B);
            } else {
                str2 = SafeParcelReader.o(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new ApiFeatureRequest(arrayList, z10, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new ApiFeatureRequest[i9];
    }
}
