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
public class v implements f, d.a<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final f.a f4438a;

    /* renamed from: b  reason: collision with root package name */
    private final g<?> f4439b;

    /* renamed from: c  reason: collision with root package name */
    private int f4440c;

    /* renamed from: d  reason: collision with root package name */
    private int f4441d = -1;

    /* renamed from: e  reason: collision with root package name */
    private e0.b f4442e;

    /* renamed from: f  reason: collision with root package name */
    private List<j0.n<File, ?>> f4443f;

    /* renamed from: g  reason: collision with root package name */
    private int f4444g;

    /* renamed from: h  reason: collision with root package name */
    private volatile n.a<?> f4445h;

    /* renamed from: i  reason: collision with root package name */
    private File f4446i;

    /* renamed from: j  reason: collision with root package name */
    private w f4447j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(g<?> gVar, f.a aVar) {
        this.f4439b = gVar;
        this.f4438a = aVar;
    }

    private boolean b() {
        return this.f4444g < this.f4443f.size();
    }

    @Override // com.bumptech.glide.load.engine.f
    public boolean a() {
        w0.b.a("ResourceCacheGenerator.startNext");
        try {
            List<e0.b> c10 = this.f4439b.c();
            boolean z10 = false;
            if (c10.isEmpty()) {
                return false;
            }
            List<Class<?>> m10 = this.f4439b.m();
            if (m10.isEmpty()) {
                if (File.class.equals(this.f4439b.r())) {
                    return false;
                }
                throw new IllegalStateException("Failed to find any load path from " + this.f4439b.i() + " to " + this.f4439b.r());
            }
            while (true) {
                if (this.f4443f != null && b()) {
                    this.f4445h = null;
                    while (!z10 && b()) {
                        List<j0.n<File, ?>> list = this.f4443f;
                        int i9 = this.f4444g;
                        this.f4444g = i9 + 1;
                        this.f4445h = list.get(i9).a(this.f4446i, this.f4439b.t(), this.f4439b.f(), this.f4439b.k());
                        if (this.f4445h != null && this.f4439b.u(this.f4445h.f52920c.a())) {
                            this.f4445h.f52920c.e(this.f4439b.l(), this);
                            z10 = true;
                        }
                    }
                    return z10;
                }
                int i10 = this.f4441d + 1;
                this.f4441d = i10;
                if (i10 >= m10.size()) {
                    int i11 = this.f4440c + 1;
                    this.f4440c = i11;
                    if (i11 >= c10.size()) {
                        return false;
                    }
                    this.f4441d = 0;
                }
                e0.b bVar = c10.get(this.f4440c);
                Class<?> cls = m10.get(this.f4441d);
                this.f4447j = new w(this.f4439b.b(), bVar, this.f4439b.p(), this.f4439b.t(), this.f4439b.f(), this.f4439b.s(cls), cls, this.f4439b.k());
                File a10 = this.f4439b.d().a(this.f4447j);
                this.f4446i = a10;
                if (a10 != null) {
                    this.f4442e = bVar;
                    this.f4443f = this.f4439b.j(a10);
                    this.f4444g = 0;
                }
            }
        } finally {
            w0.b.e();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void c(@NonNull Exception exc) {
        this.f4438a.b(this.f4447j, exc, this.f4445h.f52920c, DataSource.RESOURCE_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.engine.f
    public void cancel() {
        n.a<?> aVar = this.f4445h;
        if (aVar != null) {
            aVar.f52920c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void f(Object obj) {
        this.f4438a.c(this.f4442e, obj, this.f4445h.f52920c, DataSource.RESOURCE_DISK_CACHE, this.f4447j);
    }
}
