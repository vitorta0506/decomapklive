package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zat> CREATOR = new n0();

    /* renamed from: a  reason: collision with root package name */
    final int f7800a;
    private final Account zab;
    private final int zac;
    @Nullable
    private final GoogleSignInAccount zad;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zat(int i9, Account account, int i10, @Nullable GoogleSignInAccount googleSignInAccount) {
        this.f7800a = i9;
        this.zab = account;
        this.zac = i10;
        this.zad = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7800a);
        x3.a.p(parcel, 2, this.zab, i9, false);
        x3.a.k(parcel, 3, this.zac);
        x3.a.p(parcel, 4, this.zad, i9, false);
        x3.a.b(parcel, a10);
    }

    public zat(Account account, int i9, @Nullable GoogleSignInAccount googleSignInAccount) {
        this(2, account, i9, googleSignInAccount);
    }
}
