package q3;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 2:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 3:
                    str3 = SafeParcelReader.o(parcel, B);
                    break;
                case 4:
                    str4 = SafeParcelReader.o(parcel, B);
                    break;
                case 5:
                    uri = (Uri) SafeParcelReader.n(parcel, B, Uri.CREATOR);
                    break;
                case 6:
                    str5 = SafeParcelReader.o(parcel, B);
                    break;
                case 7:
                    str6 = SafeParcelReader.o(parcel, B);
                    break;
                case 8:
                    str7 = SafeParcelReader.o(parcel, B);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new SignInCredential(str, str2, str3, str4, uri, str5, str6, str7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new SignInCredential[i9];
    }
}
