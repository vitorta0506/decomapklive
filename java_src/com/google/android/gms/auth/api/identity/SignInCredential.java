package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class SignInCredential extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<SignInCredential> CREATOR = new q3.d();
    private final String zba;
    @Nullable
    private final String zbb;
    @Nullable
    private final String zbc;
    @Nullable
    private final String zbd;
    @Nullable
    private final Uri zbe;
    @Nullable
    private final String zbf;
    @Nullable
    private final String zbg;
    @Nullable
    private final String zbh;

    public SignInCredential(@NonNull String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Uri uri, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        this.zba = p.f(str);
        this.zbb = str2;
        this.zbc = str3;
        this.zbd = str4;
        this.zbe = uri;
        this.zbf = str5;
        this.zbg = str6;
        this.zbh = str7;
    }

    @Nullable
    public String I() {
        return this.zbb;
    }

    @Nullable
    public String K() {
        return this.zbd;
    }

    @Nullable
    public String L() {
        return this.zbc;
    }

    @Nullable
    public String M() {
        return this.zbg;
    }

    @NonNull
    public String P() {
        return this.zba;
    }

    @Nullable
    public String R() {
        return this.zbf;
    }

    @Nullable
    public String c0() {
        return this.zbh;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SignInCredential) {
            SignInCredential signInCredential = (SignInCredential) obj;
            return n.b(this.zba, signInCredential.zba) && n.b(this.zbb, signInCredential.zbb) && n.b(this.zbc, signInCredential.zbc) && n.b(this.zbd, signInCredential.zbd) && n.b(this.zbe, signInCredential.zbe) && n.b(this.zbf, signInCredential.zbf) && n.b(this.zbg, signInCredential.zbg) && n.b(this.zbh, signInCredential.zbh);
        }
        return false;
    }

    @Nullable
    public Uri f0() {
        return this.zbe;
    }

    public int hashCode() {
        return n.c(this.zba, this.zbb, this.zbc, this.zbd, this.zbe, this.zbf, this.zbg, this.zbh);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, P(), false);
        x3.a.q(parcel, 2, I(), false);
        x3.a.q(parcel, 3, L(), false);
        x3.a.q(parcel, 4, K(), false);
        x3.a.p(parcel, 5, f0(), i9, false);
        x3.a.q(parcel, 6, R(), false);
        x3.a.q(parcel, 7, M(), false);
        x3.a.q(parcel, 8, c0(), false);
        x3.a.b(parcel, a10);
    }
}
