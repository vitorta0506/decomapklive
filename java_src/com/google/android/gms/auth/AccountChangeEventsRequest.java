package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f7341a;

    /* renamed from: b  reason: collision with root package name */
    int f7342b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    String f7343c;

    /* renamed from: d  reason: collision with root package name */
    Account f7344d;

    public AccountChangeEventsRequest() {
        this.f7341a = 1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7341a);
        x3.a.k(parcel, 2, this.f7342b);
        x3.a.q(parcel, 3, this.f7343c, false);
        x3.a.p(parcel, 4, this.f7344d, i9, false);
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountChangeEventsRequest(int i9, int i10, String str, Account account) {
        this.f7341a = i9;
        this.f7342b = i10;
        this.f7343c = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.f7344d = account;
        } else {
            this.f7344d = new Account(str, "com.google");
        }
    }
}
