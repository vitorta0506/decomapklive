package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import w0.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t<Z> implements u<Z>, a.f {

    /* renamed from: e  reason: collision with root package name */
    private static final Pools.Pool<t<?>> f4433e = w0.a.d(20, new a());

    /* renamed from: a  reason: collision with root package name */
    private final w0.c f4434a = w0.c.a();

    /* renamed from: b  reason: collision with root package name */
    private u<Z> f4435b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f4436c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4437d;

    /* loaded from: classes.dex */
    class a implements a.d<t<?>> {
        a() {
        }

        @Override // w0.a.d
        /* renamed from: b */
        public t<?> a() {
            return new t<>();
        }
    }

    t() {
    }

    private void b(u<Z> uVar) {
        this.f4437d = false;
        this.f4436c = true;
        this.f4435b = uVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static <Z> t<Z> c(u<Z> uVar) {
        t<Z> tVar = (t) v0.j.d(f4433e.acquire());
        tVar.b(uVar);
        return tVar;
    }

    private void e() {
        this.f4435b = null;
        f4433e.release(this);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<Z> a() {
        return this.f4435b.a();
    }

    @Override // w0.a.f
    @NonNull
    public w0.c d() {
        return this.f4434a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void f() {
        this.f4434a.c();
        if (this.f4436c) {
            this.f4436c = false;
            if (this.f4437d) {
                recycle();
            }
        } else {
            throw new IllegalStateException("Already unlocked");
        }
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Z get() {
        return this.f4435b.get();
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return this.f4435b.getSize();
    }

    @Override // com.bumptech.glide.load.engine.u
    public synchronized void recycle() {
        this.f4434a.c();
        this.f4437d = true;
        if (!this.f4436c) {
            this.f4435b.recycle();
            e();
        }
    }
}
