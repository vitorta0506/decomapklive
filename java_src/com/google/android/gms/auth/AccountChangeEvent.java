package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
/* loaded from: classes2.dex */
public class AccountChangeEvent extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f7335a;

    /* renamed from: b  reason: collision with root package name */
    final long f7336b;

    /* renamed from: c  reason: collision with root package name */
    final String f7337c;

    /* renamed from: d  reason: collision with root package name */
    final int f7338d;

    /* renamed from: e  reason: collision with root package name */
    final int f7339e;

    /* renamed from: f  reason: collision with root package name */
    final String f7340f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountChangeEvent(int i9, long j10, String str, int i10, int i11, String str2) {
        this.f7335a = i9;
        this.f7336b = j10;
        this.f7337c = (String) p.j(str);
        this.f7338d = i10;
        this.f7339e = i11;
        this.f7340f = str2;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof AccountChangeEvent) {
            if (obj == this) {
                return true;
            }
            AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
            return this.f7335a == accountChangeEvent.f7335a && this.f7336b == accountChangeEvent.f7336b && n.b(this.f7337c, accountChangeEvent.f7337c) && this.f7338d == accountChangeEvent.f7338d && this.f7339e == accountChangeEvent.f7339e && n.b(this.f7340f, accountChangeEvent.f7340f);
        }
        return false;
    }

    public int hashCode() {
        return n.c(Integer.valueOf(this.f7335a), Long.valueOf(this.f7336b), this.f7337c, Integer.valueOf(this.f7338d), Integer.valueOf(this.f7339e), this.f7340f);
    }

    @NonNull
    public String toString() {
        int i9 = this.f7338d;
        String str = i9 != 1 ? i9 != 2 ? i9 != 3 ? i9 != 4 ? GrsBaseInfo.CountryCodeSource.UNKNOWN : "RENAMED_TO" : "RENAMED_FROM" : "REMOVED" : "ADDED";
        String str2 = this.f7337c;
        String str3 = this.f7340f;
        int i10 = this.f7339e;
        return "AccountChangeEvent {accountName = " + str2 + ", changeType = " + str + ", changeData = " + str3 + ", eventIndex = " + i10 + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7335a);
        x3.a.m(parcel, 2, this.f7336b);
        x3.a.q(parcel, 3, this.f7337c, false);
        x3.a.k(parcel, 4, this.f7338d);
        x3.a.k(parcel, 5, this.f7339e);
        x3.a.q(parcel, 6, this.f7340f, false);
        x3.a.b(parcel, a10);
    }
}
