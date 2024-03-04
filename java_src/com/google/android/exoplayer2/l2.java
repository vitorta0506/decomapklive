package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.l;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public interface l2 {

    /* loaded from: classes.dex */
    public static final class b implements h {

        /* renamed from: b  reason: collision with root package name */
        public static final b f6167b = new a().e();

        /* renamed from: c  reason: collision with root package name */
        public static final h.a<b> f6168c = new h.a() { // from class: com.google.android.exoplayer2.m2
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                l2.b d10;
                d10 = l2.b.d(bundle);
                return d10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.l f6169a;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: b  reason: collision with root package name */
            private static final int[] f6170b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};

            /* renamed from: a  reason: collision with root package name */
            private final l.b f6171a = new l.b();

            public a a(int i9) {
                this.f6171a.a(i9);
                return this;
            }

            public a b(b bVar) {
                this.f6171a.b(bVar.f6169a);
                return this;
            }

            public a c(int... iArr) {
                this.f6171a.c(iArr);
                return this;
            }

            public a d(int i9, boolean z10) {
                this.f6171a.d(i9, z10);
                return this;
            }

            public b e() {
                return new b(this.f6171a.e());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b d(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(e(0));
            if (integerArrayList == null) {
                return f6167b;
            }
            a aVar = new a();
            for (int i9 = 0; i9 < integerArrayList.size(); i9++) {
                aVar.a(integerArrayList.get(i9).intValue());
            }
            return aVar.e();
        }

        private static String e(int i9) {
            return Integer.toString(i9, 36);
        }

        public boolean c(int i9) {
            return this.f6169a.a(i9);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return this.f6169a.equals(((b) obj).f6169a);
            }
            return false;
        }

        public int hashCode() {
            return this.f6169a.hashCode();
        }

        private b(com.google.android.exoplayer2.util.l lVar) {
            this.f6169a = lVar;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.l f6172a;

        public c(com.google.android.exoplayer2.util.l lVar) {
            this.f6172a = lVar;
        }

        public boolean a(int i9) {
            return this.f6172a.a(i9);
        }

        public boolean b(int... iArr) {
            return this.f6172a.b(iArr);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return this.f6172a.equals(((c) obj).f6172a);
            }
            return false;
        }

        public int hashCode() {
            return this.f6172a.hashCode();
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void A(int i9);

        @Deprecated
        void B(boolean z10);

        void C(b bVar);

        void F(i3 i3Var, int i9);

        void G(int i9);

        void I(o oVar);

        void K(x1 x1Var);

        void L(boolean z10);

        void N(int i9, boolean z10);

        void O();

        void R(int i9, int i10);

        void S(@Nullable PlaybackException playbackException);

        void T(h3.z zVar);

        @Deprecated
        void U(int i9);

        void W(n3 n3Var);

        void X(boolean z10);

        @Deprecated
        void Y();

        void Z(PlaybackException playbackException);

        void a(boolean z10);

        void f0(l2 l2Var, c cVar);

        void g(Metadata metadata);

        @Deprecated
        void g0(boolean z10, int i9);

        void h0(@Nullable s1 s1Var, int i9);

        void j0(boolean z10, int i9);

        void k(x2.e eVar);

        @Deprecated
        void l(List<x2.b> list);

        void m0(boolean z10);

        void n(k3.y yVar);

        void onRepeatModeChanged(int i9);

        void q(k2 k2Var);

        void z(e eVar, e eVar2, int i9);
    }

    /* loaded from: classes.dex */
    public static final class e implements h {

        /* renamed from: k  reason: collision with root package name */
        public static final h.a<e> f6173k = new h.a() { // from class: com.google.android.exoplayer2.o2
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                l2.e b10;
                b10 = l2.e.b(bundle);
                return b10;
            }
        };
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Object f6174a;
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public final int f6175b;

        /* renamed from: c  reason: collision with root package name */
        public final int f6176c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final s1 f6177d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final Object f6178e;

        /* renamed from: f  reason: collision with root package name */
        public final int f6179f;

        /* renamed from: g  reason: collision with root package name */
        public final long f6180g;

        /* renamed from: h  reason: collision with root package name */
        public final long f6181h;

        /* renamed from: i  reason: collision with root package name */
        public final int f6182i;

        /* renamed from: j  reason: collision with root package name */
        public final int f6183j;

        public e(@Nullable Object obj, int i9, @Nullable s1 s1Var, @Nullable Object obj2, int i10, long j10, long j11, int i11, int i12) {
            this.f6174a = obj;
            this.f6175b = i9;
            this.f6176c = i9;
            this.f6177d = s1Var;
            this.f6178e = obj2;
            this.f6179f = i10;
            this.f6180g = j10;
            this.f6181h = j11;
            this.f6182i = i11;
            this.f6183j = i12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static e b(Bundle bundle) {
            int i9 = bundle.getInt(c(0), -1);
            Bundle bundle2 = bundle.getBundle(c(1));
            return new e(null, i9, bundle2 == null ? null : s1.f6451j.a(bundle2), null, bundle.getInt(c(2), -1), bundle.getLong(c(3), -9223372036854775807L), bundle.getLong(c(4), -9223372036854775807L), bundle.getInt(c(5), -1), bundle.getInt(c(6), -1));
        }

        private static String c(int i9) {
            return Integer.toString(i9, 36);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f6176c == eVar.f6176c && this.f6179f == eVar.f6179f && this.f6180g == eVar.f6180g && this.f6181h == eVar.f6181h && this.f6182i == eVar.f6182i && this.f6183j == eVar.f6183j && com.google.common.base.l.a(this.f6174a, eVar.f6174a) && com.google.common.base.l.a(this.f6178e, eVar.f6178e) && com.google.common.base.l.a(this.f6177d, eVar.f6177d);
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f6174a, Integer.valueOf(this.f6176c), this.f6177d, this.f6178e, Integer.valueOf(this.f6179f), Long.valueOf(this.f6180g), Long.valueOf(this.f6181h), Integer.valueOf(this.f6182i), Integer.valueOf(this.f6183j));
        }
    }

    boolean A();

    void B(boolean z10);

    @Deprecated
    void C(boolean z10);

    long D();

    int E();

    void F(@Nullable TextureView textureView);

    boolean G();

    int H();

    long I();

    long J();

    void K(d dVar);

    boolean L();

    int M();

    void N(@Nullable SurfaceView surfaceView);

    boolean O();

    long P();

    void Q();

    void R();

    x1 S();

    long T();

    boolean U();

    k2 b();

    void d(k2 k2Var);

    boolean e();

    long f();

    void g(d dVar);

    long getCurrentPosition();

    long getDuration();

    int getPlaybackState();

    int getRepeatMode();

    k3.y getVideoSize();

    void h(@Nullable SurfaceView surfaceView);

    void i(h3.z zVar);

    boolean isPlaying();

    void j();

    @Nullable
    PlaybackException k();

    void l(boolean z10);

    n3 m();

    boolean n();

    x2.e o();

    int p();

    void pause();

    void play();

    void prepare();

    boolean q(int i9);

    boolean r();

    void release();

    int s();

    void setRepeatMode(int i9);

    void stop();

    i3 t();

    Looper u();

    h3.z v();

    void w();

    void x(@Nullable TextureView textureView);

    void y(int i9, long j10);

    b z();
}
