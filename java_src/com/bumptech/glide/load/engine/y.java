package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.f;
import j0.n;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class y implements f, f.a {

    /* renamed from: a  reason: collision with root package name */
    private final g<?> f4459a;

    /* renamed from: b  reason: collision with root package name */
    private final f.a f4460b;

    /* renamed from: c  reason: collision with root package name */
    private volatile int f4461c;

    /* renamed from: d  reason: collision with root package name */
    private volatile c f4462d;

    /* renamed from: e  reason: collision with root package name */
    private volatile Object f4463e;

    /* renamed from: f  reason: collision with root package name */
    private volatile n.a<?> f4464f;

    /* renamed from: g  reason: collision with root package name */
    private volatile d f4465g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements d.a<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n.a f4466a;

        a(n.a aVar) {
            this.f4466a = aVar;
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void c(@NonNull Exception exc) {
            if (y.this.g(this.f4466a)) {
                y.this.i(this.f4466a, exc);
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void f(@Nullable Object obj) {
            if (y.this.g(this.f4466a)) {
                y.this.h(this.f4466a, obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(g<?> gVar, f.a aVar) {
        this.f4459a = gVar;
        this.f4460b = aVar;
    }

    private boolean d(Object obj) throws IOException {
        long b10 = v0.f.b();
        boolean z10 = true;
        try {
            com.bumptech.glide.load.data.e<T> o10 = this.f4459a.o(obj);
            Object a10 = o10.a();
            e0.a<X> q10 = this.f4459a.q(a10);
            e eVar = new e(q10, a10, this.f4459a.k());
            d dVar = new d(this.f4464f.f52918a, this.f4459a.p());
            h0.a d10 = this.f4459a.d();
            d10.b(dVar, eVar);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + dVar + ", data: " + obj + ", encoder: " + q10 + ", duration: " + v0.f.a(b10));
            }
            if (d10.a(dVar) != null) {
                this.f4465g = dVar;
                this.f4462d = new c(Collections.singletonList(this.f4464f.f52918a), this.f4459a, this);
                this.f4464f.f52920c.b();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.f4465g + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.f4460b.c(this.f4464f.f52918a, o10.a(), this.f4464f.f52920c, this.f4464f.f52920c.d(), this.f4464f.f52918a);
                return false;
            } catch (Throwable th2) {
                th = th2;
                if (!z10) {
                    this.f4464f.f52920c.b();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            z10 = false;
        }
    }

    private boolean e() {
        return this.f4461c < this.f4459a.g().size();
    }

    private void j(n.a<?> aVar) {
        this.f4464f.f52920c.e(this.f4459a.l(), new a(aVar));
    }

    @Override // com.bumptech.glide.load.engine.f
    public boolean a() {
        if (this.f4463e != null) {
            Object obj = this.f4463e;
            this.f4463e = null;
            try {
                if (!d(obj)) {
                    return true;
                }
            } catch (IOException e10) {
                if (Log.isLoggable("SourceGenerator", 3)) {
                    Log.d("SourceGenerator", "Failed to properly rewind or write data to cache", e10);
                }
            }
        }
        if (this.f4462d == null || !this.f4462d.a()) {
            this.f4462d = null;
            this.f4464f = null;
            boolean z10 = false;
            while (!z10 && e()) {
                List<n.a<?>> g10 = this.f4459a.g();
                int i9 = this.f4461c;
                this.f4461c = i9 + 1;
                this.f4464f = g10.get(i9);
                if (this.f4464f != null && (this.f4459a.e().c(this.f4464f.f52920c.d()) || this.f4459a.u(this.f4464f.f52920c.a()))) {
                    j(this.f4464f);
                    z10 = true;
                }
            }
            return z10;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void b(e0.b bVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource) {
        this.f4460b.b(bVar, exc, dVar, this.f4464f.f52920c.d());
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void c(e0.b bVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource, e0.b bVar2) {
        this.f4460b.c(bVar, obj, dVar, this.f4464f.f52920c.d(), bVar);
    }

    @Override // com.bumptech.glide.load.engine.f
    public void cancel() {
        n.a<?> aVar = this.f4464f;
        if (aVar != null) {
            aVar.f52920c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void f() {
        throw new UnsupportedOperationException();
    }

    boolean g(n.a<?> aVar) {
        n.a<?> aVar2 = this.f4464f;
        return aVar2 != null && aVar2 == aVar;
    }

    void h(n.a<?> aVar, Object obj) {
        j e10 = this.f4459a.e();
        if (obj != null && e10.c(aVar.f52920c.d())) {
            this.f4463e = obj;
            this.f4460b.f();
            return;
        }
        f.a aVar2 = this.f4460b;
        e0.b bVar = aVar.f52918a;
        com.bumptech.glide.load.data.d<?> dVar = aVar.f52920c;
        aVar2.c(bVar, obj, dVar, dVar.d(), this.f4465g);
    }

    void i(n.a<?> aVar, @NonNull Exception exc) {
        f.a aVar2 = this.f4460b;
        d dVar = this.f4465g;
        com.bumptech.glide.load.data.d<?> dVar2 = aVar.f52920c;
        aVar2.b(dVar, exc, dVar2, dVar2.d());
    }
}
