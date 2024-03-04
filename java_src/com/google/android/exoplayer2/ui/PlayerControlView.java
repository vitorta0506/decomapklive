package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.i1;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.s1;
import com.google.android.exoplayer2.ui.PlayerControlView;
import com.google.android.exoplayer2.ui.c0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public class PlayerControlView extends FrameLayout {
    private final Drawable A;
    private final Drawable B;
    private boolean[] B3;
    private final float C;
    private boolean[] C4;
    private final float D;
    private long D4;
    private final String E;
    private long E4;
    private final String F;
    private long F4;
    @Nullable
    private l2 G;
    @Nullable
    private d H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private int M;
    private int N;
    private int O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean V1;
    private long[] V2;
    private long[] V3;

    /* renamed from: a  reason: collision with root package name */
    private final c f6588a;

    /* renamed from: a1  reason: collision with root package name */
    private boolean f6589a1;

    /* renamed from: a2  reason: collision with root package name */
    private long f6590a2;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<e> f6591b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f6592c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f6593d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final View f6594e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final View f6595f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final View f6596g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final View f6597h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final ImageView f6598i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final ImageView f6599j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final View f6600k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final TextView f6601l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final TextView f6602m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final c0 f6603n;

    /* renamed from: o  reason: collision with root package name */
    private final StringBuilder f6604o;

    /* renamed from: p  reason: collision with root package name */
    private final Formatter f6605p;

    /* renamed from: q  reason: collision with root package name */
    private final i3.b f6606q;

    /* renamed from: r  reason: collision with root package name */
    private final i3.d f6607r;

    /* renamed from: s  reason: collision with root package name */
    private final Runnable f6608s;

    /* renamed from: t  reason: collision with root package name */
    private final Runnable f6609t;

    /* renamed from: u  reason: collision with root package name */
    private final Drawable f6610u;

    /* renamed from: v  reason: collision with root package name */
    private final Drawable f6611v;

    /* renamed from: w  reason: collision with root package name */
    private final Drawable f6612w;

    /* renamed from: x  reason: collision with root package name */
    private final String f6613x;

    /* renamed from: y  reason: collision with root package name */
    private final String f6614y;

    /* renamed from: z  reason: collision with root package name */
    private final String f6615z;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes2.dex */
    public static final class b {
        @DoNotInline
        public static boolean a(View view) {
            return view.isAccessibilityFocused();
        }
    }

    /* loaded from: classes2.dex */
    private final class c implements l2.d, c0.a, View.OnClickListener {
        private c() {
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void A(int i9) {
            n2.p(this, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void B(boolean z10) {
            n2.i(this, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void C(l2.b bVar) {
            n2.a(this, bVar);
        }

        @Override // com.google.android.exoplayer2.ui.c0.a
        public void D(c0 c0Var, long j10, boolean z10) {
            PlayerControlView.this.L = false;
            if (z10 || PlayerControlView.this.G == null) {
                return;
            }
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.N(playerControlView.G, j10);
        }

        @Override // com.google.android.exoplayer2.ui.c0.a
        public void E(c0 c0Var, long j10) {
            PlayerControlView.this.L = true;
            if (PlayerControlView.this.f6602m != null) {
                PlayerControlView.this.f6602m.setText(l0.b0(PlayerControlView.this.f6604o, PlayerControlView.this.f6605p, j10));
            }
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void F(i3 i3Var, int i9) {
            n2.B(this, i3Var, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void G(int i9) {
            n2.o(this, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void I(com.google.android.exoplayer2.o oVar) {
            n2.d(this, oVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void K(x1 x1Var) {
            n2.k(this, x1Var);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void L(boolean z10) {
            n2.y(this, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void N(int i9, boolean z10) {
            n2.e(this, i9, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void O() {
            n2.v(this);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void R(int i9, int i10) {
            n2.A(this, i9, i10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void S(PlaybackException playbackException) {
            n2.r(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void T(h3.z zVar) {
            n2.C(this, zVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void U(int i9) {
            n2.t(this, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void W(n3 n3Var) {
            n2.D(this, n3Var);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void X(boolean z10) {
            n2.g(this, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void Y() {
            n2.x(this);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void Z(PlaybackException playbackException) {
            n2.q(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void a(boolean z10) {
            n2.z(this, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void f0(l2 l2Var, l2.c cVar) {
            if (cVar.b(4, 5)) {
                PlayerControlView.this.T();
            }
            if (cVar.b(4, 5, 7)) {
                PlayerControlView.this.U();
            }
            if (cVar.a(8)) {
                PlayerControlView.this.V();
            }
            if (cVar.a(9)) {
                PlayerControlView.this.W();
            }
            if (cVar.b(8, 9, 11, 0, 13)) {
                PlayerControlView.this.S();
            }
            if (cVar.b(11, 0)) {
                PlayerControlView.this.X();
            }
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void g(Metadata metadata) {
            n2.l(this, metadata);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void g0(boolean z10, int i9) {
            n2.s(this, z10, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void h0(s1 s1Var, int i9) {
            n2.j(this, s1Var, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void j0(boolean z10, int i9) {
            n2.m(this, z10, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void k(x2.e eVar) {
            n2.c(this, eVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void l(List list) {
            n2.b(this, list);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void m0(boolean z10) {
            n2.h(this, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void n(k3.y yVar) {
            n2.E(this, yVar);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l2 l2Var = PlayerControlView.this.G;
            if (l2Var == null) {
                return;
            }
            if (PlayerControlView.this.f6593d == view) {
                l2Var.w();
            } else if (PlayerControlView.this.f6592c == view) {
                l2Var.j();
            } else if (PlayerControlView.this.f6596g == view) {
                if (l2Var.getPlaybackState() != 4) {
                    l2Var.Q();
                }
            } else if (PlayerControlView.this.f6597h == view) {
                l2Var.R();
            } else if (PlayerControlView.this.f6594e == view) {
                PlayerControlView.this.C(l2Var);
            } else if (PlayerControlView.this.f6595f == view) {
                PlayerControlView.this.B(l2Var);
            } else if (PlayerControlView.this.f6598i == view) {
                l2Var.setRepeatMode(com.google.android.exoplayer2.util.d0.a(l2Var.getRepeatMode(), PlayerControlView.this.O));
            } else if (PlayerControlView.this.f6599j == view) {
                l2Var.B(!l2Var.O());
            }
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void onRepeatModeChanged(int i9) {
            n2.w(this, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void q(k2 k2Var) {
            n2.n(this, k2Var);
        }

        @Override // com.google.android.exoplayer2.ui.c0.a
        public void r(c0 c0Var, long j10) {
            if (PlayerControlView.this.f6602m != null) {
                PlayerControlView.this.f6602m.setText(l0.b0(PlayerControlView.this.f6604o, PlayerControlView.this.f6605p, j10));
            }
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void z(l2.e eVar, l2.e eVar2, int i9) {
            n2.u(this, eVar, eVar2, i9);
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(long j10, long j11);
    }

    /* loaded from: classes2.dex */
    public interface e {
        void r(int i9);
    }

    static {
        i1.a("goog.exo.ui");
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(l2 l2Var) {
        l2Var.pause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(l2 l2Var) {
        int playbackState = l2Var.getPlaybackState();
        if (playbackState == 1) {
            l2Var.prepare();
        } else if (playbackState == 4) {
            M(l2Var, l2Var.M(), -9223372036854775807L);
        }
        l2Var.play();
    }

    private void D(l2 l2Var) {
        int playbackState = l2Var.getPlaybackState();
        if (playbackState != 1 && playbackState != 4 && l2Var.A()) {
            B(l2Var);
        } else {
            C(l2Var);
        }
    }

    private static int E(TypedArray typedArray, int i9) {
        return typedArray.getInt(R$styleable.PlayerControlView_repeat_toggle_modes, i9);
    }

    private void G() {
        removeCallbacks(this.f6609t);
        if (this.M > 0) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int i9 = this.M;
            this.f6590a2 = uptimeMillis + i9;
            if (this.I) {
                postDelayed(this.f6609t, i9);
                return;
            }
            return;
        }
        this.f6590a2 = -9223372036854775807L;
    }

    private static boolean H(int i9) {
        return i9 == 90 || i9 == 89 || i9 == 85 || i9 == 79 || i9 == 126 || i9 == 127 || i9 == 87 || i9 == 88;
    }

    private void K() {
        View view;
        View view2;
        boolean O = O();
        if (!O && (view2 = this.f6594e) != null) {
            view2.sendAccessibilityEvent(8);
        } else if (!O || (view = this.f6595f) == null) {
        } else {
            view.sendAccessibilityEvent(8);
        }
    }

    private void L() {
        View view;
        View view2;
        boolean O = O();
        if (!O && (view2 = this.f6594e) != null) {
            view2.requestFocus();
        } else if (!O || (view = this.f6595f) == null) {
        } else {
            view.requestFocus();
        }
    }

    private void M(l2 l2Var, int i9, long j10) {
        l2Var.y(i9, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(l2 l2Var, long j10) {
        int M;
        i3 t10 = l2Var.t();
        if (this.K && !t10.u()) {
            int t11 = t10.t();
            M = 0;
            while (true) {
                long f10 = t10.r(M, this.f6607r).f();
                if (j10 < f10) {
                    break;
                } else if (M == t11 - 1) {
                    j10 = f10;
                    break;
                } else {
                    j10 -= f10;
                    M++;
                }
            }
        } else {
            M = l2Var.M();
        }
        M(l2Var, M, j10);
        U();
    }

    private boolean O() {
        l2 l2Var = this.G;
        return (l2Var == null || l2Var.getPlaybackState() == 4 || this.G.getPlaybackState() == 1 || !this.G.A()) ? false : true;
    }

    private void Q() {
        T();
        S();
        V();
        W();
        X();
    }

    private void R(boolean z10, boolean z11, @Nullable View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z11);
        view.setAlpha(z11 ? this.C : this.D);
        view.setVisibility(z10 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (I() && this.I) {
            l2 l2Var = this.G;
            boolean z14 = false;
            if (l2Var != null) {
                boolean q10 = l2Var.q(5);
                boolean q11 = l2Var.q(7);
                z12 = l2Var.q(11);
                z13 = l2Var.q(12);
                z10 = l2Var.q(9);
                z11 = q10;
                z14 = q11;
            } else {
                z10 = false;
                z11 = false;
                z12 = false;
                z13 = false;
            }
            R(this.R, z14, this.f6592c);
            R(this.P, z12, this.f6597h);
            R(this.Q, z13, this.f6596g);
            R(this.f6589a1, z10, this.f6593d);
            c0 c0Var = this.f6603n;
            if (c0Var != null) {
                c0Var.setEnabled(z11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        boolean z10;
        boolean z11;
        boolean z12;
        if (I() && this.I) {
            boolean O = O();
            View view = this.f6594e;
            boolean z13 = true;
            if (view != null) {
                z10 = (O && view.isFocused()) | false;
                if (l0.f6985a < 21) {
                    z12 = z10;
                } else {
                    z12 = O && b.a(this.f6594e);
                }
                z11 = z12 | false;
                this.f6594e.setVisibility(O ? 8 : 0);
            } else {
                z10 = false;
                z11 = false;
            }
            View view2 = this.f6595f;
            if (view2 != null) {
                z10 |= !O && view2.isFocused();
                if (l0.f6985a < 21) {
                    z13 = z10;
                } else if (O || !b.a(this.f6595f)) {
                    z13 = false;
                }
                z11 |= z13;
                this.f6595f.setVisibility(O ? 0 : 8);
            }
            if (z10) {
                L();
            }
            if (z11) {
                K();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        long j10;
        float f10;
        if (I() && this.I) {
            l2 l2Var = this.G;
            long j11 = 0;
            if (l2Var != null) {
                j11 = this.D4 + l2Var.J();
                j10 = this.D4 + l2Var.P();
            } else {
                j10 = 0;
            }
            boolean z10 = j11 != this.E4;
            boolean z11 = j10 != this.F4;
            this.E4 = j11;
            this.F4 = j10;
            TextView textView = this.f6602m;
            if (textView != null && !this.L && z10) {
                textView.setText(l0.b0(this.f6604o, this.f6605p, j11));
            }
            c0 c0Var = this.f6603n;
            if (c0Var != null) {
                c0Var.setPosition(j11);
                this.f6603n.setBufferedPosition(j10);
            }
            d dVar = this.H;
            if (dVar != null && (z10 || z11)) {
                dVar.a(j11, j10);
            }
            removeCallbacks(this.f6608s);
            int playbackState = l2Var == null ? 1 : l2Var.getPlaybackState();
            if (l2Var == null || !l2Var.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f6608s, 1000L);
                return;
            }
            c0 c0Var2 = this.f6603n;
            long min = Math.min(c0Var2 != null ? c0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (j11 % 1000));
            postDelayed(this.f6608s, l0.q(l2Var.b().f6154a > 0.0f ? ((float) min) / f10 : 1000L, this.N, 1000L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        ImageView imageView;
        if (I() && this.I && (imageView = this.f6598i) != null) {
            if (this.O == 0) {
                R(false, false, imageView);
                return;
            }
            l2 l2Var = this.G;
            if (l2Var == null) {
                R(true, false, imageView);
                this.f6598i.setImageDrawable(this.f6610u);
                this.f6598i.setContentDescription(this.f6613x);
                return;
            }
            R(true, true, imageView);
            int repeatMode = l2Var.getRepeatMode();
            if (repeatMode == 0) {
                this.f6598i.setImageDrawable(this.f6610u);
                this.f6598i.setContentDescription(this.f6613x);
            } else if (repeatMode == 1) {
                this.f6598i.setImageDrawable(this.f6611v);
                this.f6598i.setContentDescription(this.f6614y);
            } else if (repeatMode == 2) {
                this.f6598i.setImageDrawable(this.f6612w);
                this.f6598i.setContentDescription(this.f6615z);
            }
            this.f6598i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        ImageView imageView;
        String str;
        if (I() && this.I && (imageView = this.f6599j) != null) {
            l2 l2Var = this.G;
            if (!this.V1) {
                R(false, false, imageView);
            } else if (l2Var == null) {
                R(true, false, imageView);
                this.f6599j.setImageDrawable(this.B);
                this.f6599j.setContentDescription(this.F);
            } else {
                R(true, true, imageView);
                this.f6599j.setImageDrawable(l2Var.O() ? this.A : this.B);
                ImageView imageView2 = this.f6599j;
                if (l2Var.O()) {
                    str = this.E;
                } else {
                    str = this.F;
                }
                imageView2.setContentDescription(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        int i9;
        i3.d dVar;
        l2 l2Var = this.G;
        if (l2Var == null) {
            return;
        }
        boolean z10 = true;
        this.K = this.J && z(l2Var.t(), this.f6607r);
        long j10 = 0;
        this.D4 = 0L;
        i3 t10 = l2Var.t();
        if (t10.u()) {
            i9 = 0;
        } else {
            int M = l2Var.M();
            boolean z11 = this.K;
            int i10 = z11 ? 0 : M;
            int t11 = z11 ? t10.t() - 1 : M;
            long j11 = 0;
            i9 = 0;
            while (true) {
                if (i10 > t11) {
                    break;
                }
                if (i10 == M) {
                    this.D4 = l0.P0(j11);
                }
                t10.r(i10, this.f6607r);
                i3.d dVar2 = this.f6607r;
                if (dVar2.f6054n == -9223372036854775807L) {
                    com.google.android.exoplayer2.util.a.f(this.K ^ z10);
                    break;
                }
                int i11 = dVar2.f6055o;
                while (true) {
                    dVar = this.f6607r;
                    if (i11 <= dVar.f6056p) {
                        t10.j(i11, this.f6606q);
                        int f10 = this.f6606q.f();
                        for (int r10 = this.f6606q.r(); r10 < f10; r10++) {
                            long i12 = this.f6606q.i(r10);
                            if (i12 == Long.MIN_VALUE) {
                                long j12 = this.f6606q.f6029d;
                                if (j12 != -9223372036854775807L) {
                                    i12 = j12;
                                }
                            }
                            long q10 = i12 + this.f6606q.q();
                            if (q10 >= 0) {
                                long[] jArr = this.V2;
                                if (i9 == jArr.length) {
                                    int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                    this.V2 = Arrays.copyOf(jArr, length);
                                    this.B3 = Arrays.copyOf(this.B3, length);
                                }
                                this.V2[i9] = l0.P0(j11 + q10);
                                this.B3[i9] = this.f6606q.s(r10);
                                i9++;
                            }
                        }
                        i11++;
                    }
                }
                j11 += dVar.f6054n;
                i10++;
                z10 = true;
            }
            j10 = j11;
        }
        long P0 = l0.P0(j10);
        TextView textView = this.f6601l;
        if (textView != null) {
            textView.setText(l0.b0(this.f6604o, this.f6605p, P0));
        }
        c0 c0Var = this.f6603n;
        if (c0Var != null) {
            c0Var.setDuration(P0);
            int length2 = this.V3.length;
            int i13 = i9 + length2;
            long[] jArr2 = this.V2;
            if (i13 > jArr2.length) {
                this.V2 = Arrays.copyOf(jArr2, i13);
                this.B3 = Arrays.copyOf(this.B3, i13);
            }
            System.arraycopy(this.V3, 0, this.V2, i9, length2);
            System.arraycopy(this.C4, 0, this.B3, i9, length2);
            this.f6603n.a(this.V2, this.B3, i13);
        }
        U();
    }

    private static boolean z(i3 i3Var, i3.d dVar) {
        if (i3Var.t() > 100) {
            return false;
        }
        int t10 = i3Var.t();
        for (int i9 = 0; i9 < t10; i9++) {
            if (i3Var.r(i9, dVar).f6054n == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    public boolean A(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        l2 l2Var = this.G;
        if (l2Var == null || !H(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode == 90) {
                if (l2Var.getPlaybackState() != 4) {
                    l2Var.Q();
                    return true;
                }
                return true;
            } else if (keyCode == 89) {
                l2Var.R();
                return true;
            } else if (keyEvent.getRepeatCount() == 0) {
                if (keyCode == 79 || keyCode == 85) {
                    D(l2Var);
                    return true;
                } else if (keyCode == 87) {
                    l2Var.w();
                    return true;
                } else if (keyCode == 88) {
                    l2Var.j();
                    return true;
                } else if (keyCode == 126) {
                    C(l2Var);
                    return true;
                } else if (keyCode != 127) {
                    return true;
                } else {
                    B(l2Var);
                    return true;
                }
            } else {
                return true;
            }
        }
        return true;
    }

    public void F() {
        if (I()) {
            setVisibility(8);
            Iterator<e> it = this.f6591b.iterator();
            while (it.hasNext()) {
                it.next().r(getVisibility());
            }
            removeCallbacks(this.f6608s);
            removeCallbacks(this.f6609t);
            this.f6590a2 = -9223372036854775807L;
        }
    }

    public boolean I() {
        return getVisibility() == 0;
    }

    public void J(e eVar) {
        this.f6591b.remove(eVar);
    }

    public void P() {
        if (!I()) {
            setVisibility(0);
            Iterator<e> it = this.f6591b.iterator();
            while (it.hasNext()) {
                it.next().r(getVisibility());
            }
            Q();
            L();
            K();
        }
        G();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return A(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f6609t);
        } else if (motionEvent.getAction() == 1) {
            G();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public l2 getPlayer() {
        return this.G;
    }

    public int getRepeatToggleModes() {
        return this.O;
    }

    public boolean getShowShuffleButton() {
        return this.V1;
    }

    public int getShowTimeoutMs() {
        return this.M;
    }

    public boolean getShowVrButton() {
        View view = this.f6600k;
        return view != null && view.getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.I = true;
        long j10 = this.f6590a2;
        if (j10 != -9223372036854775807L) {
            long uptimeMillis = j10 - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                F();
            } else {
                postDelayed(this.f6609t, uptimeMillis);
            }
        } else if (I()) {
            G();
        }
        Q();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.I = false;
        removeCallbacks(this.f6608s);
        removeCallbacks(this.f6609t);
    }

    public void setPlayer(@Nullable l2 l2Var) {
        boolean z10 = true;
        com.google.android.exoplayer2.util.a.f(Looper.myLooper() == Looper.getMainLooper());
        if (l2Var != null && l2Var.u() != Looper.getMainLooper()) {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.a(z10);
        l2 l2Var2 = this.G;
        if (l2Var2 == l2Var) {
            return;
        }
        if (l2Var2 != null) {
            l2Var2.g(this.f6588a);
        }
        this.G = l2Var;
        if (l2Var != null) {
            l2Var.K(this.f6588a);
        }
        Q();
    }

    public void setProgressUpdateListener(@Nullable d dVar) {
        this.H = dVar;
    }

    public void setRepeatToggleModes(int i9) {
        this.O = i9;
        l2 l2Var = this.G;
        if (l2Var != null) {
            int repeatMode = l2Var.getRepeatMode();
            if (i9 == 0 && repeatMode != 0) {
                this.G.setRepeatMode(0);
            } else if (i9 == 1 && repeatMode == 2) {
                this.G.setRepeatMode(1);
            } else if (i9 == 2 && repeatMode == 1) {
                this.G.setRepeatMode(2);
            }
        }
        V();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.Q = z10;
        S();
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        this.J = z10;
        X();
    }

    public void setShowNextButton(boolean z10) {
        this.f6589a1 = z10;
        S();
    }

    public void setShowPreviousButton(boolean z10) {
        this.R = z10;
        S();
    }

    public void setShowRewindButton(boolean z10) {
        this.P = z10;
        S();
    }

    public void setShowShuffleButton(boolean z10) {
        this.V1 = z10;
        W();
    }

    public void setShowTimeoutMs(int i9) {
        this.M = i9;
        if (I()) {
            G();
        }
    }

    public void setShowVrButton(boolean z10) {
        View view = this.f6600k;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i9) {
        this.N = l0.p(i9, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f6600k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            R(getShowVrButton(), onClickListener != null, this.f6600k);
        }
    }

    public void y(e eVar) {
        com.google.android.exoplayer2.util.a.e(eVar);
        this.f6591b.add(eVar);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, attributeSet);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i9, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i9);
        int i10 = R$layout.exo_player_control_view;
        this.M = 5000;
        this.O = 0;
        this.N = 200;
        this.f6590a2 = -9223372036854775807L;
        this.P = true;
        this.Q = true;
        this.R = true;
        this.f6589a1 = true;
        this.V1 = false;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.PlayerControlView, i9, 0);
            try {
                this.M = obtainStyledAttributes.getInt(R$styleable.PlayerControlView_show_timeout, this.M);
                i10 = obtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_controller_layout_id, i10);
                this.O = E(obtainStyledAttributes, this.O);
                this.P = obtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_rewind_button, this.P);
                this.Q = obtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_fastforward_button, this.Q);
                this.R = obtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_previous_button, this.R);
                this.f6589a1 = obtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_next_button, this.f6589a1);
                this.V1 = obtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_shuffle_button, this.V1);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(R$styleable.PlayerControlView_time_bar_min_update_interval, this.N));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f6591b = new CopyOnWriteArrayList<>();
        this.f6606q = new i3.b();
        this.f6607r = new i3.d();
        StringBuilder sb2 = new StringBuilder();
        this.f6604o = sb2;
        this.f6605p = new Formatter(sb2, Locale.getDefault());
        this.V2 = new long[0];
        this.B3 = new boolean[0];
        this.V3 = new long[0];
        this.C4 = new boolean[0];
        c cVar = new c();
        this.f6588a = cVar;
        this.f6608s = new Runnable() { // from class: i3.g
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.U();
            }
        };
        this.f6609t = new Runnable() { // from class: i3.f
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.F();
            }
        };
        LayoutInflater.from(context).inflate(i10, this);
        setDescendantFocusability(262144);
        int i11 = R$id.exo_progress;
        c0 c0Var = (c0) findViewById(i11);
        View findViewById = findViewById(R$id.exo_progress_placeholder);
        if (c0Var != null) {
            this.f6603n = c0Var;
        } else if (findViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(i11);
            defaultTimeBar.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f6603n = defaultTimeBar;
        } else {
            this.f6603n = null;
        }
        this.f6601l = (TextView) findViewById(R$id.exo_duration);
        this.f6602m = (TextView) findViewById(R$id.exo_position);
        c0 c0Var2 = this.f6603n;
        if (c0Var2 != null) {
            c0Var2.addListener(cVar);
        }
        View findViewById2 = findViewById(R$id.exo_play);
        this.f6594e = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(cVar);
        }
        View findViewById3 = findViewById(R$id.exo_pause);
        this.f6595f = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(cVar);
        }
        View findViewById4 = findViewById(R$id.exo_prev);
        this.f6592c = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(cVar);
        }
        View findViewById5 = findViewById(R$id.exo_next);
        this.f6593d = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(cVar);
        }
        View findViewById6 = findViewById(R$id.exo_rew);
        this.f6597h = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(cVar);
        }
        View findViewById7 = findViewById(R$id.exo_ffwd);
        this.f6596g = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(cVar);
        }
        ImageView imageView = (ImageView) findViewById(R$id.exo_repeat_toggle);
        this.f6598i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(cVar);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_shuffle);
        this.f6599j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(cVar);
        }
        View findViewById8 = findViewById(R$id.exo_vr);
        this.f6600k = findViewById8;
        setShowVrButton(false);
        R(false, false, findViewById8);
        Resources resources = context.getResources();
        this.C = resources.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.D = resources.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.f6610u = resources.getDrawable(R$drawable.exo_controls_repeat_off);
        this.f6611v = resources.getDrawable(R$drawable.exo_controls_repeat_one);
        this.f6612w = resources.getDrawable(R$drawable.exo_controls_repeat_all);
        this.A = resources.getDrawable(R$drawable.exo_controls_shuffle_on);
        this.B = resources.getDrawable(R$drawable.exo_controls_shuffle_off);
        this.f6613x = resources.getString(R$string.exo_controls_repeat_off_description);
        this.f6614y = resources.getString(R$string.exo_controls_repeat_one_description);
        this.f6615z = resources.getString(R$string.exo_controls_repeat_all_description);
        this.E = resources.getString(R$string.exo_controls_shuffle_on_description);
        this.F = resources.getString(R$string.exo_controls_shuffle_off_description);
        this.E4 = -9223372036854775807L;
        this.F4 = -9223372036854775807L;
    }
}
