package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.j;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import v2.q;
/* loaded from: classes.dex */
public interface q extends l2 {

    /* loaded from: classes.dex */
    public interface a {
        void D(boolean z10);
    }

    /* loaded from: classes.dex */
    public static final class b {
        boolean A;
        boolean B;

        /* renamed from: a  reason: collision with root package name */
        final Context f6409a;

        /* renamed from: b  reason: collision with root package name */
        com.google.android.exoplayer2.util.d f6410b;

        /* renamed from: c  reason: collision with root package name */
        long f6411c;

        /* renamed from: d  reason: collision with root package name */
        com.google.common.base.w<y2> f6412d;

        /* renamed from: e  reason: collision with root package name */
        com.google.common.base.w<q.a> f6413e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.base.w<h3.b0> f6414f;

        /* renamed from: g  reason: collision with root package name */
        com.google.common.base.w<q1> f6415g;

        /* renamed from: h  reason: collision with root package name */
        com.google.common.base.w<j3.d> f6416h;

        /* renamed from: i  reason: collision with root package name */
        com.google.common.base.h<com.google.android.exoplayer2.util.d, a2.a> f6417i;

        /* renamed from: j  reason: collision with root package name */
        Looper f6418j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        PriorityTaskManager f6419k;

        /* renamed from: l  reason: collision with root package name */
        com.google.android.exoplayer2.audio.e f6420l;

        /* renamed from: m  reason: collision with root package name */
        boolean f6421m;

        /* renamed from: n  reason: collision with root package name */
        int f6422n;

        /* renamed from: o  reason: collision with root package name */
        boolean f6423o;

        /* renamed from: p  reason: collision with root package name */
        boolean f6424p;

        /* renamed from: q  reason: collision with root package name */
        int f6425q;

        /* renamed from: r  reason: collision with root package name */
        int f6426r;

        /* renamed from: s  reason: collision with root package name */
        boolean f6427s;

        /* renamed from: t  reason: collision with root package name */
        z2 f6428t;

        /* renamed from: u  reason: collision with root package name */
        long f6429u;

        /* renamed from: v  reason: collision with root package name */
        long f6430v;

        /* renamed from: w  reason: collision with root package name */
        p1 f6431w;

        /* renamed from: x  reason: collision with root package name */
        long f6432x;

        /* renamed from: y  reason: collision with root package name */
        long f6433y;

        /* renamed from: z  reason: collision with root package name */
        boolean f6434z;

        public b(final Context context) {
            this(context, new com.google.common.base.w() { // from class: com.google.android.exoplayer2.t
                @Override // com.google.common.base.w, java.util.function.Supplier
                public final Object get() {
                    y2 f10;
                    f10 = q.b.f(context);
                    return f10;
                }
            }, new com.google.common.base.w() { // from class: com.google.android.exoplayer2.v
                @Override // com.google.common.base.w, java.util.function.Supplier
                public final Object get() {
                    q.a g10;
                    g10 = q.b.g(context);
                    return g10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ y2 f(Context context) {
            return new m(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ q.a g(Context context) {
            return new v2.f(context, new c2.i());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ h3.b0 h(Context context) {
            return new h3.m(context);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a3 e() {
            com.google.android.exoplayer2.util.a.f(!this.B);
            this.B = true;
            return new a3(this);
        }

        private b(final Context context, com.google.common.base.w<y2> wVar, com.google.common.base.w<q.a> wVar2) {
            this(context, wVar, wVar2, new com.google.common.base.w() { // from class: com.google.android.exoplayer2.u
                @Override // com.google.common.base.w, java.util.function.Supplier
                public final Object get() {
                    h3.b0 h10;
                    h10 = q.b.h(context);
                    return h10;
                }
            }, new com.google.common.base.w() { // from class: com.google.android.exoplayer2.w
                @Override // com.google.common.base.w, java.util.function.Supplier
                public final Object get() {
                    return new k();
                }
            }, new com.google.common.base.w() { // from class: com.google.android.exoplayer2.s
                @Override // com.google.common.base.w, java.util.function.Supplier
                public final Object get() {
                    j3.d l10;
                    l10 = j3.o.l(context);
                    return l10;
                }
            }, new com.google.common.base.h() { // from class: com.google.android.exoplayer2.r
                @Override // com.google.common.base.h, java.util.function.Function
                public final Object apply(Object obj) {
                    return new a2.n1((com.google.android.exoplayer2.util.d) obj);
                }
            });
        }

        private b(Context context, com.google.common.base.w<y2> wVar, com.google.common.base.w<q.a> wVar2, com.google.common.base.w<h3.b0> wVar3, com.google.common.base.w<q1> wVar4, com.google.common.base.w<j3.d> wVar5, com.google.common.base.h<com.google.android.exoplayer2.util.d, a2.a> hVar) {
            this.f6409a = context;
            this.f6412d = wVar;
            this.f6413e = wVar2;
            this.f6414f = wVar3;
            this.f6415g = wVar4;
            this.f6416h = wVar5;
            this.f6417i = hVar;
            this.f6418j = com.google.android.exoplayer2.util.l0.K();
            this.f6420l = com.google.android.exoplayer2.audio.e.f5488g;
            this.f6422n = 0;
            this.f6425q = 1;
            this.f6426r = 0;
            this.f6427s = true;
            this.f6428t = z2.f7332g;
            this.f6429u = 5000L;
            this.f6430v = 15000L;
            this.f6431w = new j.b().a();
            this.f6410b = com.google.android.exoplayer2.util.d.f6951a;
            this.f6432x = 500L;
            this.f6433y = 2000L;
            this.A = true;
        }
    }

    @Deprecated
    void a(v2.q qVar);
}
