package r4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.signin.internal.zag;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        ArrayList<String> arrayList = null;
        String str = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                arrayList = SafeParcelReader.q(parcel, B);
            } else if (u10 != 2) {
                SafeParcelReader.H(parcel, B);
            } else {
                str = SafeParcelReader.o(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zag(arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zag[i9];
    }
}
