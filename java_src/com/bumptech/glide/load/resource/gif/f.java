package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.j;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import v0.k;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final c0.a f4603a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f4604b;

    /* renamed from: c  reason: collision with root package name */
    private final List<b> f4605c;

    /* renamed from: d  reason: collision with root package name */
    final com.bumptech.glide.h f4606d;

    /* renamed from: e  reason: collision with root package name */
    private final g0.d f4607e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f4608f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f4609g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f4610h;

    /* renamed from: i  reason: collision with root package name */
    private com.bumptech.glide.g<Bitmap> f4611i;

    /* renamed from: j  reason: collision with root package name */
    private a f4612j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f4613k;

    /* renamed from: l  reason: collision with root package name */
    private a f4614l;

    /* renamed from: m  reason: collision with root package name */
    private Bitmap f4615m;

    /* renamed from: n  reason: collision with root package name */
    private e0.h<Bitmap> f4616n;

    /* renamed from: o  reason: collision with root package name */
    private a f4617o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private d f4618p;

    /* renamed from: q  reason: collision with root package name */
    private int f4619q;

    /* renamed from: r  reason: collision with root package name */
    private int f4620r;

    /* renamed from: s  reason: collision with root package name */
    private int f4621s;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a extends s0.c<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f4622a;

        /* renamed from: b  reason: collision with root package name */
        final int f4623b;

        /* renamed from: c  reason: collision with root package name */
        private final long f4624c;

        /* renamed from: d  reason: collision with root package name */
        private Bitmap f4625d;

        a(Handler handler, int i9, long j10) {
            this.f4622a = handler;
            this.f4623b = i9;
            this.f4624c = j10;
        }

        Bitmap a() {
            return this.f4625d;
        }

        @Override // s0.k
        public void onLoadCleared(@Nullable Drawable drawable) {
            this.f4625d = null;
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((Bitmap) obj, (t0.f<? super Bitmap>) fVar);
        }

        public void onResourceReady(@NonNull Bitmap bitmap, @Nullable t0.f<? super Bitmap> fVar) {
            this.f4625d = bitmap;
            this.f4622a.sendMessageAtTime(this.f4622a.obtainMessage(1, this), this.f4624c);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a();
    }

    /* loaded from: classes.dex */
    private class c implements Handler.Callback {
        c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i9 = message.what;
            if (i9 == 1) {
                f.this.m((a) message.obj);
                return true;
            } else if (i9 == 2) {
                f.this.f4606d.g((a) message.obj);
                return false;
            } else {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface d {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(com.bumptech.glide.c cVar, c0.a aVar, int i9, int i10, e0.h<Bitmap> hVar, Bitmap bitmap) {
        this(cVar.f(), com.bumptech.glide.c.u(cVar.h()), aVar, null, i(com.bumptech.glide.c.u(cVar.h()), i9, i10), hVar, bitmap);
    }

    private static e0.b g() {
        return new u0.d(Double.valueOf(Math.random()));
    }

    private static com.bumptech.glide.g<Bitmap> i(com.bumptech.glide.h hVar, int i9, int i10) {
        return hVar.b().a(com.bumptech.glide.request.h.B0(j.f4348b).v0(true).n0(true).a0(i9, i10));
    }

    private void l() {
        if (!this.f4608f || this.f4609g) {
            return;
        }
        if (this.f4610h) {
            v0.j.a(this.f4617o == null, "Pending target must be null when starting from the first frame");
            this.f4603a.f();
            this.f4610h = false;
        }
        a aVar = this.f4617o;
        if (aVar != null) {
            this.f4617o = null;
            m(aVar);
            return;
        }
        this.f4609g = true;
        long uptimeMillis = SystemClock.uptimeMillis() + this.f4603a.e();
        this.f4603a.b();
        this.f4614l = new a(this.f4604b, this.f4603a.g(), uptimeMillis);
        this.f4611i.a(com.bumptech.glide.request.h.D0(g())).Y0(this.f4603a).M0(this.f4614l);
    }

    private void n() {
        Bitmap bitmap = this.f4615m;
        if (bitmap != null) {
            this.f4607e.c(bitmap);
            this.f4615m = null;
        }
    }

    private void p() {
        if (this.f4608f) {
            return;
        }
        this.f4608f = true;
        this.f4613k = false;
        l();
    }

    private void q() {
        this.f4608f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f4605c.clear();
        n();
        q();
        a aVar = this.f4612j;
        if (aVar != null) {
            this.f4606d.g(aVar);
            this.f4612j = null;
        }
        a aVar2 = this.f4614l;
        if (aVar2 != null) {
            this.f4606d.g(aVar2);
            this.f4614l = null;
        }
        a aVar3 = this.f4617o;
        if (aVar3 != null) {
            this.f4606d.g(aVar3);
            this.f4617o = null;
        }
        this.f4603a.clear();
        this.f4613k = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer b() {
        return this.f4603a.getData().asReadOnlyBuffer();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap c() {
        a aVar = this.f4612j;
        return aVar != null ? aVar.a() : this.f4615m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        a aVar = this.f4612j;
        if (aVar != null) {
            return aVar.f4623b;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap e() {
        return this.f4615m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f4603a.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
        return this.f4621s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        return this.f4603a.h() + this.f4619q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        return this.f4620r;
    }

    @VisibleForTesting
    void m(a aVar) {
        d dVar = this.f4618p;
        if (dVar != null) {
            dVar.a();
        }
        this.f4609g = false;
        if (this.f4613k) {
            this.f4604b.obtainMessage(2, aVar).sendToTarget();
        } else if (!this.f4608f) {
            if (this.f4610h) {
                this.f4604b.obtainMessage(2, aVar).sendToTarget();
            } else {
                this.f4617o = aVar;
            }
        } else {
            if (aVar.a() != null) {
                n();
                a aVar2 = this.f4612j;
                this.f4612j = aVar;
                for (int size = this.f4605c.size() - 1; size >= 0; size--) {
                    this.f4605c.get(size).a();
                }
                if (aVar2 != null) {
                    this.f4604b.obtainMessage(2, aVar2).sendToTarget();
                }
            }
            l();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(e0.h<Bitmap> hVar, Bitmap bitmap) {
        this.f4616n = (e0.h) v0.j.d(hVar);
        this.f4615m = (Bitmap) v0.j.d(bitmap);
        this.f4611i = this.f4611i.a(new com.bumptech.glide.request.h().q0(hVar));
        this.f4619q = k.h(bitmap);
        this.f4620r = bitmap.getWidth();
        this.f4621s = bitmap.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(b bVar) {
        if (!this.f4613k) {
            if (!this.f4605c.contains(bVar)) {
                boolean isEmpty = this.f4605c.isEmpty();
                this.f4605c.add(bVar);
                if (isEmpty) {
                    p();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(b bVar) {
        this.f4605c.remove(bVar);
        if (this.f4605c.isEmpty()) {
            q();
        }
    }

    @VisibleForTesting
    void setOnEveryFrameReadyListener(@Nullable d dVar) {
        this.f4618p = dVar;
    }

    f(g0.d dVar, com.bumptech.glide.h hVar, c0.a aVar, Handler handler, com.bumptech.glide.g<Bitmap> gVar, e0.h<Bitmap> hVar2, Bitmap bitmap) {
        this.f4605c = new ArrayList();
        this.f4606d = hVar;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new c()) : handler;
        this.f4607e = dVar;
        this.f4604b = handler;
        this.f4611i = gVar;
        this.f4603a = aVar;
        o(hVar2, bitmap);
    }
}
