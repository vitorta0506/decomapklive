package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f7382a;
    private int zab;
    private Bundle zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInOptionsExtensionParcelable(int i9, int i10, Bundle bundle) {
        this.f7382a = i9;
        this.zab = i10;
        this.zac = bundle;
    }

    public int I() {
        return this.zab;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7382a);
        x3.a.k(parcel, 2, I());
        x3.a.e(parcel, 3, this.zac, false);
        x3.a.b(parcel, a10);
    }
}
