package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
class p<Z> implements u<Z> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4420a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f4421b;

    /* renamed from: c  reason: collision with root package name */
    private final u<Z> f4422c;

    /* renamed from: d  reason: collision with root package name */
    private final a f4423d;

    /* renamed from: e  reason: collision with root package name */
    private final e0.b f4424e;

    /* renamed from: f  reason: collision with root package name */
    private int f4425f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f4426g;

    /* loaded from: classes.dex */
    interface a {
        void d(e0.b bVar, p<?> pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(u<Z> uVar, boolean z10, boolean z11, e0.b bVar, a aVar) {
        this.f4422c = (u) v0.j.d(uVar);
        this.f4420a = z10;
        this.f4421b = z11;
        this.f4424e = bVar;
        this.f4423d = (a) v0.j.d(aVar);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<Z> a() {
        return this.f4422c.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b() {
        if (!this.f4426g) {
            this.f4425f++;
        } else {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u<Z> c() {
        return this.f4422c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.f4420a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        boolean z10;
        synchronized (this) {
            int i9 = this.f4425f;
            if (i9 > 0) {
                z10 = true;
                int i10 = i9 - 1;
                this.f4425f = i10;
                if (i10 != 0) {
                    z10 = false;
                }
            } else {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
        }
        if (z10) {
            this.f4423d.d(this.f4424e, this);
        }
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Z get() {
        return this.f4422c.get();
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return this.f4422c.getSize();
    }

    @Override // com.bumptech.glide.load.engine.u
    public synchronized void recycle() {
        if (this.f4425f <= 0) {
            if (!this.f4426g) {
                this.f4426g = true;
                if (this.f4421b) {
                    this.f4422c.recycle();
                }
            } else {
                throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
            }
        } else {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f4420a + ", listener=" + this.f4423d + ", key=" + this.f4424e + ", acquired=" + this.f4425f + ", isRecycled=" + this.f4426g + ", resource=" + this.f4422c + '}';
    }
}
