package com.google.android.gms.internal.recaptcha;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class n3 implements o2<File> {

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicInteger f8906b = new AtomicInteger();

    /* renamed from: a  reason: collision with root package name */
    private boolean f8907a = false;

    private n3() {
    }

    public static n3 b() {
        return new n3();
    }

    @Override // com.google.android.gms.internal.recaptcha.o2
    public final /* bridge */ /* synthetic */ File a(n2 n2Var) throws IOException {
        if (this.f8907a) {
            if (!n2Var.e()) {
                return n2Var.b().a(n2Var.a());
            }
            throw new zzew("Short circuit would skip transforms.");
        }
        f3 a10 = f3.a(o3.c(n2Var));
        try {
            if (a10.c() instanceof d3) {
                File zza = ((d3) a10.c()).zza();
                a10.close();
                return zza;
            }
            throw new IOException("Not convertible and fallback to pipe is disabled.");
        } catch (Throwable th2) {
            try {
                a10.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final n3 c() {
        this.f8907a = true;
        return this;
    }
}
