package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.net.URLConnection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class z implements i9 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a0 f9209a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(a0 a0Var) {
        this.f9209a = a0Var;
    }

    @Override // com.google.android.gms.internal.recaptcha.i9
    public final /* bridge */ /* synthetic */ URLConnection zza() throws IOException {
        return a0.c(this.f9209a);
    }
}
