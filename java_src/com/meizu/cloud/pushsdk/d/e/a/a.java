package com.meizu.cloud.pushsdk.d.e.a;

import com.meizu.cloud.pushsdk.d.b.a.b;
import com.meizu.cloud.pushsdk.d.e.a;
import com.meizu.cloud.pushsdk.d.f.c;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public class a extends com.meizu.cloud.pushsdk.d.e.a {

    /* renamed from: n  reason: collision with root package name */
    private static final String f28642n = "a";

    /* renamed from: o  reason: collision with root package name */
    private static ScheduledExecutorService f28643o;

    public a(a.C0284a c0284a) {
        super(c0284a);
        b.a(this.f28626k);
        c();
    }

    @Override // com.meizu.cloud.pushsdk.d.e.a
    public void a(final com.meizu.cloud.pushsdk.d.c.b bVar, final boolean z10) {
        b.a(new Runnable() { // from class: com.meizu.cloud.pushsdk.d.e.a.a.2
            @Override // java.lang.Runnable
            public void run() {
                a.super.a(bVar, z10);
            }
        });
    }

    public void c() {
        if (f28643o == null && this.f28624i) {
            c.b(f28642n, "Session checking has been resumed.", new Object[0]);
            final com.meizu.cloud.pushsdk.d.e.b bVar = this.f28619d;
            ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
            f28643o = newSingleThreadScheduledExecutor;
            Runnable runnable = new Runnable() { // from class: com.meizu.cloud.pushsdk.d.e.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    bVar.b();
                }
            };
            long j10 = this.f28625j;
            newSingleThreadScheduledExecutor.scheduleAtFixedRate(runnable, j10, j10, this.f28627l);
        }
    }
}
