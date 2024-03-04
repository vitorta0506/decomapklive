package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import t3.t;
/* loaded from: classes2.dex */
public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new t();
    private final String zba;
    private GoogleSignInOptions zbb;

    public SignInConfiguration(@NonNull String str, @NonNull GoogleSignInOptions googleSignInOptions) {
        this.zba = p.f(str);
        this.zbb = googleSignInOptions;
    }

    @NonNull
    public final GoogleSignInOptions I() {
        return this.zbb;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof SignInConfiguration) {
            SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
            if (this.zba.equals(signInConfiguration.zba)) {
                GoogleSignInOptions googleSignInOptions = this.zbb;
                GoogleSignInOptions googleSignInOptions2 = signInConfiguration.zbb;
                if (googleSignInOptions == null) {
                    if (googleSignInOptions2 == null) {
                        return true;
                    }
                } else if (googleSignInOptions.equals(googleSignInOptions2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return new t3.a().a(this.zba).a(this.zbb).b();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 2, this.zba, false);
        x3.a.p(parcel, 5, this.zbb, i9, false);
        x3.a.b(parcel, a10);
    }
}
