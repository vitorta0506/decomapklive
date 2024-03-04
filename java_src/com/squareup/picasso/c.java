package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.squareup.picasso.Downloader;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.o;
import com.squareup.picasso.u;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class c implements Runnable {

    /* renamed from: t  reason: collision with root package name */
    private static final Object f29905t = new Object();

    /* renamed from: u  reason: collision with root package name */
    private static final ThreadLocal<StringBuilder> f29906u = new a();

    /* renamed from: v  reason: collision with root package name */
    private static final AtomicInteger f29907v = new AtomicInteger();

    /* renamed from: w  reason: collision with root package name */
    private static final u f29908w = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f29909a = f29907v.incrementAndGet();

    /* renamed from: b  reason: collision with root package name */
    final Picasso f29910b;

    /* renamed from: c  reason: collision with root package name */
    final i f29911c;

    /* renamed from: d  reason: collision with root package name */
    final com.squareup.picasso.d f29912d;

    /* renamed from: e  reason: collision with root package name */
    final w f29913e;

    /* renamed from: f  reason: collision with root package name */
    final String f29914f;

    /* renamed from: g  reason: collision with root package name */
    final s f29915g;

    /* renamed from: h  reason: collision with root package name */
    final int f29916h;

    /* renamed from: i  reason: collision with root package name */
    int f29917i;

    /* renamed from: j  reason: collision with root package name */
    final u f29918j;

    /* renamed from: k  reason: collision with root package name */
    com.squareup.picasso.a f29919k;

    /* renamed from: l  reason: collision with root package name */
    List<com.squareup.picasso.a> f29920l;

    /* renamed from: m  reason: collision with root package name */
    Bitmap f29921m;

    /* renamed from: n  reason: collision with root package name */
    Future<?> f29922n;

    /* renamed from: o  reason: collision with root package name */
    Picasso.LoadedFrom f29923o;

    /* renamed from: p  reason: collision with root package name */
    Exception f29924p;

    /* renamed from: q  reason: collision with root package name */
    int f29925q;

    /* renamed from: r  reason: collision with root package name */
    int f29926r;

    /* renamed from: s  reason: collision with root package name */
    Picasso.Priority f29927s;

    /* loaded from: classes4.dex */
    static class a extends ThreadLocal<StringBuilder> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    }

    /* loaded from: classes4.dex */
    static class b extends u {
        b() {
        }

        @Override // com.squareup.picasso.u
        public boolean c(s sVar) {
            return true;
        }

        @Override // com.squareup.picasso.u
        public u.a f(s sVar, int i9) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + sVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class RunnableC0298c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a0 f29928a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RuntimeException f29929b;

        RunnableC0298c(a0 a0Var, RuntimeException runtimeException) {
            this.f29928a = a0Var;
            this.f29929b = runtimeException;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new RuntimeException("Transformation " + this.f29928a.key() + " crashed with exception.", this.f29929b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StringBuilder f29930a;

        d(StringBuilder sb2) {
            this.f29930a = sb2;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new NullPointerException(this.f29930a.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a0 f29931a;

        e(a0 a0Var) {
            this.f29931a = a0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f29931a.key() + " returned input Bitmap but recycled it.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a0 f29932a;

        f(a0 a0Var) {
            this.f29932a = a0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f29932a.key() + " mutated input Bitmap but failed to recycle the original.");
        }
    }

    c(Picasso picasso, i iVar, com.squareup.picasso.d dVar, w wVar, com.squareup.picasso.a aVar, u uVar) {
        this.f29910b = picasso;
        this.f29911c = iVar;
        this.f29912d = dVar;
        this.f29913e = wVar;
        this.f29919k = aVar;
        this.f29914f = aVar.d();
        this.f29915g = aVar.i();
        this.f29927s = aVar.h();
        this.f29916h = aVar.e();
        this.f29917i = aVar.f();
        this.f29918j = uVar;
        this.f29926r = uVar.e();
    }

    static Bitmap b(List<a0> list, Bitmap bitmap) {
        int size = list.size();
        int i9 = 0;
        while (i9 < size) {
            a0 a0Var = list.get(i9);
            try {
                Bitmap a10 = a0Var.a(bitmap);
                if (a10 == null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Transformation ");
                    sb2.append(a0Var.key());
                    sb2.append(" returned null after ");
                    sb2.append(i9);
                    sb2.append(" previous transformation(s).\n\nTransformation list:\n");
                    for (a0 a0Var2 : list) {
                        sb2.append(a0Var2.key());
                        sb2.append('\n');
                    }
                    Picasso.f29854p.post(new d(sb2));
                    return null;
                } else if (a10 == bitmap && bitmap.isRecycled()) {
                    Picasso.f29854p.post(new e(a0Var));
                    return null;
                } else if (a10 != bitmap && !bitmap.isRecycled()) {
                    Picasso.f29854p.post(new f(a0Var));
                    return null;
                } else {
                    i9++;
                    bitmap = a10;
                }
            } catch (RuntimeException e10) {
                Picasso.f29854p.post(new RunnableC0298c(a0Var, e10));
                return null;
            }
        }
        return bitmap;
    }

    private Picasso.Priority f() {
        Picasso.Priority priority = Picasso.Priority.LOW;
        List<com.squareup.picasso.a> list = this.f29920l;
        boolean z10 = true;
        boolean z11 = (list == null || list.isEmpty()) ? false : true;
        com.squareup.picasso.a aVar = this.f29919k;
        if (aVar == null && !z11) {
            z10 = false;
        }
        if (z10) {
            if (aVar != null) {
                priority = aVar.h();
            }
            if (z11) {
                int size = this.f29920l.size();
                for (int i9 = 0; i9 < size; i9++) {
                    Picasso.Priority h10 = this.f29920l.get(i9).h();
                    if (h10.ordinal() > priority.ordinal()) {
                        priority = h10;
                    }
                }
            }
            return priority;
        }
        return priority;
    }

    static Bitmap g(InputStream inputStream, s sVar) throws IOException {
        m mVar = new m(inputStream);
        long b10 = mVar.b(65536);
        BitmapFactory.Options d10 = u.d(sVar);
        boolean g10 = u.g(d10);
        boolean t10 = c0.t(mVar);
        mVar.a(b10);
        if (t10) {
            byte[] x10 = c0.x(mVar);
            if (g10) {
                BitmapFactory.decodeByteArray(x10, 0, x10.length, d10);
                u.b(sVar.f30001h, sVar.f30002i, d10, sVar);
            }
            return BitmapFactory.decodeByteArray(x10, 0, x10.length, d10);
        }
        if (g10) {
            BitmapFactory.decodeStream(mVar, null, d10);
            u.b(sVar.f30001h, sVar.f30002i, d10, sVar);
            mVar.a(b10);
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(mVar, null, d10);
        if (decodeStream != null) {
            return decodeStream;
        }
        throw new IOException("Failed to decode stream.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c i(Picasso picasso, i iVar, com.squareup.picasso.d dVar, w wVar, com.squareup.picasso.a aVar) {
        s i9 = aVar.i();
        List<u> i10 = picasso.i();
        int size = i10.size();
        for (int i11 = 0; i11 < size; i11++) {
            u uVar = i10.get(i11);
            if (uVar.c(i9)) {
                return new c(picasso, iVar, dVar, wVar, aVar, uVar);
            }
        }
        return new c(picasso, iVar, dVar, wVar, aVar, f29908w);
    }

    private static boolean v(boolean z10, int i9, int i10, int i11, int i12) {
        return !z10 || i9 > i11 || i10 > i12;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.graphics.Bitmap y(com.squareup.picasso.s r13, android.graphics.Bitmap r14, int r15) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.c.y(com.squareup.picasso.s, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    static void z(s sVar) {
        String a10 = sVar.a();
        StringBuilder sb2 = f29906u.get();
        sb2.ensureCapacity(a10.length() + 8);
        sb2.replace(8, sb2.length(), a10);
        Thread.currentThread().setName(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(com.squareup.picasso.a aVar) {
        boolean z10 = this.f29910b.f29869n;
        s sVar = aVar.f29887b;
        if (this.f29919k == null) {
            this.f29919k = aVar;
            if (z10) {
                List<com.squareup.picasso.a> list = this.f29920l;
                if (list != null && !list.isEmpty()) {
                    c0.v("Hunter", "joined", sVar.d(), c0.m(this, "to "));
                    return;
                } else {
                    c0.v("Hunter", "joined", sVar.d(), "to empty hunter");
                    return;
                }
            }
            return;
        }
        if (this.f29920l == null) {
            this.f29920l = new ArrayList(3);
        }
        this.f29920l.add(aVar);
        if (z10) {
            c0.v("Hunter", "joined", sVar.d(), c0.m(this, "to "));
        }
        Picasso.Priority h10 = aVar.h();
        if (h10.ordinal() > this.f29927s.ordinal()) {
            this.f29927s = h10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        Future<?> future;
        if (this.f29919k == null) {
            List<com.squareup.picasso.a> list = this.f29920l;
            return (list == null || list.isEmpty()) && (future = this.f29922n) != null && future.cancel(false);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(com.squareup.picasso.a aVar) {
        boolean remove;
        if (this.f29919k == aVar) {
            this.f29919k = null;
            remove = true;
        } else {
            List<com.squareup.picasso.a> list = this.f29920l;
            remove = list != null ? list.remove(aVar) : false;
        }
        if (remove && aVar.h() == this.f29927s) {
            this.f29927s = f();
        }
        if (this.f29910b.f29869n) {
            c0.v("Hunter", "removed", aVar.f29887b.d(), c0.m(this, "from "));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.squareup.picasso.a j() {
        return this.f29919k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<com.squareup.picasso.a> k() {
        return this.f29920l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s l() {
        return this.f29915g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Exception m() {
        return this.f29924p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String n() {
        return this.f29914f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso.LoadedFrom o() {
        return this.f29923o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int p() {
        return this.f29916h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso q() {
        return this.f29910b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso.Priority r() {
        return this.f29927s;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        z(this.f29915g);
                        if (this.f29910b.f29869n) {
                            c0.u("Hunter", "executing", c0.l(this));
                        }
                        Bitmap t10 = t();
                        this.f29921m = t10;
                        if (t10 == null) {
                            this.f29911c.e(this);
                        } else {
                            this.f29911c.d(this);
                        }
                    } catch (IOException e10) {
                        this.f29924p = e10;
                        this.f29911c.g(this);
                    }
                } catch (Downloader.ResponseException e11) {
                    if (!e11.localCacheOnly || e11.responseCode != 504) {
                        this.f29924p = e11;
                    }
                    this.f29911c.e(this);
                } catch (o.a e12) {
                    this.f29924p = e12;
                    this.f29911c.g(this);
                }
            } catch (Exception e13) {
                this.f29924p = e13;
                this.f29911c.e(this);
            } catch (OutOfMemoryError e14) {
                StringWriter stringWriter = new StringWriter();
                this.f29913e.a().a(new PrintWriter(stringWriter));
                this.f29924p = new RuntimeException(stringWriter.toString(), e14);
                this.f29911c.e(this);
            }
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap s() {
        return this.f29921m;
    }

    Bitmap t() throws IOException {
        Bitmap bitmap;
        if (MemoryPolicy.shouldReadFromMemoryCache(this.f29916h)) {
            bitmap = this.f29912d.get(this.f29914f);
            if (bitmap != null) {
                this.f29913e.d();
                this.f29923o = Picasso.LoadedFrom.MEMORY;
                if (this.f29910b.f29869n) {
                    c0.v("Hunter", "decoded", this.f29915g.d(), "from cache");
                }
                return bitmap;
            }
        } else {
            bitmap = null;
        }
        s sVar = this.f29915g;
        sVar.f29996c = this.f29926r == 0 ? NetworkPolicy.OFFLINE.index : this.f29917i;
        u.a f10 = this.f29918j.f(sVar, this.f29917i);
        if (f10 != null) {
            this.f29923o = f10.c();
            this.f29925q = f10.b();
            bitmap = f10.a();
            if (bitmap == null) {
                InputStream d10 = f10.d();
                try {
                    Bitmap g10 = g(d10, this.f29915g);
                    c0.e(d10);
                    bitmap = g10;
                } catch (Throwable th2) {
                    c0.e(d10);
                    throw th2;
                }
            }
        }
        if (bitmap != null) {
            if (this.f29910b.f29869n) {
                c0.u("Hunter", "decoded", this.f29915g.d());
            }
            this.f29913e.b(bitmap);
            if (this.f29915g.f() || this.f29925q != 0) {
                synchronized (f29905t) {
                    if (this.f29915g.e() || this.f29925q != 0) {
                        bitmap = y(this.f29915g, bitmap, this.f29925q);
                        if (this.f29910b.f29869n) {
                            c0.u("Hunter", "transformed", this.f29915g.d());
                        }
                    }
                    if (this.f29915g.b()) {
                        bitmap = b(this.f29915g.f30000g, bitmap);
                        if (this.f29910b.f29869n) {
                            c0.v("Hunter", "transformed", this.f29915g.d(), "from custom transformations");
                        }
                    }
                }
                if (bitmap != null) {
                    this.f29913e.c(bitmap);
                }
            }
        }
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean u() {
        Future<?> future = this.f29922n;
        return future != null && future.isCancelled();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean w(boolean z10, NetworkInfo networkInfo) {
        int i9 = this.f29926r;
        if (i9 > 0) {
            this.f29926r = i9 - 1;
            return this.f29918j.h(z10, networkInfo);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean x() {
        return this.f29918j.i();
    }
}
