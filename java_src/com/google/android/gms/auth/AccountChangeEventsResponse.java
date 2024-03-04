package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class AccountChangeEventsResponse extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    final int f7345a;

    /* renamed from: b  reason: collision with root package name */
    final List f7346b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountChangeEventsResponse(int i9, List list) {
        this.f7345a = i9;
        this.f7346b = (List) p.j(list);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7345a);
        x3.a.u(parcel, 2, this.f7346b, false);
        x3.a.b(parcel, a10);
    }
}
