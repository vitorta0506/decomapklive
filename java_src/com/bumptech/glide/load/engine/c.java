package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.f;
import j0.n;
import java.io.File;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements f, d.a<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final List<e0.b> f4262a;

    /* renamed from: b  reason: collision with root package name */
    private final g<?> f4263b;

    /* renamed from: c  reason: collision with root package name */
    private final f.a f4264c;

    /* renamed from: d  reason: collision with root package name */
    private int f4265d;

    /* renamed from: e  reason: collision with root package name */
    private e0.b f4266e;

    /* renamed from: f  reason: collision with root package name */
    private List<j0.n<File, ?>> f4267f;

    /* renamed from: g  reason: collision with root package name */
    private int f4268g;

    /* renamed from: h  reason: collision with root package name */
    private volatile n.a<?> f4269h;

    /* renamed from: i  reason: collision with root package name */
    private File f4270i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(g<?> gVar, f.a aVar) {
        this(gVar.c(), gVar, aVar);
    }

    private boolean b() {
        return this.f4268g < this.f4267f.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        if (b() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        r0 = r7.f4267f;
        r3 = r7.f4268g;
        r7.f4268g = r3 + 1;
        r7.f4269h = r0.get(r3).a(r7.f4270i, r7.f4263b.t(), r7.f4263b.f(), r7.f4263b.k());
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
        if (r7.f4269h == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        if (r7.f4263b.u(r7.f4269h.f52920c.a()) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
        r7.f4269h.f52920c.e(r7.f4263b.l(), r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0066, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006b, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0012, code lost:
        r7.f4269h = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0015, code lost:
        if (r1 != false) goto L30;
     */
    @Override // com.bumptech.glide.load.engine.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a() {
        /*
            r7 = this;
            java.lang.String r0 = "DataCacheGenerator.startNext"
            w0.b.a(r0)
        L5:
            java.util.List<j0.n<java.io.File, ?>> r0 = r7.f4267f     // Catch: java.lang.Throwable -> Lae
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L6c
            boolean r0 = r7.b()     // Catch: java.lang.Throwable -> Lae
            if (r0 != 0) goto L12
            goto L6c
        L12:
            r0 = 0
            r7.f4269h = r0     // Catch: java.lang.Throwable -> Lae
        L15:
            if (r1 != 0) goto L68
            boolean r0 = r7.b()     // Catch: java.lang.Throwable -> Lae
            if (r0 == 0) goto L68
            java.util.List<j0.n<java.io.File, ?>> r0 = r7.f4267f     // Catch: java.lang.Throwable -> Lae
            int r3 = r7.f4268g     // Catch: java.lang.Throwable -> Lae
            int r4 = r3 + 1
            r7.f4268g = r4     // Catch: java.lang.Throwable -> Lae
            java.lang.Object r0 = r0.get(r3)     // Catch: java.lang.Throwable -> Lae
            j0.n r0 = (j0.n) r0     // Catch: java.lang.Throwable -> Lae
            java.io.File r3 = r7.f4270i     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r4 = r7.f4263b     // Catch: java.lang.Throwable -> Lae
            int r4 = r4.t()     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r5 = r7.f4263b     // Catch: java.lang.Throwable -> Lae
            int r5 = r5.f()     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r6 = r7.f4263b     // Catch: java.lang.Throwable -> Lae
            e0.e r6 = r6.k()     // Catch: java.lang.Throwable -> Lae
            j0.n$a r0 = r0.a(r3, r4, r5, r6)     // Catch: java.lang.Throwable -> Lae
            r7.f4269h = r0     // Catch: java.lang.Throwable -> Lae
            j0.n$a<?> r0 = r7.f4269h     // Catch: java.lang.Throwable -> Lae
            if (r0 == 0) goto L15
            com.bumptech.glide.load.engine.g<?> r0 = r7.f4263b     // Catch: java.lang.Throwable -> Lae
            j0.n$a<?> r3 = r7.f4269h     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.data.d<Data> r3 = r3.f52920c     // Catch: java.lang.Throwable -> Lae
            java.lang.Class r3 = r3.a()     // Catch: java.lang.Throwable -> Lae
            boolean r0 = r0.u(r3)     // Catch: java.lang.Throwable -> Lae
            if (r0 == 0) goto L15
            j0.n$a<?> r0 = r7.f4269h     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.data.d<Data> r0 = r0.f52920c     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r1 = r7.f4263b     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.Priority r1 = r1.l()     // Catch: java.lang.Throwable -> Lae
            r0.e(r1, r7)     // Catch: java.lang.Throwable -> Lae
            r1 = 1
            goto L15
        L68:
            w0.b.e()
            return r1
        L6c:
            int r0 = r7.f4265d     // Catch: java.lang.Throwable -> Lae
            int r0 = r0 + r2
            r7.f4265d = r0     // Catch: java.lang.Throwable -> Lae
            java.util.List<e0.b> r2 = r7.f4262a     // Catch: java.lang.Throwable -> Lae
            int r2 = r2.size()     // Catch: java.lang.Throwable -> Lae
            if (r0 < r2) goto L7d
            w0.b.e()
            return r1
        L7d:
            java.util.List<e0.b> r0 = r7.f4262a     // Catch: java.lang.Throwable -> Lae
            int r2 = r7.f4265d     // Catch: java.lang.Throwable -> Lae
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Throwable -> Lae
            e0.b r0 = (e0.b) r0     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.d r2 = new com.bumptech.glide.load.engine.d     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r3 = r7.f4263b     // Catch: java.lang.Throwable -> Lae
            e0.b r3 = r3.p()     // Catch: java.lang.Throwable -> Lae
            r2.<init>(r0, r3)     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r3 = r7.f4263b     // Catch: java.lang.Throwable -> Lae
            h0.a r3 = r3.d()     // Catch: java.lang.Throwable -> Lae
            java.io.File r2 = r3.a(r2)     // Catch: java.lang.Throwable -> Lae
            r7.f4270i = r2     // Catch: java.lang.Throwable -> Lae
            if (r2 == 0) goto L5
            r7.f4266e = r0     // Catch: java.lang.Throwable -> Lae
            com.bumptech.glide.load.engine.g<?> r0 = r7.f4263b     // Catch: java.lang.Throwable -> Lae
            java.util.List r0 = r0.j(r2)     // Catch: java.lang.Throwable -> Lae
            r7.f4267f = r0     // Catch: java.lang.Throwable -> Lae
            r7.f4268g = r1     // Catch: java.lang.Throwable -> Lae
            goto L5
        Lae:
            r0 = move-exception
            w0.b.e()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.c.a():boolean");
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void c(@NonNull Exception exc) {
        this.f4264c.b(this.f4266e, exc, this.f4269h.f52920c, DataSource.DATA_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.engine.f
    public void cancel() {
        n.a<?> aVar = this.f4269h;
        if (aVar != null) {
            aVar.f52920c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void f(Object obj) {
        this.f4264c.c(this.f4266e, obj, this.f4269h.f52920c, DataSource.DATA_DISK_CACHE, this.f4266e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(List<e0.b> list, g<?> gVar, f.a aVar) {
        this.f4265d = -1;
        this.f4262a = list;
        this.f4263b = gVar;
        this.f4264c = aVar;
    }
}
