package j4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.p000authapi.zbp;
/* loaded from: classes2.dex */
public final class g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        Credential credential = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            if (SafeParcelReader.u(B) != 1) {
                SafeParcelReader.H(parcel, B);
            } else {
                credential = (Credential) SafeParcelReader.n(parcel, B, Credential.CREATOR);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zbp(credential);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zbp[i9];
    }
}
