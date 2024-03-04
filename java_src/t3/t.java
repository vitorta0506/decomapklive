package t3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class t implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        GoogleSignInOptions googleSignInOptions = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 2) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 != 5) {
                SafeParcelReader.H(parcel, B);
            } else {
                googleSignInOptions = (GoogleSignInOptions) SafeParcelReader.n(parcel, B, GoogleSignInOptions.CREATOR);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new SignInConfiguration(str, googleSignInOptions);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new SignInConfiguration[i9];
    }
}
