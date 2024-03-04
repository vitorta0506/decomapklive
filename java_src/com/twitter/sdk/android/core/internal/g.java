package com.twitter.sdk.android.core.internal;

import android.app.Activity;
import com.twitter.sdk.android.core.internal.a;
import com.twitter.sdk.android.core.j;
import java.util.Calendar;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4.dex */
public class g<T extends com.twitter.sdk.android.core.j> {

    /* renamed from: a  reason: collision with root package name */
    protected final b f35170a;

    /* renamed from: b  reason: collision with root package name */
    private final i f35171b;

    /* renamed from: c  reason: collision with root package name */
    private final com.twitter.sdk.android.core.k<T> f35172c;

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f35173d;

    /* renamed from: e  reason: collision with root package name */
    private final h f35174e;

    /* loaded from: classes4.dex */
    class a extends a.b {
        a() {
        }

        @Override // com.twitter.sdk.android.core.internal.a.b
        public void f(Activity activity) {
            g.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f35176a;

        /* renamed from: b  reason: collision with root package name */
        public long f35177b;

        /* renamed from: c  reason: collision with root package name */
        private final Calendar f35178c = Calendar.getInstance(TimeZone.getTimeZone("UTC"));

        private boolean c(long j10, long j11) {
            this.f35178c.setTimeInMillis(j10);
            int i9 = this.f35178c.get(6);
            int i10 = this.f35178c.get(1);
            this.f35178c.setTimeInMillis(j11);
            return i9 == this.f35178c.get(6) && i10 == this.f35178c.get(1);
        }

        public synchronized boolean a(long j10) {
            long j11 = this.f35177b;
            boolean z10 = j10 - j11 > 21600000;
            boolean z11 = !c(j10, j11);
            if (this.f35176a || !(z10 || z11)) {
                return false;
            }
            this.f35176a = true;
            return true;
        }

        public synchronized void b(long j10) {
            this.f35176a = false;
            this.f35177b = j10;
        }
    }

    public g(com.twitter.sdk.android.core.k<T> kVar, ExecutorService executorService, h<T> hVar) {
        this(kVar, new i(), executorService, new b(), hVar);
    }

    public void a(com.twitter.sdk.android.core.internal.a aVar) {
        aVar.a(new a());
    }

    public void b() {
        if (this.f35172c.d() != null && this.f35170a.a(this.f35171b.a())) {
            this.f35173d.submit(new Runnable() { // from class: com.twitter.sdk.android.core.internal.f
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.c();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        for (T t10 : this.f35172c.c().values()) {
            this.f35174e.a(t10);
        }
        this.f35170a.b(this.f35171b.a());
    }

    g(com.twitter.sdk.android.core.k<T> kVar, i iVar, ExecutorService executorService, b bVar, h hVar) {
        this.f35171b = iVar;
        this.f35172c = kVar;
        this.f35173d = executorService;
        this.f35170a = bVar;
        this.f35174e = hVar;
    }
}
