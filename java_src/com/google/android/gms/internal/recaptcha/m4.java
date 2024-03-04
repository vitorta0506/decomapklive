package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class m4 {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Uri, h4<?>> f8858a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Uri, j4<?>> f8859b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Executor f8860c;

    /* renamed from: d  reason: collision with root package name */
    private final p2 f8861d;

    /* renamed from: e  reason: collision with root package name */
    private final dc<Uri, String> f8862e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, p5> f8863f;

    /* renamed from: g  reason: collision with root package name */
    private final t5 f8864g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public m4(Executor executor, Executor executor2, p2 p2Var, t5 t5Var, Map<String, p5> map, w5 w5Var) {
        Objects.requireNonNull(executor);
        this.f8860c = executor;
        Objects.requireNonNull(executor2);
        this.f8861d = executor2;
        this.f8864g = p2Var;
        this.f8863f = t5Var;
        z7.e(!t5Var.isEmpty());
        this.f8862e = new dc() { // from class: com.google.android.gms.internal.recaptcha.l4
            @Override // com.google.android.gms.internal.recaptcha.dc
            public final nd a(Object obj) {
                Uri uri = (Uri) obj;
                return dd.f("");
            }
        };
    }

    private final synchronized <T extends gh> h4<T> b(j4<T> j4Var) {
        h4<T> h4Var;
        Uri a10 = j4Var.a();
        h4Var = (h4<T>) this.f8858a.get(a10);
        if (h4Var == null) {
            Uri a11 = j4Var.a();
            z7.g(a11.isHierarchical(), "Uri must be hierarchical: %s", a11);
            String c10 = g8.c(a11.getLastPathSegment());
            int lastIndexOf = c10.lastIndexOf(46);
            boolean z10 = true;
            z7.g((lastIndexOf == -1 ? "" : c10.substring(lastIndexOf + 1)).equals("pb"), "Uri extension must be .pb: %s", a11);
            p5 p5Var = this.f8863f.get("singleproc");
            if (p5Var == null) {
                z10 = false;
            }
            z7.g(z10, "No XDataStoreVariantFactory registered for ID %s", "singleproc");
            String c11 = g8.c(j4Var.a().getLastPathSegment());
            int lastIndexOf2 = c11.lastIndexOf(46);
            if (lastIndexOf2 != -1) {
                c11 = c11.substring(0, lastIndexOf2);
            }
            h4Var = new h4<>(p5Var.a(j4Var, c11, this.f8860c, this.f8861d, 1), this.f8864g, dd.k(dd.f(j4Var.a()), this.f8862e, ud.b()), j4Var.f(), j4Var.e(), null);
            zzkj<b4<T>> c12 = j4Var.c();
            if (!c12.isEmpty()) {
                h4Var.n(g4.b(c12, this.f8860c));
            }
            this.f8858a.put(a10, h4Var);
            this.f8859b.put(a10, j4Var);
        } else {
            z7.g(j4Var.equals(this.f8859b.get(a10)), "Arguments must match previous call for Uri: %s", a10);
        }
        return h4Var;
    }

    public final <T extends gh> h4<T> a(j4<T> j4Var) {
        return b(j4Var);
    }
}
