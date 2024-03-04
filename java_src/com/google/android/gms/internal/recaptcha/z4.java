package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class z4<T> implements o5<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f9214a;

    /* renamed from: b  reason: collision with root package name */
    private final nd<Uri> f9215b;

    /* renamed from: c  reason: collision with root package name */
    private final o4<T> f9216c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f9217d;

    /* renamed from: e  reason: collision with root package name */
    private final p2 f9218e;

    /* renamed from: f  reason: collision with root package name */
    private final z3<T> f9219f;

    /* renamed from: g  reason: collision with root package name */
    private final m6 f9220g;

    /* renamed from: h  reason: collision with root package name */
    private final Object f9221h = new Object();

    /* renamed from: i  reason: collision with root package name */
    private final rc f9222i = rc.c();

    /* renamed from: j  reason: collision with root package name */
    private nd<T> f9223j = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z4(String str, nd<Uri> ndVar, o4<T> o4Var, Executor executor, p2 p2Var, z3<T> z3Var, m6 m6Var) {
        this.f9214a = str;
        this.f9215b = dd.h(ndVar);
        this.f9216c = o4Var;
        this.f9217d = ud.c(executor);
        this.f9218e = p2Var;
        this.f9219f = z3Var;
        this.f9220g = m6Var;
    }

    public static p5 c() {
        return y4.b();
    }

    private final nd<T> l() {
        nd<T> ndVar;
        synchronized (this.f9221h) {
            nd<T> ndVar2 = this.f9223j;
            if (ndVar2 != null && ndVar2.isDone()) {
                try {
                    dd.l(this.f9223j);
                } catch (ExecutionException unused) {
                    this.f9223j = null;
                }
            }
            if (this.f9223j == null) {
                this.f9223j = dd.h(this.f9222i.d(y6.b(new cc() { // from class: com.google.android.gms.internal.recaptcha.r4
                    @Override // com.google.android.gms.internal.recaptcha.cc
                    public final nd zza() {
                        return z4.this.j();
                    }
                }), this.f9217d));
            }
            ndVar = this.f9223j;
        }
        return ndVar;
    }

    private final T m(Uri uri) throws IOException {
        try {
            try {
                m6 m6Var = this.f9220g;
                String valueOf = String.valueOf(this.f9214a);
                q6 b10 = m6Var.b(valueOf.length() != 0 ? "Read ".concat(valueOf) : new String("Read "), 1);
                try {
                    InputStream inputStream = (InputStream) this.f9218e.a(uri, o3.b());
                    o4<T> o4Var = this.f9216c;
                    T t10 = (T) ((v5) o4Var).b().M().a(inputStream, ((v5) o4Var).a());
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    b10.close();
                    return t10;
                } catch (Throwable th2) {
                    try {
                        b10.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (FileNotFoundException e10) {
                if (!this.f9218e.d(uri)) {
                    return this.f9216c.zza();
                }
                throw e10;
            }
        } catch (IOException e11) {
            throw q5.a(this.f9218e, uri, e11);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.o5
    public final nd<T> a(m5 m5Var) {
        return l();
    }

    @Override // com.google.android.gms.internal.recaptcha.o5
    public final nd<Void> b(final dc<? super T, T> dcVar, final Executor executor, n5 n5Var) {
        final nd<T> l10 = l();
        return this.f9222i.d(y6.b(new cc() { // from class: com.google.android.gms.internal.recaptcha.s4
            @Override // com.google.android.gms.internal.recaptcha.cc
            public final nd zza() {
                final z4 z4Var = z4.this;
                nd ndVar = l10;
                dc dcVar2 = dcVar;
                Executor executor2 = executor;
                final nd k10 = dd.k(ndVar, new dc() { // from class: com.google.android.gms.internal.recaptcha.t4
                    @Override // com.google.android.gms.internal.recaptcha.dc
                    public final nd a(Object obj) {
                        return z4.this.d(obj);
                    }
                }, ud.b());
                final nd k11 = dd.k(k10, dcVar2, executor2);
                return dd.k(k11, y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.x4
                    @Override // com.google.android.gms.internal.recaptcha.dc
                    public final nd a(Object obj) {
                        return z4.this.h(k10, k11, obj);
                    }
                }), ud.b());
            }
        }), ud.b());
    }

    public final /* synthetic */ nd d(Object obj) throws Exception {
        nd<T> ndVar;
        synchronized (this.f9221h) {
            ndVar = this.f9223j;
        }
        return ndVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.o5
    public final String e() {
        return this.f9214a;
    }

    public final /* synthetic */ nd f() throws Exception {
        return dd.h(dd.k(this.f9215b, y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.u4
            @Override // com.google.android.gms.internal.recaptcha.dc
            public final nd a(Object obj) {
                return z4.this.i((Uri) obj);
            }
        }), this.f9217d));
    }

    public final /* synthetic */ nd g(Void r12) throws Exception {
        return dd.f(m((Uri) dd.l(this.f9215b)));
    }

    public final /* synthetic */ nd h(nd ndVar, final nd ndVar2, Object obj) throws Exception {
        if (!dd.l(ndVar).equals(dd.l(ndVar2))) {
            nd k10 = dd.k(ndVar2, y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.w4
                @Override // com.google.android.gms.internal.recaptcha.dc
                public final nd a(Object obj2) {
                    return z4.this.k(ndVar2, obj2);
                }
            }), this.f9217d);
            synchronized (this.f9221h) {
            }
            return k10;
        }
        return dd.g();
    }

    public final /* synthetic */ nd i(Uri uri) throws Exception {
        Uri a10 = r5.a(uri, ".bak");
        try {
            if (this.f9218e.d(a10)) {
                this.f9218e.c(a10, uri);
            }
            return dd.g();
        } catch (IOException e10) {
            return dd.e(e10);
        }
    }

    public final /* synthetic */ nd j() throws Exception {
        try {
            return dd.f(m((Uri) dd.l(this.f9215b)));
        } catch (IOException e10) {
            if (!(e10 instanceof zzes) && !(e10.getCause() instanceof zzes)) {
                return dd.k(dd.e(e10), y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.v4
                    @Override // com.google.android.gms.internal.recaptcha.dc
                    public final nd a(Object obj) {
                        return z4.this.g((Void) obj);
                    }
                }), this.f9217d);
            }
            return dd.e(e10);
        }
    }

    public final /* synthetic */ nd k(nd ndVar, Object obj) throws Exception {
        Uri uri = (Uri) dd.l(this.f9215b);
        Uri a10 = r5.a(uri, ".tmp");
        try {
            m6 m6Var = this.f9220g;
            String valueOf = String.valueOf(this.f9214a);
            q6 b10 = m6Var.b(valueOf.length() != 0 ? "Write ".concat(valueOf) : new String("Write "), 1);
            c3 c3Var = new c3();
            try {
                p2 p2Var = this.f9218e;
                p3 b11 = p3.b();
                b11.c(c3Var);
                OutputStream outputStream = (OutputStream) p2Var.a(a10, b11);
                try {
                    ((gh) obj).d(outputStream);
                    c3Var.b();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    b10.close();
                    this.f9218e.c(a10, uri);
                    synchronized (this.f9221h) {
                        this.f9223j = ndVar;
                    }
                    return dd.g();
                } catch (Throwable th2) {
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            } catch (IOException e10) {
                throw q5.a(this.f9218e, uri, e10);
            }
        } catch (IOException e11) {
            if (this.f9218e.d(a10)) {
                try {
                    this.f9218e.b(a10);
                } catch (IOException e12) {
                    e11.addSuppressed(e12);
                }
            }
            throw e11;
        }
    }
}
