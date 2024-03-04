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
import com.google.android.exoplayer2.ui.PlayerControlView;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
@Deprecated
/* loaded from: classes2.dex */
public class PlayerView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final a f6617a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final AspectRatioFrameLayout f6618b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f6619c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f6620d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f6621e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ImageView f6622f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final SubtitleView f6623g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final View f6624h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final TextView f6625i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final PlayerControlView f6626j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final FrameLayout f6627k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final FrameLayout f6628l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private l2 f6629m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f6630n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private PlayerControlView.e f6631o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f6632p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Drawable f6633q;

    /* renamed from: r  reason: collision with root package name */
    private int f6634r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f6635s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private com.google.android.exoplayer2.util.j<? super PlaybackException> f6636t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private CharSequence f6637u;

    /* renamed from: v  reason: collision with root package name */
    private int f6638v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f6639w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f6640x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f6641y;

    /* renamed from: z  reason: collision with root package name */
    private int f6642z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class a implements l2.d, View.OnLayoutChangeListener, View.OnClickListener, PlayerControlView.e {

        /* renamed from: a  reason: collision with root package name */
        private final i3.b f6643a = new i3.b();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Object f6644b;

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

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void F(i3 i3Var, int i9) {
            n2.B(this, i3Var, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void G(int i9) {
            PlayerView.this.H();
            PlayerView.this.K();
            PlayerView.this.J();
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
            if (PlayerView.this.f6619c != null) {
                PlayerView.this.f6619c.setVisibility(4);
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
            l2 l2Var = (l2) com.google.android.exoplayer2.util.a.e(PlayerView.this.f6629m);
            i3 t10 = l2Var.t();
            if (t10.u()) {
                this.f6644b = null;
            } else if (!l2Var.m().c()) {
                this.f6644b = t10.k(l2Var.E(), this.f6643a, true).f6027b;
            } else {
                Object obj = this.f6644b;
                if (obj != null) {
                    int f10 = t10.f(obj);
                    if (f10 != -1) {
                        if (l2Var.M() == t10.j(f10, this.f6643a).f6028c) {
                            return;
                        }
                    }
                    this.f6644b = null;
                }
            }
            PlayerView.this.L(false);
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
            PlayerView.this.H();
            PlayerView.this.J();
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void k(x2.e eVar) {
            if (PlayerView.this.f6623g != null) {
                PlayerView.this.f6623g.setCues(eVar.f59583a);
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
            PlayerView.this.G();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlayerView.this.F();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            PlayerView.o((TextureView) view, PlayerView.this.f6642z);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void onRepeatModeChanged(int i9) {
            n2.w(this, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void q(k2 k2Var) {
            n2.n(this, k2Var);
        }

        @Override // com.google.android.exoplayer2.ui.PlayerControlView.e
        public void r(int i9) {
            PlayerView.this.I();
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void z(l2.e eVar, l2.e eVar2, int i9) {
            if (PlayerView.this.w() && PlayerView.this.f6640x) {
                PlayerView.this.u();
            }
        }
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    private boolean A(@Nullable Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                y(this.f6618b, intrinsicWidth / intrinsicHeight);
                this.f6622f.setImageDrawable(drawable);
                this.f6622f.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void B(AspectRatioFrameLayout aspectRatioFrameLayout, int i9) {
        aspectRatioFrameLayout.setResizeMode(i9);
    }

    private boolean C() {
        l2 l2Var = this.f6629m;
        if (l2Var == null) {
            return true;
        }
        int playbackState = l2Var.getPlaybackState();
        return this.f6639w && (playbackState == 1 || playbackState == 4 || !this.f6629m.A());
    }

    private void E(boolean z10) {
        if (N()) {
            this.f6626j.setShowTimeoutMs(z10 ? 0 : this.f6638v);
            this.f6626j.P();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        if (!N() || this.f6629m == null) {
            return;
        }
        if (!this.f6626j.I()) {
            x(true);
        } else if (this.f6641y) {
            this.f6626j.F();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        l2 l2Var = this.f6629m;
        k3.y videoSize = l2Var != null ? l2Var.getVideoSize() : k3.y.f53629e;
        int i9 = videoSize.f53631a;
        int i10 = videoSize.f53632b;
        int i11 = videoSize.f53633c;
        float f10 = (i10 == 0 || i9 == 0) ? 0.0f : (i9 * videoSize.f53634d) / i10;
        View view = this.f6620d;
        if (view instanceof TextureView) {
            if (f10 > 0.0f && (i11 == 90 || i11 == 270)) {
                f10 = 1.0f / f10;
            }
            if (this.f6642z != 0) {
                view.removeOnLayoutChangeListener(this.f6617a);
            }
            this.f6642z = i11;
            if (i11 != 0) {
                this.f6620d.addOnLayoutChangeListener(this.f6617a);
            }
            o((TextureView) this.f6620d, this.f6642z);
        }
        y(this.f6618b, this.f6621e ? 0.0f : f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        int i9;
        if (this.f6624h != null) {
            l2 l2Var = this.f6629m;
            boolean z10 = true;
            if (l2Var == null || l2Var.getPlaybackState() != 2 || ((i9 = this.f6634r) != 2 && (i9 != 1 || !this.f6629m.A()))) {
                z10 = false;
            }
            this.f6624h.setVisibility(z10 ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        PlayerControlView playerControlView = this.f6626j;
        if (playerControlView != null && this.f6630n) {
            if (playerControlView.getVisibility() == 0) {
                setContentDescription(this.f6641y ? getResources().getString(R$string.exo_controls_hide) : null);
                return;
            } else {
                setContentDescription(getResources().getString(R$string.exo_controls_show));
                return;
            }
        }
        setContentDescription(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        if (w() && this.f6640x) {
            u();
        } else {
            x(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        com.google.android.exoplayer2.util.j<? super PlaybackException> jVar;
        TextView textView = this.f6625i;
        if (textView != null) {
            CharSequence charSequence = this.f6637u;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f6625i.setVisibility(0);
                return;
            }
            l2 l2Var = this.f6629m;
            PlaybackException k10 = l2Var != null ? l2Var.k() : null;
            if (k10 != null && (jVar = this.f6636t) != null) {
                this.f6625i.setText((CharSequence) jVar.a(k10).second);
                this.f6625i.setVisibility(0);
                return;
            }
            this.f6625i.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(boolean z10) {
        l2 l2Var = this.f6629m;
        if (l2Var != null && l2Var.q(30) && !l2Var.m().c()) {
            if (z10 && !this.f6635s) {
                p();
            }
            if (l2Var.m().d(2)) {
                t();
                return;
            }
            p();
            if (M() && (z(l2Var.S()) || A(this.f6633q))) {
                return;
            }
            t();
        } else if (this.f6635s) {
        } else {
            t();
            p();
        }
    }

    private boolean M() {
        if (this.f6632p) {
            com.google.android.exoplayer2.util.a.h(this.f6622f);
            return true;
        }
        return false;
    }

    private boolean N() {
        if (this.f6630n) {
            com.google.android.exoplayer2.util.a.h(this.f6626j);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(TextureView textureView, int i9) {
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

    private void p() {
        View view = this.f6619c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void q(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R$drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color));
    }

    @RequiresApi(23)
    private static void r(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R$drawable.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color, null));
    }

    private void t() {
        ImageView imageView = this.f6622f;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f6622f.setVisibility(4);
        }
    }

    private boolean v(int i9) {
        return i9 == 19 || i9 == 270 || i9 == 22 || i9 == 271 || i9 == 20 || i9 == 269 || i9 == 21 || i9 == 268 || i9 == 23;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w() {
        l2 l2Var = this.f6629m;
        return l2Var != null && l2Var.e() && this.f6629m.A();
    }

    private void x(boolean z10) {
        if (!(w() && this.f6640x) && N()) {
            boolean z11 = this.f6626j.I() && this.f6626j.getShowTimeoutMs() <= 0;
            boolean C = C();
            if (z10 || z11 || C) {
                E(C);
            }
        }
    }

    private boolean z(x1 x1Var) {
        byte[] bArr = x1Var.f7255j;
        if (bArr == null) {
            return false;
        }
        return A(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    public void D() {
        E(C());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        l2 l2Var = this.f6629m;
        if (l2Var != null && l2Var.e()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean v10 = v(keyEvent.getKeyCode());
        if (v10 && N() && !this.f6626j.I()) {
            x(true);
        } else if (!s(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            if (v10 && N()) {
                x(true);
                return false;
            }
            return false;
        } else {
            x(true);
        }
        return true;
    }

    public List<i3.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f6628l;
        if (frameLayout != null) {
            arrayList.add(new i3.a(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        PlayerControlView playerControlView = this.f6626j;
        if (playerControlView != null) {
            arrayList.add(new i3.a(playerControlView, 1));
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) com.google.android.exoplayer2.util.a.i(this.f6627k, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f6639w;
    }

    public boolean getControllerHideOnTouch() {
        return this.f6641y;
    }

    public int getControllerShowTimeoutMs() {
        return this.f6638v;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f6633q;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f6628l;
    }

    @Nullable
    public l2 getPlayer() {
        return this.f6629m;
    }

    public int getResizeMode() {
        com.google.android.exoplayer2.util.a.h(this.f6618b);
        return this.f6618b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f6623g;
    }

    public boolean getUseArtwork() {
        return this.f6632p;
    }

    public boolean getUseController() {
        return this.f6630n;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f6620d;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!N() || this.f6629m == null) {
            return false;
        }
        x(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        F();
        return super.performClick();
    }

    public boolean s(KeyEvent keyEvent) {
        return N() && this.f6626j.A(keyEvent);
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        com.google.android.exoplayer2.util.a.h(this.f6618b);
        this.f6618b.setAspectRatioListener(bVar);
    }

    public void setControllerAutoShow(boolean z10) {
        this.f6639w = z10;
    }

    public void setControllerHideDuringAds(boolean z10) {
        this.f6640x = z10;
    }

    public void setControllerHideOnTouch(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6626j);
        this.f6641y = z10;
        I();
    }

    public void setControllerShowTimeoutMs(int i9) {
        com.google.android.exoplayer2.util.a.h(this.f6626j);
        this.f6638v = i9;
        if (this.f6626j.I()) {
            D();
        }
    }

    public void setControllerVisibilityListener(@Nullable PlayerControlView.e eVar) {
        com.google.android.exoplayer2.util.a.h(this.f6626j);
        PlayerControlView.e eVar2 = this.f6631o;
        if (eVar2 == eVar) {
            return;
        }
        if (eVar2 != null) {
            this.f6626j.J(eVar2);
        }
        this.f6631o = eVar;
        if (eVar != null) {
            this.f6626j.y(eVar);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        com.google.android.exoplayer2.util.a.f(this.f6625i != null);
        this.f6637u = charSequence;
        K();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f6633q != drawable) {
            this.f6633q = drawable;
            L(false);
        }
    }

    public void setErrorMessageProvider(@Nullable com.google.android.exoplayer2.util.j<? super PlaybackException> jVar) {
        if (this.f6636t != jVar) {
            this.f6636t = jVar;
            K();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z10) {
        if (this.f6635s != z10) {
            this.f6635s = z10;
            L(false);
        }
    }

    public void setPlayer(@Nullable l2 l2Var) {
        com.google.android.exoplayer2.util.a.f(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(l2Var == null || l2Var.u() == Looper.getMainLooper());
        l2 l2Var2 = this.f6629m;
        if (l2Var2 == l2Var) {
            return;
        }
        if (l2Var2 != null) {
            l2Var2.g(this.f6617a);
            if (l2Var2.q(27)) {
                View view = this.f6620d;
                if (view instanceof TextureView) {
                    l2Var2.F((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    l2Var2.N((SurfaceView) view);
                }
            }
        }
        SubtitleView subtitleView = this.f6623g;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f6629m = l2Var;
        if (N()) {
            this.f6626j.setPlayer(l2Var);
        }
        H();
        K();
        L(true);
        if (l2Var != null) {
            if (l2Var.q(27)) {
                View view2 = this.f6620d;
                if (view2 instanceof TextureView) {
                    l2Var.x((TextureView) view2);
                } else if (view2 instanceof SurfaceView) {
                    l2Var.h((SurfaceView) view2);
                }
                G();
            }
            if (this.f6623g != null && l2Var.q(28)) {
                this.f6623g.setCues(l2Var.o().f59583a);
            }
            l2Var.K(this.f6617a);
            x(false);
            return;
        }
        u();
    }

    public void setRepeatToggleModes(int i9) {
        com.google.android.exoplayer2.util.a.h(this.f6626j);
        this.f6626j.setRepeatToggleModes(i9);
    }

    public void setResizeMode(int i9) {
        com.google.android.exoplayer2.util.a.h(this.f6618b);
        this.f6618b.setResizeMode(i9);
    }

    public void setShowBuffering(int i9) {
        if (this.f6634r != i9) {
            this.f6634r = i9;
            H();
        }
    }

    public void setShowFastForwardButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6626j);
        this.f6626j.setShowFastForwardButton(z10);
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6626j);
        this.f6626j.setShowMultiWindowTimeBar(z10);
    }

    public void setShowNextButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6626j);
        this.f6626j.setShowNextButton(z10);
    }

    public void setShowPreviousButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6626j);
        this.f6626j.setShowPreviousButton(z10);
    }

    public void setShowRewindButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6626j);
        this.f6626j.setShowRewindButton(z10);
    }

    public void setShowShuffleButton(boolean z10) {
        com.google.android.exoplayer2.util.a.h(this.f6626j);
        this.f6626j.setShowShuffleButton(z10);
    }

    public void setShutterBackgroundColor(int i9) {
        View view = this.f6619c;
        if (view != null) {
            view.setBackgroundColor(i9);
        }
    }

    public void setUseArtwork(boolean z10) {
        com.google.android.exoplayer2.util.a.f((z10 && this.f6622f == null) ? false : true);
        if (this.f6632p != z10) {
            this.f6632p = z10;
            L(false);
        }
    }

    public void setUseController(boolean z10) {
        boolean z11 = false;
        com.google.android.exoplayer2.util.a.f((z10 && this.f6626j == null) ? false : true);
        setClickable((z10 || hasOnClickListeners()) ? true : true);
        if (this.f6630n == z10) {
            return;
        }
        this.f6630n = z10;
        if (N()) {
            this.f6626j.setPlayer(this.f6629m);
        } else {
            PlayerControlView playerControlView = this.f6626j;
            if (playerControlView != null) {
                playerControlView.F();
                this.f6626j.setPlayer(null);
            }
        }
        I();
    }

    @Override // android.view.View
    public void setVisibility(int i9) {
        super.setVisibility(i9);
        View view = this.f6620d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i9);
        }
    }

    public void u() {
        PlayerControlView playerControlView = this.f6626j;
        if (playerControlView != null) {
            playerControlView.F();
        }
    }

    protected void y(@Nullable AspectRatioFrameLayout aspectRatioFrameLayout, float f10) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f10);
        }
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet, int i9) {
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
        this.f6617a = aVar;
        if (isInEditMode()) {
            this.f6618b = null;
            this.f6619c = null;
            this.f6620d = null;
            this.f6621e = false;
            this.f6622f = null;
            this.f6623g = null;
            this.f6624h = null;
            this.f6625i = null;
            this.f6626j = null;
            this.f6627k = null;
            this.f6628l = null;
            ImageView imageView = new ImageView(context);
            if (l0.f6985a >= 23) {
                r(getResources(), imageView);
            } else {
                q(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i16 = R$layout.exo_player_view;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.PlayerView, i9, 0);
            try {
                int i17 = R$styleable.PlayerView_shutter_background_color;
                boolean hasValue = obtainStyledAttributes.hasValue(i17);
                int color = obtainStyledAttributes.getColor(i17, 0);
                int resourceId = obtainStyledAttributes.getResourceId(R$styleable.PlayerView_player_layout_id, i16);
                boolean z18 = obtainStyledAttributes.getBoolean(R$styleable.PlayerView_use_artwork, true);
                int resourceId2 = obtainStyledAttributes.getResourceId(R$styleable.PlayerView_default_artwork, 0);
                boolean z19 = obtainStyledAttributes.getBoolean(R$styleable.PlayerView_use_controller, true);
                int i18 = obtainStyledAttributes.getInt(R$styleable.PlayerView_surface_type, 1);
                int i19 = obtainStyledAttributes.getInt(R$styleable.PlayerView_resize_mode, 0);
                int i20 = obtainStyledAttributes.getInt(R$styleable.PlayerView_show_timeout, 5000);
                boolean z20 = obtainStyledAttributes.getBoolean(R$styleable.PlayerView_hide_on_touch, true);
                boolean z21 = obtainStyledAttributes.getBoolean(R$styleable.PlayerView_auto_show, true);
                i12 = obtainStyledAttributes.getInteger(R$styleable.PlayerView_show_buffering, 0);
                this.f6635s = obtainStyledAttributes.getBoolean(R$styleable.PlayerView_keep_content_on_player_reset, this.f6635s);
                boolean z22 = obtainStyledAttributes.getBoolean(R$styleable.PlayerView_hide_during_ads, true);
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
        this.f6618b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            B(aspectRatioFrameLayout, i11);
        }
        View findViewById = findViewById(R$id.exo_shutter);
        this.f6619c = findViewById;
        if (findViewById != null && z13) {
            findViewById.setBackgroundColor(i14);
        }
        if (aspectRatioFrameLayout != null && i13 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i13 == 2) {
                this.f6620d = new TextureView(context);
            } else if (i13 == 3) {
                try {
                    this.f6620d = (View) Class.forName("com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView").getConstructor(Context.class).newInstance(context);
                    z17 = true;
                    this.f6620d.setLayoutParams(layoutParams);
                    this.f6620d.setOnClickListener(aVar);
                    this.f6620d.setClickable(false);
                    aspectRatioFrameLayout.addView(this.f6620d, 0);
                    z16 = z17;
                } catch (Exception e10) {
                    throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e10);
                }
            } else if (i13 != 4) {
                this.f6620d = new SurfaceView(context);
            } else {
                try {
                    this.f6620d = (View) Class.forName("com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView").getConstructor(Context.class).newInstance(context);
                } catch (Exception e11) {
                    throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e11);
                }
            }
            z17 = false;
            this.f6620d.setLayoutParams(layoutParams);
            this.f6620d.setOnClickListener(aVar);
            this.f6620d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f6620d, 0);
            z16 = z17;
        } else {
            this.f6620d = null;
            z16 = false;
        }
        this.f6621e = z16;
        this.f6627k = (FrameLayout) findViewById(R$id.exo_ad_overlay);
        this.f6628l = (FrameLayout) findViewById(R$id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_artwork);
        this.f6622f = imageView2;
        this.f6632p = z14 && imageView2 != null;
        if (i15 != 0) {
            this.f6633q = ContextCompat.getDrawable(getContext(), i15);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R$id.exo_subtitles);
        this.f6623g = subtitleView;
        if (subtitleView != null) {
            subtitleView.d();
            subtitleView.e();
        }
        View findViewById2 = findViewById(R$id.exo_buffering);
        this.f6624h = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f6634r = i12;
        TextView textView = (TextView) findViewById(R$id.exo_error_message);
        this.f6625i = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i21 = R$id.exo_controller;
        PlayerControlView playerControlView = (PlayerControlView) findViewById(i21);
        View findViewById3 = findViewById(R$id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.f6626j = playerControlView;
        } else if (findViewById3 != null) {
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f6626j = playerControlView2;
            playerControlView2.setId(i21);
            playerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(playerControlView2, indexOfChild);
        } else {
            this.f6626j = null;
        }
        PlayerControlView playerControlView3 = this.f6626j;
        this.f6638v = playerControlView3 != null ? i10 : 0;
        this.f6641y = z12;
        this.f6639w = z10;
        this.f6640x = z11;
        this.f6630n = z15 && playerControlView3 != null;
        if (playerControlView3 != null) {
            playerControlView3.F();
            this.f6626j.y(aVar);
        }
        if (z15) {
            setClickable(true);
        }
        I();
    }
}
