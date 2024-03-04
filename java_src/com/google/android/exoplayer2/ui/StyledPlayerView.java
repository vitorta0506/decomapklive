package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.s1;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public class StyledPlayerView extends FrameLayout {
    private boolean A;
    private int B;

    /* renamed from: a  reason: collision with root package name */
    private final a f6696a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final AspectRatioFrameLayout f6697b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f6698c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f6699d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f6700e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ImageView f6701f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final SubtitleView f6702g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final View f6703h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final TextView f6704i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final StyledPlayerControlView f6705j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final FrameLayout f6706k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final FrameLayout f6707l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private l2 f6708m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f6709n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private b f6710o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private StyledPlayerControlView.m f6711p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private c f6712q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f6713r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private Drawable f6714s;

    /* renamed from: t  reason: collision with root package name */
    private int f6715t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f6716u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private com.google.android.exoplayer2.util.j<? super PlaybackException> f6717v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private CharSequence f6718w;

    /* renamed from: x  reason: collision with root package name */
    private int f6719x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f6720y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f6721z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class a implements l2.d, View.OnLayoutChangeListener, View.OnClickListener, StyledPlayerControlView.m, StyledPlayerControlView.d {

        /* renamed from: a  reason: collision with root package name */
        private final i3.b f6722a = new i3.b();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Object f6723b;

        public a() {
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

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.d
        public void D(boolean z10) {
            if (StyledPlayerView.this.f6712q != null) {
                StyledPlayerView.this.f6712q.a(z10);
            }
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void F(i3 i3Var, int i9) {
            n2.B(this, i3Var, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void G(int i9) {
            StyledPlayerView.this.J();
            StyledPlayerView.this.M();
            StyledPlayerView.this.L();
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
        public void O() {
            if (StyledPlayerView.this.f6698c != null) {
                StyledPlayerView.this.f6698c.setVisibility(4);
            }
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
        public void W(n3 n3Var) {
            l2 l2Var = (l2) com.google.android.exoplayer2.util.a.e(StyledPlayerView.this.f6708m);
            i3 t10 = l2Var.t();
            if (t10.u()) {
                this.f6723b = null;
            } else if (!l2Var.m().c()) {
                this.f6723b = t10.k(l2Var.E(), this.f6722a, true).f6027b;
            } else {
                Object obj = this.f6723b;
                if (obj != null) {
                    int f10 = t10.f(obj);
                    if (f10 != -1) {
                        if (l2Var.M() == t10.j(f10, this.f6722a).f6028c) {
                            return;
                        }
                    }
                    this.f6723b = null;
                }
            }
            StyledPlayerView.this.N(false);
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
        public /* synthetic */ void f0(l2 l2Var, l2.c cVar) {
            n2.f(this, l2Var, cVar);
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
        public void j0(boolean z10, int i9) {
            StyledPlayerView.this.J();
            StyledPlayerView.this.L();
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void k(x2.e eVar) {
            if (StyledPlayerView.this.f6702g != null) {
                StyledPlayerView.this.f6702g.setCues(eVar.f59583a);
            }
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
        public void n(k3.y yVar) {
            StyledPlayerView.this.I();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StyledPlayerView.this.H();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            StyledPlayerView.q((TextureView) view, StyledPlayerView.this.B);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void onRepeatModeChanged(int i9) {
            n2.w(this, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void q(k2 k2Var) {
            n2.n(this, k2Var);
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.m
        public void r(int i9) {
            StyledPlayerView.this.K();
            if (StyledPlayerView.this.f6710o != null) {
                StyledPlayerView.this.f6710o.a(i9);
            }
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void z(l2.e eVar, l2.e eVar2, int i9) {
            if (StyledPlayerView.this.y() && StyledPlayerView.this.f6721z) {
                StyledPlayerView.this.w();
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(int i9);
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(boolean z10);
    }

    public StyledPlayerView(Context context) {
        this(context, null);
    }

    private boolean B(x1 x1Var) {
        byte[] bArr = x1Var.f7255j;
        if (bArr == null) {
            return false;
        }
        return C(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    private boolean C(@Nullable Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                A(this.f6697b, intrinsicWidth / intrinsicHeight);
                this.f6701f.setImageDrawable(drawable);
                this.f6701f.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void D(AspectRatioFrameLayout aspectRatioFrameLayout, int i9) {
        aspectRatioFrameLayout.setResizeMode(i9);
    }

    private boolean E() {
        l2 l2Var = this.f6708m;
        if (l2Var == null) {
            return true;
        }
        int playbackState = l2Var.getPlaybackState();
        return this.f6720y && !this.f6708m.t().u() && (playbackState == 1 || playbackState == 4 || !((l2) com.google.android.exoplayer2.util.a.e(this.f6708m)).A());
    }

    private void G(boolean z10) {
        if (P()) {
            this.f6705j.setShowTimeoutMs(z10 ? 0 : this.f6719x);
            this.f6705j.r0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        if (!P() || this.f6708m == null) {
            return;
        }
        if (!this.f6705j.f0()) {
            z(true);
        } else if (this.A) {
            this.f6705j.b0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        l2 l2Var = this.f6708m;
        k3.y videoSize = l2Var != null ? l2Var.getVideoSize() : k3.y.f53629e;
        int i9 = videoSize.f53631a;
        int i10 = videoSize.f53632b;
        int i11 = videoSize.f53633c;
        float f10 = (i10 == 0 || i9 == 0) ? 0.0f : (i9 * videoSize.f53634d) / i10;
        View view = this.f6699d;
        if (view instanceof TextureView) {
            if (f10 > 0.0f && (i11 == 90 || i11 == 270)) {
                f10 = 1.0f / f10;
            }
            if (this.B != 0) {
                view.removeOnLayoutChangeListener(this.f6696a);
            }
            this.B = i11;
            if (i11 != 0) {
                this.f6699d.addOnLayoutChangeListener(this.f6696a);
            }
            q((TextureView) this.f6699d, this.B);
        }
        A(this.f6697b, this.f6700e ? 0.0f : f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        int i9;
        if (this.f6703h != null) {
            l2 l2Var = this.f6708m;
            boolean z10 = true;
            if (l2Var == null || l2Var.getPlaybackState() != 2 || ((i9 = this.f6715t) != 2 && (i9 != 1 || !this.f6708m.A()))) {
                z10 = false;
            }
            this.f6703h.setVisibility(z10 ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        StyledPlayerControlView styledPlayerControlView = this.f6705j;
        if (styledPlayerControlView != null && this.f6709n) {
            if (styledPlayerControlView.f0()) {
                setContentDescription(this.A ? getResources().getString(R$string.exo_controls_hide) : null);
                return;
            } else {
                setContentDescription(getResources().getString(R$string.exo_controls_show));
                return;
            }
        }
        setContentDescription(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        if (y() && this.f6721z) {
            w();
        } else {
            z(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        com.google.android.exoplayer2.util.j<? super PlaybackException> jVar;
        TextView textView = this.f6704i;
        if (textView != null) {
            CharSequence charSequence = this.f6718w;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f6704i.setVisibility(0);
                return;
            }
            l2 l2Var = this.f6708m;
            PlaybackException k10 = l2Var != null ? l2Var.k() : null;
            if (k10 != null && (jVar = this.f6717v) != null) {
                this.f6704i.setText((CharSequence) jVar.a(k10).second);
                this.f6704i.setVisibility(0);
                return;
            }
            this.f6704i.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(boolean z10) {
        l2 l2Var = this.f6708m;
        if (l2Var != null && !l2Var.m().c()) {
            if (z10 && !this.f6716u) {
                r();
            }
            if (l2Var.m().d(2)) {
                v();
                return;
            }
            r();
            if (O() && (B(l2Var.S()) || C(this.f6714s))) {
                return;
            }
            v();
        } else if (this.f6716u) {
        } else {
            v();
            r();
        }
    }

    private boolean O() {
        if (this.f6713r) {
            com.google.android.exoplayer2.util.a.h(this.f6701f);
            return true;
        }
        return false;
    }

    private boolean P() {
        if (this.f6709n) {
            com.google.android.exoplayer2.util.a.h(this.f6705j);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(TextureView textureView, int i9) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != 0.0f && height != 0.0f && i9 != 0) {
            float f10 = width / 2.0f;
            float f11 = height / 2.0f;
            matrix.postRotate(i9, f10, f11);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f10, f11);
        }
        textureView.setTransform(matrix);
    }

    private void r() {
        View view = this.f6698c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void s(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R$drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color));
    }

    @RequiresApi(23)
    private static void t(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R$drawable.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color, null));
    }

    private void v() {
        ImageView imageView = this.f6701f;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f6701f.setVisibility(4);
        }
    }

    private boolean x(int i9) {
        return i9 == 19 || i9 == 270 || i9 == 22 || i9 == 271 || i9 == 20 || i9 == 269 || i9 == 21 || i9 == 268 || i9 == 23;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean y() {
        l2 l2Var = this.f6708m;
        return l2Var != null && l2Var.e() && this.f6708m.A();
    }

    private void z(boolean z10) {
        if (!(y() && this.f6721z) && P()) {
            boolean z11 = this.f6705j.f0() && this.f6705j.getShowTimeoutMs() <= 0;
            boolean E = E();
            if (z10 || z11 || E) {
                G(E);
            }
        }
    }

    protected void A(@Nullable AspectRatioFrameLayout aspectRatioFrameLayout, float f10) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f10);
        }
    }

    public void F() {
        G(E());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        l2 l2Var = this.f6708m;
        if (l2Var != null && l2Var.e()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean x10 = x(keyEvent.getKeyCode());
        if (x10 && P() && !this.f6705j.f0()) {
            z(true);
        } else if (!u(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            if (x10 && P()) {
                z(true);
                return false;
            }
            return false;
        } else {
            z(true);
        }
        return true;
    }

    public List<i3.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f6707l;
        if (frameLayout != null) {
            arrayList.add(new i3.a(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        StyledPlayerControlView styledPlayerControlView = this.f6705j;
        if (styledPlayerControlView != null) {
            arrayList.add(new i3.a(styledPlayerControlView, 1));
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) com.google.android.exoplayer2.util.a.i(this.f6706k, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f6720y;
    }

    public boolean getControllerHideOnTouch() {
        return this.A;
    }

    public int getControllerShowTimeoutMs() {
        return this.f6719x;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f6714s;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f6707l;
    }

    @Nullable
    public l2 getPlayer() {
        return this.f6708m;
    }

    public int getResizeMode() {
        com.google.android.exoplayer2.util.a.h(this.f6697b);
        return this.f6697b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f6702g;
    }

    public boolean getUseArtwork() {
        return this.f6713r;
    }

    public boolean getUseController() {
        return this.f6709n;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f6699d;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!P() || this.f6708m == null) {
            return false;
        }
        z(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        H();
        return super.performClick();
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        com.google.android.exoplayer2.util.a.h(this.f6697b);
        this.f6697b.setAspectRatioListener(bVar);
    }

    public void setControllerAutoShow(boolean z10) {
        this.f6720y = z10;
    }

    public void setControllerHideDuringAds(boolean z10) {
        this.f6721z = z10;
    }

    public void setControllerHideOnTouch(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.A = z10;
        K();
    }

    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(@Nullable StyledPlayerControlView.d dVar) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6712q = null;
        this.f6705j.setOnFullScreenModeChangedListener(dVar);
    }

    public void setControllerShowTimeoutMs(int i9) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6719x = i9;
        if (this.f6705j.f0()) {
            F();
        }
    }

    public void setControllerVisibilityListener(@Nullable b bVar) {
        this.f6710o = bVar;
        setControllerVisibilityListener((StyledPlayerControlView.m) null);
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        com.google.android.exoplayer2.util.a.f(this.f6704i != null);
        this.f6718w = charSequence;
        M();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f6714s != drawable) {
            this.f6714s = drawable;
            N(false);
        }
    }

    public void setErrorMessageProvider(@Nullable com.google.android.exoplayer2.util.j<? super PlaybackException> jVar) {
        if (this.f6717v != jVar) {
            this.f6717v = jVar;
            M();
        }
    }

    public void setFullscreenButtonClickListener(@Nullable c cVar) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6712q = cVar;
        this.f6705j.setOnFullScreenModeChangedListener(this.f6696a);
    }

    public void setKeepContentOnPlayerReset(boolean z10) {
        if (this.f6716u != z10) {
            this.f6716u = z10;
            N(false);
        }
    }

    public void setPlayer(@Nullable l2 l2Var) {
        com.google.android.exoplayer2.util.a.f(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(l2Var == null || l2Var.u() == Looper.getMainLooper());
        l2 l2Var2 = this.f6708m;
        if (l2Var2 == l2Var) {
            return;
        }
        if (l2Var2 != null) {
            l2Var2.g(this.f6696a);
            View view = this.f6699d;
            if (view instanceof TextureView) {
                l2Var2.F((TextureView) view);
            } else if (view instanceof SurfaceView) {
                l2Var2.N((SurfaceView) view);
            }
        }
        SubtitleView subtitleView = this.f6702g;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f6708m = l2Var;
        if (P()) {
            this.f6705j.setPlayer(l2Var);
        }
        J();
        M();
        N(true);
        if (l2Var != null) {
            if (l2Var.q(27)) {
                View view2 = this.f6699d;
                if (view2 instanceof TextureView) {
                    l2Var.x((TextureView) view2);
                } else if (view2 instanceof SurfaceView) {
                    l2Var.h((SurfaceView) view2);
                }
                I();
            }
            if (this.f6702g != null && l2Var.q(28)) {
                this.f6702g.setCues(l2Var.o().f59583a);
            }
            l2Var.K(this.f6696a);
            z(false);
            return;
        }
        w();
    }

    public void setRepeatToggleModes(int i9) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6705j.setRepeatToggleModes(i9);
    }

    public void setResizeMode(int i9) {
        com.google.android.exoplayer2.util.a.h(this.f6697b);
        this.f6697b.setResizeMode(i9);
    }

    public void setShowBuffering(int i9) {
        if (this.f6715t != i9) {
            this.f6715t = i9;
            J();
        }
    }

    public void setShowFastForwardButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6705j.setShowFastForwardButton(z10);
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6705j.setShowMultiWindowTimeBar(z10);
    }

    public void setShowNextButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6705j.setShowNextButton(z10);
    }

    public void setShowPreviousButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6705j.setShowPreviousButton(z10);
    }

    public void setShowRewindButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6705j.setShowRewindButton(z10);
    }

    public void setShowShuffleButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6705j.setShowShuffleButton(z10);
    }

    public void setShowSubtitleButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6705j.setShowSubtitleButton(z10);
    }

    public void setShowVrButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        this.f6705j.setShowVrButton(z10);
    }

    public void setShutterBackgroundColor(@ColorInt int i9) {
        View view = this.f6698c;
        if (view != null) {
            view.setBackgroundColor(i9);
        }
    }

    public void setUseArtwork(boolean z10) {
        com.google.android.exoplayer2.util.a.f((z10 && this.f6701f == null) ? false : true);
        if (this.f6713r != z10) {
            this.f6713r = z10;
            N(false);
        }
    }

    public void setUseController(boolean z10) {
        boolean z11 = false;
        com.google.android.exoplayer2.util.a.f((z10 && this.f6705j == null) ? false : true);
        setClickable((z10 || hasOnClickListeners()) ? true : true);
        if (this.f6709n == z10) {
            return;
        }
        this.f6709n = z10;
        if (P()) {
            this.f6705j.setPlayer(this.f6708m);
        } else {
            StyledPlayerControlView styledPlayerControlView = this.f6705j;
            if (styledPlayerControlView != null) {
                styledPlayerControlView.b0();
                this.f6705j.setPlayer(null);
            }
        }
        K();
    }

    @Override // android.view.View
    public void setVisibility(int i9) {
        super.setVisibility(i9);
        View view = this.f6699d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i9);
        }
    }

    public boolean u(KeyEvent keyEvent) {
        return P() && this.f6705j.U(keyEvent);
    }

    public void w() {
        StyledPlayerControlView styledPlayerControlView = this.f6705j;
        if (styledPlayerControlView != null) {
            styledPlayerControlView.b0();
        }
    }

    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        int i10;
        boolean z10;
        int i11;
        boolean z11;
        int i12;
        boolean z12;
        int i13;
        int i14;
        boolean z13;
        boolean z14;
        int i15;
        boolean z15;
        boolean z16;
        boolean z17;
        a aVar = new a();
        this.f6696a = aVar;
        if (isInEditMode()) {
            this.f6697b = null;
            this.f6698c = null;
            this.f6699d = null;
            this.f6700e = false;
            this.f6701f = null;
            this.f6702g = null;
            this.f6703h = null;
            this.f6704i = null;
            this.f6705j = null;
            this.f6706k = null;
            this.f6707l = null;
            ImageView imageView = new ImageView(context);
            if (l0.f6985a >= 23) {
                t(getResources(), imageView);
            } else {
                s(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i16 = R$layout.exo_styled_player_view;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.StyledPlayerView, i9, 0);
            try {
                int i17 = R$styleable.StyledPlayerView_shutter_background_color;
                boolean hasValue = obtainStyledAttributes.hasValue(i17);
                int color = obtainStyledAttributes.getColor(i17, 0);
                int resourceId = obtainStyledAttributes.getResourceId(R$styleable.StyledPlayerView_player_layout_id, i16);
                boolean z18 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_use_artwork, true);
                int resourceId2 = obtainStyledAttributes.getResourceId(R$styleable.StyledPlayerView_default_artwork, 0);
                boolean z19 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_use_controller, true);
                int i18 = obtainStyledAttributes.getInt(R$styleable.StyledPlayerView_surface_type, 1);
                int i19 = obtainStyledAttributes.getInt(R$styleable.StyledPlayerView_resize_mode, 0);
                int i20 = obtainStyledAttributes.getInt(R$styleable.StyledPlayerView_show_timeout, 5000);
                boolean z20 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_hide_on_touch, true);
                boolean z21 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_auto_show, true);
                i12 = obtainStyledAttributes.getInteger(R$styleable.StyledPlayerView_show_buffering, 0);
                this.f6716u = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_keep_content_on_player_reset, this.f6716u);
                boolean z22 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_hide_during_ads, true);
                obtainStyledAttributes.recycle();
                z12 = z20;
                z10 = z21;
                i11 = i19;
                z15 = z19;
                i15 = resourceId2;
                z14 = z18;
                z13 = hasValue;
                i14 = color;
                i13 = i18;
                i16 = resourceId;
                i10 = i20;
                z11 = z22;
            } catch (Throwable th2) {
                obtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            i10 = 5000;
            z10 = true;
            i11 = 0;
            z11 = true;
            i12 = 0;
            z12 = true;
            i13 = 1;
            i14 = 0;
            z13 = false;
            z14 = true;
            i15 = 0;
            z15 = true;
        }
        LayoutInflater.from(context).inflate(i16, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R$id.exo_content_frame);
        this.f6697b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            D(aspectRatioFrameLayout, i11);
        }
        View findViewById = findViewById(R$id.exo_shutter);
        this.f6698c = findViewById;
        if (findViewById != null && z13) {
            findViewById.setBackgroundColor(i14);
        }
        if (aspectRatioFrameLayout != null && i13 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i13 == 2) {
                this.f6699d = new TextureView(context);
            } else if (i13 == 3) {
                try {
                    this.f6699d = (View) Class.forName("com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView").getConstructor(Context.class).newInstance(context);
                    z17 = true;
                    this.f6699d.setLayoutParams(layoutParams);
                    this.f6699d.setOnClickListener(aVar);
                    this.f6699d.setClickable(false);
                    aspectRatioFrameLayout.addView(this.f6699d, 0);
                    z16 = z17;
                } catch (Exception e10) {
                    throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e10);
                }
            } else if (i13 != 4) {
                this.f6699d = new SurfaceView(context);
            } else {
                try {
                    this.f6699d = (View) Class.forName("com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView").getConstructor(Context.class).newInstance(context);
                } catch (Exception e11) {
                    throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e11);
                }
            }
            z17 = false;
            this.f6699d.setLayoutParams(layoutParams);
            this.f6699d.setOnClickListener(aVar);
            this.f6699d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f6699d, 0);
            z16 = z17;
        } else {
            this.f6699d = null;
            z16 = false;
        }
        this.f6700e = z16;
        this.f6706k = (FrameLayout) findViewById(R$id.exo_ad_overlay);
        this.f6707l = (FrameLayout) findViewById(R$id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_artwork);
        this.f6701f = imageView2;
        this.f6713r = z14 && imageView2 != null;
        if (i15 != 0) {
            this.f6714s = ContextCompat.getDrawable(getContext(), i15);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R$id.exo_subtitles);
        this.f6702g = subtitleView;
        if (subtitleView != null) {
            subtitleView.d();
            subtitleView.e();
        }
        View findViewById2 = findViewById(R$id.exo_buffering);
        this.f6703h = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f6715t = i12;
        TextView textView = (TextView) findViewById(R$id.exo_error_message);
        this.f6704i = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i21 = R$id.exo_controller;
        StyledPlayerControlView styledPlayerControlView = (StyledPlayerControlView) findViewById(i21);
        View findViewById3 = findViewById(R$id.exo_controller_placeholder);
        if (styledPlayerControlView != null) {
            this.f6705j = styledPlayerControlView;
        } else if (findViewById3 != null) {
            StyledPlayerControlView styledPlayerControlView2 = new StyledPlayerControlView(context, null, 0, attributeSet);
            this.f6705j = styledPlayerControlView2;
            styledPlayerControlView2.setId(i21);
            styledPlayerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(styledPlayerControlView2, indexOfChild);
        } else {
            this.f6705j = null;
        }
        StyledPlayerControlView styledPlayerControlView3 = this.f6705j;
        this.f6719x = styledPlayerControlView3 != null ? i10 : 0;
        this.A = z12;
        this.f6720y = z10;
        this.f6721z = z11;
        this.f6709n = z15 && styledPlayerControlView3 != null;
        if (styledPlayerControlView3 != null) {
            styledPlayerControlView3.c0();
            this.f6705j.S(aVar);
        }
        if (z15) {
            setClickable(true);
        }
        K();
    }

    @Deprecated
    public void setControllerVisibilityListener(@Nullable StyledPlayerControlView.m mVar) {
        com.google.android.exoplayer2.util.a.h(this.f6705j);
        StyledPlayerControlView.m mVar2 = this.f6711p;
        if (mVar2 == mVar) {
            return;
        }
        if (mVar2 != null) {
            this.f6705j.m0(mVar2);
        }
        this.f6711p = mVar;
        if (mVar != null) {
            this.f6705j.S(mVar);
        }
        setControllerVisibilityListener((b) null);
    }
}
