package com.google.api.gax.rpc;

import com.google.api.gax.rpc.g0;
import com.google.api.gax.rpc.k;
import java.io.IOException;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public abstract class k<SettingsT extends k<SettingsT>> {

    /* renamed from: a  reason: collision with root package name */
    private final g0 f11311a;

    /* loaded from: classes2.dex */
    public static abstract class a<SettingsT extends k<SettingsT>, B extends a<SettingsT, B>> {

        /* renamed from: a  reason: collision with root package name */
        private g0.a f11312a;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(g0.a aVar) {
            this.f11312a = aVar;
        }

        public l5.h b() {
            return this.f11312a.p();
        }

        public k5.a c() {
            return this.f11312a.q();
        }

        public l5.f d() {
            return this.f11312a.r();
        }

        public String e() {
            return this.f11312a.s();
        }

        @Deprecated
        public l5.h f() {
            return this.f11312a.t();
        }

        public p g() {
            return this.f11312a.u();
        }

        protected p h() {
            return this.f11312a.v();
        }

        public String i() {
            return this.f11312a.w();
        }

        public i0 j() {
            return this.f11312a.A();
        }

        public Duration k() {
            return this.f11312a.y();
        }

        public m0 l() {
            return this.f11312a.z();
        }

        protected B m() {
            return this;
        }

        public B n(l5.f fVar) {
            this.f11312a.C(fVar);
            return m();
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("executorProvider", f()).d("backgroundExecutorProvider", b()).d("transportChannelProvider", j()).d("credentialsProvider", d()).d("headerProvider", g()).d("internalHeaderProvider", h()).d("clock", c()).d("endpoint", e()).d("quotaProjectId", i()).d("watchdogProvider", l()).d("watchdogCheckInterval", k()).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k(a aVar) throws IOException {
        this.f11311a = aVar.f11312a.o();
    }

    public final l5.h a() {
        return this.f11311a.a();
    }

    public final k5.a b() {
        return this.f11311a.b();
    }

    public final l5.f c() {
        return this.f11311a.c();
    }

    public final String d() {
        return this.f11311a.d();
    }

    @Deprecated
    public final l5.h e() {
        return this.f11311a.e();
    }

    public final p f() {
        return this.f11311a.f();
    }

    protected final p g() {
        return this.f11311a.g();
    }

    public final String h() {
        return this.f11311a.i();
    }

    public final g0 i() {
        return this.f11311a;
    }

    public final i0 j() {
        return this.f11311a.n();
    }

    public final Duration k() {
        return this.f11311a.j();
    }

    public final m0 l() {
        return this.f11311a.k();
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("executorProvider", e()).d("backgroundExecutorProvider", a()).d("transportChannelProvider", j()).d("credentialsProvider", c()).d("headerProvider", f()).d("internalHeaderProvider", g()).d("clock", b()).d("endpoint", d()).d("quotaProjectId", h()).d("watchdogProvider", l()).d("watchdogCheckInterval", k()).toString();
    }
}
