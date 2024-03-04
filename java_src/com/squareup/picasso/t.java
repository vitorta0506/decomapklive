package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.s;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public class t {

    /* renamed from: m  reason: collision with root package name */
    private static final AtomicInteger f30027m = new AtomicInteger();

    /* renamed from: a  reason: collision with root package name */
    private final Picasso f30028a;

    /* renamed from: b  reason: collision with root package name */
    private final s.b f30029b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f30030c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f30031d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f30032e = true;

    /* renamed from: f  reason: collision with root package name */
    private int f30033f;

    /* renamed from: g  reason: collision with root package name */
    private int f30034g;

    /* renamed from: h  reason: collision with root package name */
    private int f30035h;

    /* renamed from: i  reason: collision with root package name */
    private int f30036i;

    /* renamed from: j  reason: collision with root package name */
    private Drawable f30037j;

    /* renamed from: k  reason: collision with root package name */
    private Drawable f30038k;

    /* renamed from: l  reason: collision with root package name */
    private Object f30039l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Picasso picasso, Uri uri, int i9) {
        if (!picasso.f29870o) {
            this.f30028a = picasso;
            this.f30029b = new s.b(uri, i9, picasso.f29867l);
            return;
        }
        throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }

    private s b(long j10) {
        int andIncrement = f30027m.getAndIncrement();
        s a10 = this.f30029b.a();
        a10.f29994a = andIncrement;
        a10.f29995b = j10;
        boolean z10 = this.f30028a.f29869n;
        if (z10) {
            c0.v("Main", "created", a10.g(), a10.toString());
        }
        s o10 = this.f30028a.o(a10);
        if (o10 != a10) {
            o10.f29994a = andIncrement;
            o10.f29995b = j10;
            if (z10) {
                String d10 = o10.d();
                c0.v("Main", "changed", d10, "into " + o10);
            }
        }
        return o10;
    }

    private Drawable e() {
        if (this.f30033f != 0) {
            return this.f30028a.f29860e.getResources().getDrawable(this.f30033f);
        }
        return this.f30037j;
    }

    public t a() {
        this.f30029b.b();
        return this;
    }

    public t c(int i9) {
        if (i9 != 0) {
            if (this.f30038k == null) {
                this.f30034g = i9;
                return this;
            }
            throw new IllegalStateException("Error image already set.");
        }
        throw new IllegalArgumentException("Error image resource invalid.");
    }

    public t d() {
        this.f30031d = true;
        return this;
    }

    public void f(ImageView imageView) {
        g(imageView, null);
    }

    public void g(ImageView imageView, e eVar) {
        Bitmap l10;
        long nanoTime = System.nanoTime();
        c0.c();
        if (imageView != null) {
            if (!this.f30029b.c()) {
                this.f30028a.c(imageView);
                if (this.f30032e) {
                    q.d(imageView, e());
                    return;
                }
                return;
            }
            if (this.f30031d) {
                if (!this.f30029b.d()) {
                    int width = imageView.getWidth();
                    int height = imageView.getHeight();
                    if (width != 0 && height != 0) {
                        this.f30029b.e(width, height);
                    } else {
                        if (this.f30032e) {
                            q.d(imageView, e());
                        }
                        this.f30028a.f(imageView, new h(this, imageView, eVar));
                        return;
                    }
                } else {
                    throw new IllegalStateException("Fit cannot be used with resize.");
                }
            }
            s b10 = b(nanoTime);
            String h10 = c0.h(b10);
            if (MemoryPolicy.shouldReadFromMemoryCache(this.f30035h) && (l10 = this.f30028a.l(h10)) != null) {
                this.f30028a.c(imageView);
                Picasso picasso = this.f30028a;
                Context context = picasso.f29860e;
                Picasso.LoadedFrom loadedFrom = Picasso.LoadedFrom.MEMORY;
                q.c(imageView, context, l10, loadedFrom, this.f30030c, picasso.f29868m);
                if (this.f30028a.f29869n) {
                    String g10 = b10.g();
                    c0.v("Main", "completed", g10, "from " + loadedFrom);
                }
                if (eVar != null) {
                    eVar.onSuccess();
                    return;
                }
                return;
            }
            if (this.f30032e) {
                q.d(imageView, e());
            }
            this.f30028a.h(new k(this.f30028a, imageView, b10, this.f30035h, this.f30036i, this.f30034g, this.f30038k, h10, this.f30039l, eVar, this.f30030c));
            return;
        }
        throw new IllegalArgumentException("Target must not be null.");
    }

    public void h(y yVar) {
        Bitmap l10;
        long nanoTime = System.nanoTime();
        c0.c();
        if (yVar != null) {
            if (!this.f30031d) {
                if (!this.f30029b.c()) {
                    this.f30028a.d(yVar);
                    yVar.c(this.f30032e ? e() : null);
                    return;
                }
                s b10 = b(nanoTime);
                String h10 = c0.h(b10);
                if (MemoryPolicy.shouldReadFromMemoryCache(this.f30035h) && (l10 = this.f30028a.l(h10)) != null) {
                    this.f30028a.d(yVar);
                    yVar.b(l10, Picasso.LoadedFrom.MEMORY);
                    return;
                }
                yVar.c(this.f30032e ? e() : null);
                this.f30028a.h(new z(this.f30028a, yVar, b10, this.f30035h, this.f30036i, this.f30038k, h10, this.f30039l, this.f30034g));
                return;
            }
            throw new IllegalStateException("Fit cannot be used with a Target.");
        }
        throw new IllegalArgumentException("Target must not be null.");
    }

    public t i(int i9) {
        if (this.f30032e) {
            if (i9 != 0) {
                if (this.f30037j == null) {
                    this.f30033f = i9;
                    return this;
                }
                throw new IllegalStateException("Placeholder image already set.");
            }
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        }
        throw new IllegalStateException("Already explicitly declared as no placeholder.");
    }

    public t j(Drawable drawable) {
        if (this.f30032e) {
            if (this.f30033f == 0) {
                this.f30037j = drawable;
                return this;
            }
            throw new IllegalStateException("Placeholder image already set.");
        }
        throw new IllegalStateException("Already explicitly declared as no placeholder.");
    }

    public t k(int i9, int i10) {
        this.f30029b.e(i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t l() {
        this.f30031d = false;
        return this;
    }
}
