package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.load.engine.j;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import java.io.File;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p0.a;
import p0.k;
/* loaded from: classes.dex */
public class h implements ComponentCallbacks2, p0.f {

    /* renamed from: l  reason: collision with root package name */
    private static final com.bumptech.glide.request.h f4185l = com.bumptech.glide.request.h.z0(Bitmap.class).T();

    /* renamed from: m  reason: collision with root package name */
    private static final com.bumptech.glide.request.h f4186m = com.bumptech.glide.request.h.z0(GifDrawable.class).T();

    /* renamed from: n  reason: collision with root package name */
    private static final com.bumptech.glide.request.h f4187n = com.bumptech.glide.request.h.B0(j.f4349c).e0(Priority.LOW).n0(true);

    /* renamed from: a  reason: collision with root package name */
    protected final com.bumptech.glide.c f4188a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f4189b;

    /* renamed from: c  reason: collision with root package name */
    final p0.e f4190c;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private final p0.i f4191d;
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    private final p0.h f4192e;
    @GuardedBy("this")

    /* renamed from: f  reason: collision with root package name */
    private final k f4193f;

    /* renamed from: g  reason: collision with root package name */
    private final Runnable f4194g;

    /* renamed from: h  reason: collision with root package name */
    private final p0.a f4195h;

    /* renamed from: i  reason: collision with root package name */
    private final CopyOnWriteArrayList<com.bumptech.glide.request.g<Object>> f4196i;
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private com.bumptech.glide.request.h f4197j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f4198k;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            hVar.f4190c.a(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends s0.d<View, Object> {
        b(@NonNull View view) {
            super(view);
        }

        @Override // s0.d
        protected void d(@Nullable Drawable drawable) {
        }

        @Override // s0.k
        public void onLoadFailed(@Nullable Drawable drawable) {
        }

        @Override // s0.k
        public void onResourceReady(@NonNull Object obj, @Nullable t0.f<? super Object> fVar) {
        }
    }

    /* loaded from: classes.dex */
    private class c implements a.InterfaceC0611a {
        @GuardedBy("RequestManager.this")

        /* renamed from: a  reason: collision with root package name */
        private final p0.i f4200a;

        c(@NonNull p0.i iVar) {
            this.f4200a = iVar;
        }

        @Override // p0.a.InterfaceC0611a
        public void a(boolean z10) {
            if (z10) {
                synchronized (h.this) {
                    this.f4200a.e();
                }
            }
        }
    }

    public h(@NonNull com.bumptech.glide.c cVar, @NonNull p0.e eVar, @NonNull p0.h hVar, @NonNull Context context) {
        this(cVar, eVar, hVar, new p0.i(), cVar.g(), context);
    }

    private void z(@NonNull s0.k<?> kVar) {
        boolean y10 = y(kVar);
        com.bumptech.glide.request.e request = kVar.getRequest();
        if (y10 || this.f4188a.p(kVar) || request == null) {
            return;
        }
        kVar.setRequest(null);
        request.clear();
    }

    @NonNull
    @CheckResult
    public <ResourceType> g<ResourceType> a(@NonNull Class<ResourceType> cls) {
        return new g<>(this.f4188a, this, cls, this.f4189b);
    }

    @NonNull
    @CheckResult
    public g<Bitmap> b() {
        return a(Bitmap.class).a(f4185l);
    }

    @NonNull
    @CheckResult
    public g<Drawable> c() {
        return a(Drawable.class);
    }

    @NonNull
    @CheckResult
    public g<File> d() {
        return a(File.class).a(com.bumptech.glide.request.h.H0(true));
    }

    @NonNull
    @CheckResult
    public g<GifDrawable> e() {
        return a(GifDrawable.class).a(f4186m);
    }

    public void f(@NonNull View view) {
        g(new b(view));
    }

    public void g(@Nullable s0.k<?> kVar) {
        if (kVar == null) {
            return;
        }
        z(kVar);
    }

    @NonNull
    @CheckResult
    public g<File> h(@Nullable Object obj) {
        return i().Y0(obj);
    }

    @NonNull
    @CheckResult
    public g<File> i() {
        return a(File.class).a(f4187n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<com.bumptech.glide.request.g<Object>> j() {
        return this.f4196i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized com.bumptech.glide.request.h k() {
        return this.f4197j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public <T> i<?, T> l(Class<T> cls) {
        return this.f4188a.i().e(cls);
    }

    @NonNull
    @CheckResult
    public g<Drawable> m(@Nullable Drawable drawable) {
        return c().U0(drawable);
    }

    @NonNull
    @CheckResult
    public g<Drawable> n(@Nullable Uri uri) {
        return c().V0(uri);
    }

    @NonNull
    @CheckResult
    public g<Drawable> o(@Nullable File file) {
        return c().W0(file);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // p0.f
    public synchronized void onDestroy() {
        this.f4193f.onDestroy();
        for (s0.k<?> kVar : this.f4193f.b()) {
            g(kVar);
        }
        this.f4193f.a();
        this.f4191d.b();
        this.f4190c.b(this);
        this.f4190c.b(this.f4195h);
        v0.k.w(this.f4194g);
        this.f4188a.s(this);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // p0.f
    public synchronized void onStart() {
        v();
        this.f4193f.onStart();
    }

    @Override // p0.f
    public synchronized void onStop() {
        u();
        this.f4193f.onStop();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i9) {
        if (i9 == 60 && this.f4198k) {
            t();
        }
    }

    @NonNull
    @CheckResult
    public g<Drawable> p(@Nullable @DrawableRes @RawRes Integer num) {
        return c().X0(num);
    }

    @NonNull
    @CheckResult
    public g<Drawable> q(@Nullable Object obj) {
        return c().Y0(obj);
    }

    @NonNull
    @CheckResult
    public g<Drawable> r(@Nullable String str) {
        return c().Z0(str);
    }

    public synchronized void s() {
        this.f4191d.c();
    }

    public synchronized void t() {
        s();
        for (h hVar : this.f4192e.a()) {
            hVar.s();
        }
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.f4191d + ", treeNode=" + this.f4192e + "}";
    }

    public synchronized void u() {
        this.f4191d.d();
    }

    public synchronized void v() {
        this.f4191d.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void w(@NonNull com.bumptech.glide.request.h hVar) {
        this.f4197j = hVar.clone().b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void x(@NonNull s0.k<?> kVar, @NonNull com.bumptech.glide.request.e eVar) {
        this.f4193f.c(kVar);
        this.f4191d.g(eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean y(@NonNull s0.k<?> kVar) {
        com.bumptech.glide.request.e request = kVar.getRequest();
        if (request == null) {
            return true;
        }
        if (this.f4191d.a(request)) {
            this.f4193f.d(kVar);
            kVar.setRequest(null);
            return true;
        }
        return false;
    }

    h(com.bumptech.glide.c cVar, p0.e eVar, p0.h hVar, p0.i iVar, p0.b bVar, Context context) {
        this.f4193f = new k();
        a aVar = new a();
        this.f4194g = aVar;
        this.f4188a = cVar;
        this.f4190c = eVar;
        this.f4192e = hVar;
        this.f4191d = iVar;
        this.f4189b = context;
        p0.a a10 = bVar.a(context.getApplicationContext(), new c(iVar));
        this.f4195h = a10;
        if (v0.k.r()) {
            v0.k.v(aVar);
        } else {
            eVar.a(this);
        }
        eVar.a(a10);
        this.f4196i = new CopyOnWriteArrayList<>(cVar.i().c());
        w(cVar.i().d());
        cVar.o(this);
    }
}
