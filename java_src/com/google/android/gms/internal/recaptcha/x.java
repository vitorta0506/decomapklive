package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
/* loaded from: classes2.dex */
public final class x extends com.google.android.gms.common.internal.f<g> {
    public x(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, v3.c cVar, v3.h hVar) {
        super(context, looper, 205, eVar, cVar, hVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    @NonNull
    public final String B() {
        return "com.google.android.gms.recaptcha.internal.IRecaptchaService";
    }

    @Override // com.google.android.gms.common.internal.d
    @NonNull
    protected final String C() {
        return "com.google.android.gms.recaptcha.service.START";
    }

    @Override // com.google.android.gms.common.internal.d
    public final boolean P() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int k() {
        return 18223000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    @Nullable
    public final /* bridge */ /* synthetic */ IInterface p(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.recaptcha.internal.IRecaptchaService");
        if (queryLocalInterface instanceof g) {
            return (g) queryLocalInterface;
        }
        return new g(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    public final Feature[] s() {
        return com.google.android.gms.recaptcha.d.f10116e;
    }
}
