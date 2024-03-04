package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public class f<R> implements d<R>, g<R> {

    /* renamed from: k  reason: collision with root package name */
    private static final a f4692k = new a();

    /* renamed from: a  reason: collision with root package name */
    private final int f4693a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4694b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4695c;

    /* renamed from: d  reason: collision with root package name */
    private final a f4696d;
    @Nullable
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    private R f4697e;
    @Nullable
    @GuardedBy("this")

    /* renamed from: f  reason: collision with root package name */
    private e f4698f;
    @GuardedBy("this")

    /* renamed from: g  reason: collision with root package name */
    private boolean f4699g;
    @GuardedBy("this")

    /* renamed from: h  reason: collision with root package name */
    private boolean f4700h;
    @GuardedBy("this")

    /* renamed from: i  reason: collision with root package name */
    private boolean f4701i;
    @Nullable
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private GlideException f4702j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a {
        a() {
        }

        void a(Object obj) {
            obj.notifyAll();
        }

        void b(Object obj, long j10) throws InterruptedException {
            obj.wait(j10);
        }
    }

    public f(int i9, int i10) {
        this(i9, i10, true, f4692k);
    }

    private synchronized R e(Long l10) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.f4695c && !isDone()) {
            v0.k.a();
        }
        if (!this.f4699g) {
            if (!this.f4701i) {
                if (this.f4700h) {
                    return this.f4697e;
                }
                if (l10 == null) {
                    this.f4696d.b(this, 0L);
                } else if (l10.longValue() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    long longValue = l10.longValue() + currentTimeMillis;
                    while (!isDone() && currentTimeMillis < longValue) {
                        this.f4696d.b(this, longValue - currentTimeMillis);
                        currentTimeMillis = System.currentTimeMillis();
                    }
                }
                if (!Thread.interrupted()) {
                    if (!this.f4701i) {
                        if (!this.f4699g) {
                            if (this.f4700h) {
                                return this.f4697e;
                            }
                            throw new TimeoutException();
                        }
                        throw new CancellationException();
                    }
                    throw new ExecutionException(this.f4702j);
                }
                throw new InterruptedException();
            }
            throw new ExecutionException(this.f4702j);
        }
        throw new CancellationException();
    }

    @Override // com.bumptech.glide.request.g
    public synchronized boolean a(R r10, Object obj, s0.k<R> kVar, DataSource dataSource, boolean z10) {
        this.f4700h = true;
        this.f4697e = r10;
        this.f4696d.a(this);
        return false;
    }

    @Override // com.bumptech.glide.request.g
    public synchronized boolean b(@Nullable GlideException glideException, Object obj, s0.k<R> kVar, boolean z10) {
        this.f4701i = true;
        this.f4702j = glideException;
        this.f4696d.a(this);
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        synchronized (this) {
            if (isDone()) {
                return false;
            }
            this.f4699g = true;
            this.f4696d.a(this);
            e eVar = null;
            if (z10) {
                e eVar2 = this.f4698f;
                this.f4698f = null;
                eVar = eVar2;
            }
            if (eVar != null) {
                eVar.clear();
            }
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public R get() throws InterruptedException, ExecutionException {
        try {
            return e(null);
        } catch (TimeoutException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // s0.k
    @Nullable
    public synchronized e getRequest() {
        return this.f4698f;
    }

    @Override // s0.k
    public void getSize(@NonNull s0.j jVar) {
        jVar.d(this.f4693a, this.f4694b);
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isCancelled() {
        return this.f4699g;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isDone() {
        boolean z10;
        if (!this.f4699g && !this.f4700h) {
            z10 = this.f4701i;
        }
        return z10;
    }

    @Override // p0.f
    public void onDestroy() {
    }

    @Override // s0.k
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override // s0.k
    public synchronized void onLoadFailed(@Nullable Drawable drawable) {
    }

    @Override // s0.k
    public void onLoadStarted(@Nullable Drawable drawable) {
    }

    @Override // s0.k
    public synchronized void onResourceReady(@NonNull R r10, @Nullable t0.f<? super R> fVar) {
    }

    @Override // p0.f
    public void onStart() {
    }

    @Override // p0.f
    public void onStop() {
    }

    @Override // s0.k
    public void removeCallback(@NonNull s0.j jVar) {
    }

    @Override // s0.k
    public synchronized void setRequest(@Nullable e eVar) {
        this.f4698f = eVar;
    }

    public String toString() {
        e eVar;
        String str;
        String str2 = super.toString() + "[status=";
        synchronized (this) {
            eVar = null;
            if (this.f4699g) {
                str = "CANCELLED";
            } else if (this.f4701i) {
                str = "FAILURE";
            } else if (this.f4700h) {
                str = "SUCCESS";
            } else {
                str = "PENDING";
                eVar = this.f4698f;
            }
        }
        if (eVar != null) {
            return str2 + str + ", request=[" + eVar + "]]";
        }
        return str2 + str + "]";
    }

    f(int i9, int i10, boolean z10, a aVar) {
        this.f4693a = i9;
        this.f4694b = i10;
        this.f4695c = z10;
        this.f4696d = aVar;
    }

    @Override // java.util.concurrent.Future
    public R get(long j10, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return e(Long.valueOf(timeUnit.toMillis(j10)));
    }
}
