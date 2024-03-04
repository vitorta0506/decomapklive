package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes4.dex */
abstract class a<T> {

    /* renamed from: a  reason: collision with root package name */
    final Picasso f29886a;

    /* renamed from: b  reason: collision with root package name */
    final s f29887b;

    /* renamed from: c  reason: collision with root package name */
    final WeakReference<T> f29888c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f29889d;

    /* renamed from: e  reason: collision with root package name */
    final int f29890e;

    /* renamed from: f  reason: collision with root package name */
    final int f29891f;

    /* renamed from: g  reason: collision with root package name */
    final int f29892g;

    /* renamed from: h  reason: collision with root package name */
    final Drawable f29893h;

    /* renamed from: i  reason: collision with root package name */
    final String f29894i;

    /* renamed from: j  reason: collision with root package name */
    final Object f29895j;

    /* renamed from: k  reason: collision with root package name */
    boolean f29896k;

    /* renamed from: l  reason: collision with root package name */
    boolean f29897l;

    /* renamed from: com.squareup.picasso.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class C0297a<M> extends WeakReference<M> {

        /* renamed from: a  reason: collision with root package name */
        final a f29898a;

        public C0297a(a aVar, M m10, ReferenceQueue<? super M> referenceQueue) {
            super(m10, referenceQueue);
            this.f29898a = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Picasso picasso, T t10, s sVar, int i9, int i10, int i11, Drawable drawable, String str, Object obj, boolean z10) {
        this.f29886a = picasso;
        this.f29887b = sVar;
        this.f29888c = t10 == null ? null : new C0297a(this, t10, picasso.f29866k);
        this.f29890e = i9;
        this.f29891f = i10;
        this.f29889d = z10;
        this.f29892g = i11;
        this.f29893h = drawable;
        this.f29894i = str;
        this.f29895j = obj == null ? this : obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f29897l = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(Bitmap bitmap, Picasso.LoadedFrom loadedFrom);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        return this.f29894i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f29890e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f29891f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso g() {
        return this.f29886a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso.Priority h() {
        return this.f29887b.f30011r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s i() {
        return this.f29887b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object j() {
        return this.f29895j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T k() {
        WeakReference<T> weakReference = this.f29888c;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l() {
        return this.f29897l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        return this.f29896k;
    }
}
