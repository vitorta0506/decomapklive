package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<SignInAccount> CREATOR = new g();
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    String f7378a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    String f7379b;
    private GoogleSignInAccount zbc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.zbc = googleSignInAccount;
        this.f7378a = p.g(str, "8.3 and 8.4 SDKs require non-null email");
        this.f7379b = p.g(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    @Nullable
    public final GoogleSignInAccount I() {
        return this.zbc;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 4, this.f7378a, false);
        x3.a.p(parcel, 7, this.zbc, i9, false);
        x3.a.q(parcel, 8, this.f7379b, false);
        x3.a.b(parcel, a10);
    }
}
