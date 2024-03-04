package io.grpc.netty.shaded.io.netty.util;

import io.grpc.netty.shaded.io.netty.util.internal.c0;
import java.util.Locale;
/* loaded from: classes5.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final a f45233a = new a();

    /* loaded from: classes5.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f45234a;

        a() {
        }

        synchronized int a() {
            if (this.f45234a == 0) {
                b(c0.e("io.grpc.netty.shaded.io.netty.availableProcessors", Runtime.getRuntime().availableProcessors()));
            }
            return this.f45234a;
        }

        synchronized void b(int i9) {
            io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, "availableProcessors");
            int i10 = this.f45234a;
            if (i10 == 0) {
                this.f45234a = i9;
            } else {
                throw new IllegalStateException(String.format(Locale.ROOT, "availableProcessors is already set to [%d], rejecting [%d]", Integer.valueOf(i10), Integer.valueOf(i9)));
            }
        }
    }

    public static int a() {
        return f45233a.a();
    }
}
