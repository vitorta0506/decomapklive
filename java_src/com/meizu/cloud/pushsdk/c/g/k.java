package com.meizu.cloud.pushsdk.c.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static j f28504a;

    /* renamed from: b  reason: collision with root package name */
    private static long f28505b;

    private k() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j a() {
        synchronized (k.class) {
            j jVar = f28504a;
            if (jVar != null) {
                f28504a = jVar.f28502f;
                jVar.f28502f = null;
                f28505b -= 2048;
                return jVar;
            }
            return new j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(j jVar) {
        if (jVar.f28502f != null || jVar.f28503g != null) {
            throw new IllegalArgumentException();
        }
        if (jVar.f28500d) {
            return;
        }
        synchronized (k.class) {
            long j10 = f28505b;
            if (j10 + 2048 > 65536) {
                return;
            }
            f28505b = j10 + 2048;
            jVar.f28502f = f28504a;
            jVar.f28499c = 0;
            jVar.f28498b = 0;
            f28504a = jVar;
        }
    }
}
