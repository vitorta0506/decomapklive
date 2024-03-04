package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class SignInPassword extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<SignInPassword> CREATOR = new q3.e();
    private final String zba;
    private final String zbb;

    public SignInPassword(@NonNull String str, @NonNull String str2) {
        this.zba = p.g(((String) p.k(str, "Account identifier cannot be null")).trim(), "Account identifier cannot be empty");
        this.zbb = p.f(str2);
    }

    @NonNull
    public String I() {
        return this.zba;
    }

    @NonNull
    public String K() {
        return this.zbb;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SignInPassword) {
            SignInPassword signInPassword = (SignInPassword) obj;
            return n.b(this.zba, signInPassword.zba) && n.b(this.zbb, signInPassword.zbb);
        }
        return false;
    }

    public int hashCode() {
        return n.c(this.zba, this.zbb);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, I(), false);
        x3.a.q(parcel, 2, K(), false);
        x3.a.b(parcel, a10);
    }
}
