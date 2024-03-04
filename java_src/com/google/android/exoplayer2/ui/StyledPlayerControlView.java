package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.i1;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.s1;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import com.google.android.exoplayer2.ui.c0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import v2.o0;
/* loaded from: classes2.dex */
public class StyledPlayerControlView extends FrameLayout {
    private static final float[] Z4;
    private final Drawable A;
    private final Drawable B;
    private int B3;
    private final float C;
    private int C4;
    private final float D;
    private long[] D4;
    private final String E;
    private boolean[] E4;
    private final String F;
    private long[] F4;
    private final Drawable G;
    private boolean[] G4;
    private final Drawable H;
    private long H4;
    private final String I;
    private x I4;
    private final String J;
    private Resources J4;
    private final Drawable K;
    private RecyclerView K4;
    private final Drawable L;
    private h L4;
    private final String M;
    private e M4;
    private final String N;
    private PopupWindow N4;
    @Nullable
    private l2 O;
    private boolean O4;
    @Nullable
    private f P;
    private int P4;
    @Nullable
    private d Q;
    private j Q4;
    private boolean R;
    private b R4;
    private i3.k S4;
    @Nullable
    private ImageView T4;
    @Nullable
    private ImageView U4;
    private boolean V1;
    private boolean V2;
    private int V3;
    @Nullable
    private ImageView V4;
    @Nullable
    private View W4;
    @Nullable
    private View X4;
    @Nullable
    private View Y4;

    /* renamed from: a  reason: collision with root package name */
    private final c f6646a;

    /* renamed from: a1  reason: collision with root package name */
    private boolean f6647a1;

    /* renamed from: a2  reason: collision with root package name */
    private boolean f6648a2;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<m> f6649b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f6650c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f6651d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final View f6652e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final View f6653f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final View f6654g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final TextView f6655h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final TextView f6656i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final ImageView f6657j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final ImageView f6658k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final View f6659l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final TextView f6660m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final TextView f6661n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final c0 f6662o;

    /* renamed from: p  reason: collision with root package name */
    private final StringBuilder f6663p;

    /* renamed from: q  reason: collision with root package name */
    private final Formatter f6664q;

    /* renamed from: r  reason: collision with root package name */
    private final i3.b f6665r;

    /* renamed from: s  reason: collision with root package name */
    private final i3.d f6666s;

    /* renamed from: t  reason: collision with root package name */
    private final Runnable f6667t;

    /* renamed from: u  reason: collision with root package name */
    private final Drawable f6668u;

    /* renamed from: v  reason: collision with root package name */
    private final Drawable f6669v;

    /* renamed from: w  reason: collision with root package name */
    private final Drawable f6670w;

    /* renamed from: x  reason: collision with root package name */
    private final String f6671x;

    /* renamed from: y  reason: collision with root package name */
    private final String f6672y;

    /* renamed from: z  reason: collision with root package name */
    private final String f6673z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class b extends l {
        private b() {
            super();
        }

        private boolean i(h3.z zVar) {
            for (int i9 = 0; i9 < this.f6694a.size(); i9++) {
                if (zVar.f40515y.containsKey(this.f6694a.get(i9).f6691a.b())) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(View view) {
            if (StyledPlayerControlView.this.O == null) {
                return;
            }
            ((l2) l0.j(StyledPlayerControlView.this.O)).i(StyledPlayerControlView.this.O.v().a().B(1).J(1, false).A());
            StyledPlayerControlView.this.L4.c(1, StyledPlayerControlView.this.getResources().getString(R$string.exo_track_selection_auto));
            StyledPlayerControlView.this.N4.dismiss();
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void e(i iVar) {
            iVar.f6688a.setText(R$string.exo_track_selection_auto);
            iVar.f6689b.setVisibility(i(((l2) com.google.android.exoplayer2.util.a.e(StyledPlayerControlView.this.O)).v()) ? 4 : 0);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.b.this.k(view);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void g(String str) {
            StyledPlayerControlView.this.L4.c(1, str);
        }

        public void j(List<k> list) {
            this.f6694a = list;
            h3.z v10 = ((l2) com.google.android.exoplayer2.util.a.e(StyledPlayerControlView.this.O)).v();
            if (list.isEmpty()) {
                StyledPlayerControlView.this.L4.c(1, StyledPlayerControlView.this.getResources().getString(R$string.exo_track_selection_none));
            } else if (!i(v10)) {
                StyledPlayerControlView.this.L4.c(1, StyledPlayerControlView.this.getResources().getString(R$string.exo_track_selection_auto));
            } else {
                for (int i9 = 0; i9 < list.size(); i9++) {
                    k kVar = list.get(i9);
                    if (kVar.a()) {
                        StyledPlayerControlView.this.L4.c(1, kVar.f6693c);
                        return;
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private final class c implements l2.d, c0.a, View.OnClickListener, PopupWindow.OnDismissListener {
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
            StyledPlayerControlView.this.V2 = false;
            if (!z10 && StyledPlayerControlView.this.O != null) {
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.p0(styledPlayerControlView.O, j10);
            }
            StyledPlayerControlView.this.I4.W();
        }

        @Override // com.google.android.exoplayer2.ui.c0.a
        public void E(c0 c0Var, long j10) {
            StyledPlayerControlView.this.V2 = true;
            if (StyledPlayerControlView.this.f6661n != null) {
                StyledPlayerControlView.this.f6661n.setText(l0.b0(StyledPlayerControlView.this.f6663p, StyledPlayerControlView.this.f6664q, j10));
            }
            StyledPlayerControlView.this.I4.V();
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
                StyledPlayerControlView.this.y0();
            }
            if (cVar.b(4, 5, 7)) {
                StyledPlayerControlView.this.A0();
            }
            if (cVar.a(8)) {
                StyledPlayerControlView.this.B0();
            }
            if (cVar.a(9)) {
                StyledPlayerControlView.this.E0();
            }
            if (cVar.b(8, 9, 11, 0, 16, 17, 13)) {
                StyledPlayerControlView.this.x0();
            }
            if (cVar.b(11, 0)) {
                StyledPlayerControlView.this.F0();
            }
            if (cVar.a(12)) {
                StyledPlayerControlView.this.z0();
            }
            if (cVar.a(2)) {
                StyledPlayerControlView.this.G0();
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
            l2 l2Var = StyledPlayerControlView.this.O;
            if (l2Var == null) {
                return;
            }
            StyledPlayerControlView.this.I4.W();
            if (StyledPlayerControlView.this.f6651d == view) {
                l2Var.w();
            } else if (StyledPlayerControlView.this.f6650c == view) {
                l2Var.j();
            } else if (StyledPlayerControlView.this.f6653f == view) {
                if (l2Var.getPlaybackState() != 4) {
                    l2Var.Q();
                }
            } else if (StyledPlayerControlView.this.f6654g == view) {
                l2Var.R();
            } else if (StyledPlayerControlView.this.f6652e == view) {
                StyledPlayerControlView.this.X(l2Var);
            } else if (StyledPlayerControlView.this.f6657j == view) {
                l2Var.setRepeatMode(com.google.android.exoplayer2.util.d0.a(l2Var.getRepeatMode(), StyledPlayerControlView.this.C4));
            } else if (StyledPlayerControlView.this.f6658k == view) {
                l2Var.B(!l2Var.O());
            } else if (StyledPlayerControlView.this.W4 == view) {
                StyledPlayerControlView.this.I4.V();
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.Y(styledPlayerControlView.L4);
            } else if (StyledPlayerControlView.this.X4 == view) {
                StyledPlayerControlView.this.I4.V();
                StyledPlayerControlView styledPlayerControlView2 = StyledPlayerControlView.this;
                styledPlayerControlView2.Y(styledPlayerControlView2.M4);
            } else if (StyledPlayerControlView.this.Y4 == view) {
                StyledPlayerControlView.this.I4.V();
                StyledPlayerControlView styledPlayerControlView3 = StyledPlayerControlView.this;
                styledPlayerControlView3.Y(styledPlayerControlView3.R4);
            } else if (StyledPlayerControlView.this.T4 == view) {
                StyledPlayerControlView.this.I4.V();
                StyledPlayerControlView styledPlayerControlView4 = StyledPlayerControlView.this;
                styledPlayerControlView4.Y(styledPlayerControlView4.Q4);
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (StyledPlayerControlView.this.O4) {
                StyledPlayerControlView.this.I4.W();
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
            if (StyledPlayerControlView.this.f6661n != null) {
                StyledPlayerControlView.this.f6661n.setText(l0.b0(StyledPlayerControlView.this.f6663p, StyledPlayerControlView.this.f6664q, j10));
            }
        }

        @Override // com.google.android.exoplayer2.l2.d
        public /* synthetic */ void z(l2.e eVar, l2.e eVar2, int i9) {
            n2.u(this, eVar, eVar2, i9);
        }
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface d {
        void D(boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class e extends RecyclerView.Adapter<i> {

        /* renamed from: a  reason: collision with root package name */
        private final String[] f6676a;

        /* renamed from: b  reason: collision with root package name */
        private final float[] f6677b;

        /* renamed from: c  reason: collision with root package name */
        private int f6678c;

        public e(String[] strArr, float[] fArr) {
            this.f6676a = strArr;
            this.f6677b = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(int i9, View view) {
            if (i9 != this.f6678c) {
                StyledPlayerControlView.this.setPlaybackSpeed(this.f6677b[i9]);
            }
            StyledPlayerControlView.this.N4.dismiss();
        }

        public String b() {
            return this.f6676a[this.f6678c];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(i iVar, final int i9) {
            String[] strArr = this.f6676a;
            if (i9 < strArr.length) {
                iVar.f6688a.setText(strArr[i9]);
            }
            if (i9 == this.f6678c) {
                iVar.itemView.setSelected(true);
                iVar.f6689b.setVisibility(0);
            } else {
                iVar.itemView.setSelected(false);
                iVar.f6689b.setVisibility(4);
            }
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.e.this.c(i9, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: e */
        public i onCreateViewHolder(ViewGroup viewGroup, int i9) {
            return new i(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        public void f(float f10) {
            int i9 = 0;
            int i10 = 0;
            float f11 = Float.MAX_VALUE;
            while (true) {
                float[] fArr = this.f6677b;
                if (i9 < fArr.length) {
                    float abs = Math.abs(f10 - fArr[i9]);
                    if (abs < f11) {
                        i10 = i9;
                        f11 = abs;
                    }
                    i9++;
                } else {
                    this.f6678c = i10;
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f6676a.length;
        }
    }

    /* loaded from: classes2.dex */
    public interface f {
        void a(long j10, long j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class g extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private final TextView f6680a;

        /* renamed from: b  reason: collision with root package name */
        private final TextView f6681b;

        /* renamed from: c  reason: collision with root package name */
        private final ImageView f6682c;

        public g(View view) {
            super(view);
            if (l0.f6985a < 26) {
                view.setFocusable(true);
            }
            this.f6680a = (TextView) view.findViewById(R$id.exo_main_text);
            this.f6681b = (TextView) view.findViewById(R$id.exo_sub_text);
            this.f6682c = (ImageView) view.findViewById(R$id.exo_icon);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.g.this.g(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(View view) {
            StyledPlayerControlView.this.l0(getAdapterPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class h extends RecyclerView.Adapter<g> {

        /* renamed from: a  reason: collision with root package name */
        private final String[] f6684a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f6685b;

        /* renamed from: c  reason: collision with root package name */
        private final Drawable[] f6686c;

        public h(String[] strArr, Drawable[] drawableArr) {
            this.f6684a = strArr;
            this.f6685b = new String[strArr.length];
            this.f6686c = drawableArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: a */
        public void onBindViewHolder(g gVar, int i9) {
            gVar.f6680a.setText(this.f6684a[i9]);
            if (this.f6685b[i9] == null) {
                gVar.f6681b.setVisibility(8);
            } else {
                gVar.f6681b.setText(this.f6685b[i9]);
            }
            if (this.f6686c[i9] == null) {
                gVar.f6682c.setVisibility(8);
            } else {
                gVar.f6682c.setImageDrawable(this.f6686c[i9]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: b */
        public g onCreateViewHolder(ViewGroup viewGroup, int i9) {
            return new g(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_settings_list_item, viewGroup, false));
        }

        public void c(int i9, String str) {
            this.f6685b[i9] = str;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f6684a.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i9) {
            return i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class i extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public final TextView f6688a;

        /* renamed from: b  reason: collision with root package name */
        public final View f6689b;

        public i(View view) {
            super(view);
            if (l0.f6985a < 26) {
                view.setFocusable(true);
            }
            this.f6688a = (TextView) view.findViewById(R$id.exo_text);
            this.f6689b = view.findViewById(R$id.exo_check);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class j extends l {
        private j() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(View view) {
            if (StyledPlayerControlView.this.O != null) {
                StyledPlayerControlView.this.O.i(StyledPlayerControlView.this.O.v().a().B(3).F(-3).A());
                StyledPlayerControlView.this.N4.dismiss();
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l, androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(i iVar, int i9) {
            super.onBindViewHolder(iVar, i9);
            if (i9 > 0) {
                iVar.f6689b.setVisibility(this.f6694a.get(i9 + (-1)).a() ? 0 : 4);
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void e(i iVar) {
            boolean z10;
            iVar.f6688a.setText(R$string.exo_track_selection_none);
            int i9 = 0;
            while (true) {
                if (i9 >= this.f6694a.size()) {
                    z10 = true;
                    break;
                } else if (this.f6694a.get(i9).a()) {
                    z10 = false;
                    break;
                } else {
                    i9++;
                }
            }
            iVar.f6689b.setVisibility(z10 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.j.this.j(view);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void g(String str) {
        }

        public void i(List<k> list) {
            boolean z10 = false;
            int i9 = 0;
            while (true) {
                if (i9 >= list.size()) {
                    break;
                } else if (list.get(i9).a()) {
                    z10 = true;
                    break;
                } else {
                    i9++;
                }
            }
            if (StyledPlayerControlView.this.T4 != null) {
                ImageView imageView = StyledPlayerControlView.this.T4;
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                imageView.setImageDrawable(z10 ? styledPlayerControlView.G : styledPlayerControlView.H);
                StyledPlayerControlView.this.T4.setContentDescription(z10 ? StyledPlayerControlView.this.I : StyledPlayerControlView.this.J);
            }
            this.f6694a = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        public final n3.a f6691a;

        /* renamed from: b  reason: collision with root package name */
        public final int f6692b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6693c;

        public k(n3 n3Var, int i9, int i10, String str) {
            this.f6691a = n3Var.b().get(i9);
            this.f6692b = i10;
            this.f6693c = str;
        }

        public boolean a() {
            return this.f6691a.g(this.f6692b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public abstract class l extends RecyclerView.Adapter<i> {

        /* renamed from: a  reason: collision with root package name */
        protected List<k> f6694a = new ArrayList();

        protected l() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(l2 l2Var, o0 o0Var, k kVar, View view) {
            l2Var.i(l2Var.v().a().G(new h3.x(o0Var, ImmutableList.of(Integer.valueOf(kVar.f6692b)))).J(kVar.f6691a.d(), false).A());
            g(kVar.f6693c);
            StyledPlayerControlView.this.N4.dismiss();
        }

        protected void b() {
            this.f6694a = Collections.emptyList();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(i iVar, int i9) {
            final l2 l2Var = StyledPlayerControlView.this.O;
            if (l2Var == null) {
                return;
            }
            if (i9 == 0) {
                e(iVar);
                return;
            }
            boolean z10 = true;
            final k kVar = this.f6694a.get(i9 - 1);
            final o0 b10 = kVar.f6691a.b();
            z10 = (l2Var.v().f40515y.get(b10) == null || !kVar.a()) ? false : false;
            iVar.f6688a.setText(kVar.f6693c);
            iVar.f6689b.setVisibility(z10 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.l.this.c(l2Var, b10, kVar, view);
                }
            });
        }

        protected abstract void e(i iVar);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: f */
        public i onCreateViewHolder(ViewGroup viewGroup, int i9) {
            return new i(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        protected abstract void g(String str);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.f6694a.isEmpty()) {
                return 0;
            }
            return this.f6694a.size() + 1;
        }
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface m {
        void r(int i9);
    }

    static {
        i1.a("goog.exo.ui");
        Z4 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    public StyledPlayerControlView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0() {
        long j10;
        float f10;
        if (h0() && this.f6647a1) {
            l2 l2Var = this.O;
            long j11 = 0;
            if (l2Var != null) {
                j11 = this.H4 + l2Var.J();
                j10 = this.H4 + l2Var.P();
            } else {
                j10 = 0;
            }
            TextView textView = this.f6661n;
            if (textView != null && !this.V2) {
                textView.setText(l0.b0(this.f6663p, this.f6664q, j11));
            }
            c0 c0Var = this.f6662o;
            if (c0Var != null) {
                c0Var.setPosition(j11);
                this.f6662o.setBufferedPosition(j10);
            }
            f fVar = this.P;
            if (fVar != null) {
                fVar.a(j11, j10);
            }
            removeCallbacks(this.f6667t);
            int playbackState = l2Var == null ? 1 : l2Var.getPlaybackState();
            if (l2Var == null || !l2Var.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f6667t, 1000L);
                return;
            }
            c0 c0Var2 = this.f6662o;
            long min = Math.min(c0Var2 != null ? c0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (j11 % 1000));
            postDelayed(this.f6667t, l0.q(l2Var.b().f6154a > 0.0f ? ((float) min) / f10 : 1000L, this.V3, 1000L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0() {
        ImageView imageView;
        if (h0() && this.f6647a1 && (imageView = this.f6657j) != null) {
            if (this.C4 == 0) {
                t0(false, imageView);
                return;
            }
            l2 l2Var = this.O;
            if (l2Var == null) {
                t0(false, imageView);
                this.f6657j.setImageDrawable(this.f6668u);
                this.f6657j.setContentDescription(this.f6671x);
                return;
            }
            t0(true, imageView);
            int repeatMode = l2Var.getRepeatMode();
            if (repeatMode == 0) {
                this.f6657j.setImageDrawable(this.f6668u);
                this.f6657j.setContentDescription(this.f6671x);
            } else if (repeatMode == 1) {
                this.f6657j.setImageDrawable(this.f6669v);
                this.f6657j.setContentDescription(this.f6672y);
            } else if (repeatMode != 2) {
            } else {
                this.f6657j.setImageDrawable(this.f6670w);
                this.f6657j.setContentDescription(this.f6673z);
            }
        }
    }

    private void C0() {
        l2 l2Var = this.O;
        int T = (int) ((l2Var != null ? l2Var.T() : 5000L) / 1000);
        TextView textView = this.f6656i;
        if (textView != null) {
            textView.setText(String.valueOf(T));
        }
        View view = this.f6654g;
        if (view != null) {
            view.setContentDescription(this.J4.getQuantityString(R$plurals.exo_controls_rewind_by_amount_description, T, Integer.valueOf(T)));
        }
    }

    private void D0() {
        this.K4.measure(0, 0);
        this.N4.setWidth(Math.min(this.K4.getMeasuredWidth(), getWidth() - (this.P4 * 2)));
        this.N4.setHeight(Math.min(getHeight() - (this.P4 * 2), this.K4.getMeasuredHeight()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() {
        ImageView imageView;
        String str;
        if (h0() && this.f6647a1 && (imageView = this.f6658k) != null) {
            l2 l2Var = this.O;
            if (!this.I4.A(imageView)) {
                t0(false, this.f6658k);
            } else if (l2Var == null) {
                t0(false, this.f6658k);
                this.f6658k.setImageDrawable(this.B);
                this.f6658k.setContentDescription(this.F);
            } else {
                t0(true, this.f6658k);
                this.f6658k.setImageDrawable(l2Var.O() ? this.A : this.B);
                ImageView imageView2 = this.f6658k;
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
    public void F0() {
        int i9;
        i3.d dVar;
        l2 l2Var = this.O;
        if (l2Var == null) {
            return;
        }
        boolean z10 = true;
        this.f6648a2 = this.V1 && T(l2Var.t(), this.f6666s);
        long j10 = 0;
        this.H4 = 0L;
        i3 t10 = l2Var.t();
        if (t10.u()) {
            i9 = 0;
        } else {
            int M = l2Var.M();
            boolean z11 = this.f6648a2;
            int i10 = z11 ? 0 : M;
            int t11 = z11 ? t10.t() - 1 : M;
            long j11 = 0;
            i9 = 0;
            while (true) {
                if (i10 > t11) {
                    break;
                }
                if (i10 == M) {
                    this.H4 = l0.P0(j11);
                }
                t10.r(i10, this.f6666s);
                i3.d dVar2 = this.f6666s;
                if (dVar2.f6054n == -9223372036854775807L) {
                    com.google.android.exoplayer2.util.a.f(this.f6648a2 ^ z10);
                    break;
                }
                int i11 = dVar2.f6055o;
                while (true) {
                    dVar = this.f6666s;
                    if (i11 <= dVar.f6056p) {
                        t10.j(i11, this.f6665r);
                        int f10 = this.f6665r.f();
                        for (int r10 = this.f6665r.r(); r10 < f10; r10++) {
                            long i12 = this.f6665r.i(r10);
                            if (i12 == Long.MIN_VALUE) {
                                long j12 = this.f6665r.f6029d;
                                if (j12 != -9223372036854775807L) {
                                    i12 = j12;
                                }
                            }
                            long q10 = i12 + this.f6665r.q();
                            if (q10 >= 0) {
                                long[] jArr = this.D4;
                                if (i9 == jArr.length) {
                                    int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                    this.D4 = Arrays.copyOf(jArr, length);
                                    this.E4 = Arrays.copyOf(this.E4, length);
                                }
                                this.D4[i9] = l0.P0(j11 + q10);
                                this.E4[i9] = this.f6665r.s(r10);
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
        TextView textView = this.f6660m;
        if (textView != null) {
            textView.setText(l0.b0(this.f6663p, this.f6664q, P0));
        }
        c0 c0Var = this.f6662o;
        if (c0Var != null) {
            c0Var.setDuration(P0);
            int length2 = this.F4.length;
            int i13 = i9 + length2;
            long[] jArr2 = this.D4;
            if (i13 > jArr2.length) {
                this.D4 = Arrays.copyOf(jArr2, i13);
                this.E4 = Arrays.copyOf(this.E4, i13);
            }
            System.arraycopy(this.F4, 0, this.D4, i9, length2);
            System.arraycopy(this.G4, 0, this.E4, i9, length2);
            this.f6662o.a(this.D4, this.E4, i13);
        }
        A0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0() {
        d0();
        t0(this.Q4.getItemCount() > 0, this.T4);
    }

    private static boolean T(i3 i3Var, i3.d dVar) {
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

    private void V(l2 l2Var) {
        l2Var.pause();
    }

    private void W(l2 l2Var) {
        int playbackState = l2Var.getPlaybackState();
        if (playbackState == 1) {
            l2Var.prepare();
        } else if (playbackState == 4) {
            o0(l2Var, l2Var.M(), -9223372036854775807L);
        }
        l2Var.play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(l2 l2Var) {
        int playbackState = l2Var.getPlaybackState();
        if (playbackState != 1 && playbackState != 4 && l2Var.A()) {
            V(l2Var);
        } else {
            W(l2Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(RecyclerView.Adapter<?> adapter) {
        this.K4.setAdapter(adapter);
        D0();
        this.O4 = false;
        this.N4.dismiss();
        this.O4 = true;
        this.N4.showAsDropDown(this, (getWidth() - this.N4.getWidth()) - this.P4, (-this.N4.getHeight()) - this.P4);
    }

    private ImmutableList<k> Z(n3 n3Var, int i9) {
        ImmutableList.b bVar = new ImmutableList.b();
        ImmutableList<n3.a> b10 = n3Var.b();
        for (int i10 = 0; i10 < b10.size(); i10++) {
            n3.a aVar = b10.get(i10);
            if (aVar.d() == i9) {
                for (int i11 = 0; i11 < aVar.f6356a; i11++) {
                    if (aVar.h(i11)) {
                        k1 c10 = aVar.c(i11);
                        if ((c10.f6103d & 2) == 0) {
                            bVar.a(new k(n3Var, i10, i11, this.S4.a(c10)));
                        }
                    }
                }
            }
        }
        return bVar.j();
    }

    private static int a0(TypedArray typedArray, int i9) {
        return typedArray.getInt(R$styleable.StyledPlayerControlView_repeat_toggle_modes, i9);
    }

    private void d0() {
        this.Q4.b();
        this.R4.b();
        l2 l2Var = this.O;
        if (l2Var != null && l2Var.q(30) && this.O.q(29)) {
            n3 m10 = this.O.m();
            this.R4.j(Z(m10, 1));
            if (this.I4.A(this.T4)) {
                this.Q4.i(Z(m10, 3));
            } else {
                this.Q4.i(ImmutableList.of());
            }
        }
    }

    private static void e0(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    private static boolean g0(int i9) {
        return i9 == 90 || i9 == 89 || i9 == 85 || i9 == 79 || i9 == 126 || i9 == 127 || i9 == 87 || i9 == 88;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(View view) {
        if (this.Q == null) {
            return;
        }
        boolean z10 = !this.R;
        this.R = z10;
        v0(this.U4, z10);
        v0(this.V4, this.R);
        d dVar = this.Q;
        if (dVar != null) {
            dVar.D(this.R);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        int i17 = i12 - i10;
        int i18 = i16 - i14;
        if (!(i11 - i9 == i15 - i13 && i17 == i18) && this.N4.isShowing()) {
            D0();
            this.N4.update(view, (getWidth() - this.N4.getWidth()) - this.P4, (-this.N4.getHeight()) - this.P4, -1, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(int i9) {
        if (i9 == 0) {
            Y(this.M4);
        } else if (i9 == 1) {
            Y(this.R4);
        } else {
            this.N4.dismiss();
        }
    }

    private void o0(l2 l2Var, int i9, long j10) {
        l2Var.y(i9, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(l2 l2Var, long j10) {
        int M;
        i3 t10 = l2Var.t();
        if (this.f6648a2 && !t10.u()) {
            int t11 = t10.t();
            M = 0;
            while (true) {
                long f10 = t10.r(M, this.f6666s).f();
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
        o0(l2Var, M, j10);
        A0();
    }

    private boolean q0() {
        l2 l2Var = this.O;
        return (l2Var == null || l2Var.getPlaybackState() == 4 || this.O.getPlaybackState() == 1 || !this.O.A()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f10) {
        l2 l2Var = this.O;
        if (l2Var == null) {
            return;
        }
        l2Var.d(l2Var.b().e(f10));
    }

    private void t0(boolean z10, @Nullable View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z10);
        view.setAlpha(z10 ? this.C : this.D);
    }

    private void u0() {
        l2 l2Var = this.O;
        int I = (int) ((l2Var != null ? l2Var.I() : 15000L) / 1000);
        TextView textView = this.f6655h;
        if (textView != null) {
            textView.setText(String.valueOf(I));
        }
        View view = this.f6653f;
        if (view != null) {
            view.setContentDescription(this.J4.getQuantityString(R$plurals.exo_controls_fastforward_by_amount_description, I, Integer.valueOf(I)));
        }
    }

    private void v0(@Nullable ImageView imageView, boolean z10) {
        if (imageView == null) {
            return;
        }
        if (z10) {
            imageView.setImageDrawable(this.K);
            imageView.setContentDescription(this.M);
            return;
        }
        imageView.setImageDrawable(this.L);
        imageView.setContentDescription(this.N);
    }

    private static void w0(@Nullable View view, boolean z10) {
        if (view == null) {
            return;
        }
        if (z10) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0() {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (h0() && this.f6647a1) {
            l2 l2Var = this.O;
            boolean z14 = false;
            if (l2Var != null) {
                boolean q10 = l2Var.q(5);
                z11 = l2Var.q(7);
                boolean q11 = l2Var.q(11);
                z13 = l2Var.q(12);
                z10 = l2Var.q(9);
                z12 = q10;
                z14 = q11;
            } else {
                z10 = false;
                z11 = false;
                z12 = false;
                z13 = false;
            }
            if (z14) {
                C0();
            }
            if (z13) {
                u0();
            }
            t0(z11, this.f6650c);
            t0(z14, this.f6654g);
            t0(z13, this.f6653f);
            t0(z10, this.f6651d);
            c0 c0Var = this.f6662o;
            if (c0Var != null) {
                c0Var.setEnabled(z12);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0() {
        if (h0() && this.f6647a1 && this.f6652e != null) {
            if (q0()) {
                ((ImageView) this.f6652e).setImageDrawable(this.J4.getDrawable(R$drawable.exo_styled_controls_pause));
                this.f6652e.setContentDescription(this.J4.getString(R$string.exo_controls_pause_description));
                return;
            }
            ((ImageView) this.f6652e).setImageDrawable(this.J4.getDrawable(R$drawable.exo_styled_controls_play));
            this.f6652e.setContentDescription(this.J4.getString(R$string.exo_controls_play_description));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z0() {
        l2 l2Var = this.O;
        if (l2Var == null) {
            return;
        }
        this.M4.f(l2Var.b().f6154a);
        this.L4.c(0, this.M4.b());
    }

    @Deprecated
    public void S(m mVar) {
        com.google.android.exoplayer2.util.a.e(mVar);
        this.f6649b.add(mVar);
    }

    public boolean U(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        l2 l2Var = this.O;
        if (l2Var == null || !g0(keyCode)) {
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
                    X(l2Var);
                    return true;
                } else if (keyCode == 87) {
                    l2Var.w();
                    return true;
                } else if (keyCode == 88) {
                    l2Var.j();
                    return true;
                } else if (keyCode == 126) {
                    W(l2Var);
                    return true;
                } else if (keyCode != 127) {
                    return true;
                } else {
                    V(l2Var);
                    return true;
                }
            } else {
                return true;
            }
        }
        return true;
    }

    public void b0() {
        this.I4.C();
    }

    public void c0() {
        this.I4.F();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return U(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean f0() {
        return this.I4.I();
    }

    @Nullable
    public l2 getPlayer() {
        return this.O;
    }

    public int getRepeatToggleModes() {
        return this.C4;
    }

    public boolean getShowShuffleButton() {
        return this.I4.A(this.f6658k);
    }

    public boolean getShowSubtitleButton() {
        return this.I4.A(this.T4);
    }

    public int getShowTimeoutMs() {
        return this.B3;
    }

    public boolean getShowVrButton() {
        return this.I4.A(this.f6659l);
    }

    public boolean h0() {
        return getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i0() {
        Iterator<m> it = this.f6649b.iterator();
        while (it.hasNext()) {
            it.next().r(getVisibility());
        }
    }

    @Deprecated
    public void m0(m mVar) {
        this.f6649b.remove(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n0() {
        View view = this.f6652e;
        if (view != null) {
            view.requestFocus();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.I4.O();
        this.f6647a1 = true;
        if (f0()) {
            this.I4.W();
        }
        s0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.I4.P();
        this.f6647a1 = false;
        removeCallbacks(this.f6667t);
        this.I4.V();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        this.I4.Q(z10, i9, i10, i11, i12);
    }

    public void r0() {
        this.I4.b0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s0() {
        y0();
        x0();
        B0();
        E0();
        G0();
        z0();
        F0();
    }

    public void setAnimationEnabled(boolean z10) {
        this.I4.X(z10);
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(@Nullable d dVar) {
        this.Q = dVar;
        w0(this.U4, dVar != null);
        w0(this.V4, dVar != null);
    }

    public void setPlayer(@Nullable l2 l2Var) {
        boolean z10 = true;
        com.google.android.exoplayer2.util.a.f(Looper.myLooper() == Looper.getMainLooper());
        if (l2Var != null && l2Var.u() != Looper.getMainLooper()) {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.a(z10);
        l2 l2Var2 = this.O;
        if (l2Var2 == l2Var) {
            return;
        }
        if (l2Var2 != null) {
            l2Var2.g(this.f6646a);
        }
        this.O = l2Var;
        if (l2Var != null) {
            l2Var.K(this.f6646a);
        }
        if (l2Var instanceof m1) {
            ((m1) l2Var).c();
        }
        s0();
    }

    public void setProgressUpdateListener(@Nullable f fVar) {
        this.P = fVar;
    }

    public void setRepeatToggleModes(int i9) {
        this.C4 = i9;
        l2 l2Var = this.O;
        if (l2Var != null) {
            int repeatMode = l2Var.getRepeatMode();
            if (i9 == 0 && repeatMode != 0) {
                this.O.setRepeatMode(0);
            } else if (i9 == 1 && repeatMode == 2) {
                this.O.setRepeatMode(1);
            } else if (i9 == 2 && repeatMode == 1) {
                this.O.setRepeatMode(2);
            }
        }
        this.I4.Y(this.f6657j, i9 != 0);
        B0();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.I4.Y(this.f6653f, z10);
        x0();
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        this.V1 = z10;
        F0();
    }

    public void setShowNextButton(boolean z10) {
        this.I4.Y(this.f6651d, z10);
        x0();
    }

    public void setShowPreviousButton(boolean z10) {
        this.I4.Y(this.f6650c, z10);
        x0();
    }

    public void setShowRewindButton(boolean z10) {
        this.I4.Y(this.f6654g, z10);
        x0();
    }

    public void setShowShuffleButton(boolean z10) {
        this.I4.Y(this.f6658k, z10);
        E0();
    }

    public void setShowSubtitleButton(boolean z10) {
        this.I4.Y(this.T4, z10);
    }

    public void setShowTimeoutMs(int i9) {
        this.B3 = i9;
        if (f0()) {
            this.I4.W();
        }
    }

    public void setShowVrButton(boolean z10) {
        this.I4.Y(this.f6659l, z10);
    }

    public void setTimeBarMinUpdateInterval(int i9) {
        this.V3 = l0.p(i9, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f6659l;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            t0(onClickListener != null, this.f6659l);
        }
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, attributeSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [com.google.android.exoplayer2.ui.StyledPlayerControlView$a, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r9v4 */
    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i9, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i9);
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        c cVar;
        boolean z18;
        boolean z19;
        ?? r92;
        int i10 = R$layout.exo_styled_player_control_view;
        this.B3 = 5000;
        this.C4 = 0;
        this.V3 = 200;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.StyledPlayerControlView, i9, 0);
            try {
                i10 = obtainStyledAttributes.getResourceId(R$styleable.StyledPlayerControlView_controller_layout_id, i10);
                this.B3 = obtainStyledAttributes.getInt(R$styleable.StyledPlayerControlView_show_timeout, this.B3);
                this.C4 = a0(obtainStyledAttributes, this.C4);
                boolean z20 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_rewind_button, true);
                boolean z21 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_fastforward_button, true);
                boolean z22 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_previous_button, true);
                boolean z23 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_next_button, true);
                boolean z24 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_shuffle_button, false);
                boolean z25 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_subtitle_button, false);
                boolean z26 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_vr_button, false);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(R$styleable.StyledPlayerControlView_time_bar_min_update_interval, this.V3));
                boolean z27 = obtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_animation_enabled, true);
                obtainStyledAttributes.recycle();
                z16 = z24;
                z17 = z25;
                z12 = z20;
                z13 = z21;
                z14 = z22;
                z10 = z27;
                z15 = z23;
                z11 = z26;
            } catch (Throwable th2) {
                obtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            z10 = true;
            z11 = false;
            z12 = true;
            z13 = true;
            z14 = true;
            z15 = true;
            z16 = false;
            z17 = false;
        }
        LayoutInflater.from(context).inflate(i10, this);
        setDescendantFocusability(262144);
        c cVar2 = new c();
        this.f6646a = cVar2;
        this.f6649b = new CopyOnWriteArrayList<>();
        this.f6665r = new i3.b();
        this.f6666s = new i3.d();
        StringBuilder sb2 = new StringBuilder();
        this.f6663p = sb2;
        this.f6664q = new Formatter(sb2, Locale.getDefault());
        this.D4 = new long[0];
        this.E4 = new boolean[0];
        this.F4 = new long[0];
        this.G4 = new boolean[0];
        this.f6667t = new Runnable() { // from class: i3.j
            @Override // java.lang.Runnable
            public final void run() {
                StyledPlayerControlView.this.A0();
            }
        };
        this.f6660m = (TextView) findViewById(R$id.exo_duration);
        this.f6661n = (TextView) findViewById(R$id.exo_position);
        ImageView imageView = (ImageView) findViewById(R$id.exo_subtitle);
        this.T4 = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(cVar2);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_fullscreen);
        this.U4 = imageView2;
        e0(imageView2, new View.OnClickListener() { // from class: i3.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.j0(view);
            }
        });
        ImageView imageView3 = (ImageView) findViewById(R$id.exo_minimal_fullscreen);
        this.V4 = imageView3;
        e0(imageView3, new View.OnClickListener() { // from class: i3.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.j0(view);
            }
        });
        View findViewById = findViewById(R$id.exo_settings);
        this.W4 = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(cVar2);
        }
        View findViewById2 = findViewById(R$id.exo_playback_speed);
        this.X4 = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(cVar2);
        }
        View findViewById3 = findViewById(R$id.exo_audio_track);
        this.Y4 = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(cVar2);
        }
        int i11 = R$id.exo_progress;
        c0 c0Var = (c0) findViewById(i11);
        View findViewById4 = findViewById(R$id.exo_progress_placeholder);
        if (c0Var != null) {
            this.f6662o = c0Var;
            cVar = cVar2;
            z18 = z10;
            z19 = z11;
            r92 = 0;
        } else if (findViewById4 != null) {
            r92 = 0;
            cVar = cVar2;
            z18 = z10;
            z19 = z11;
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, R$style.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(i11);
            defaultTimeBar.setLayoutParams(findViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById4.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById4);
            viewGroup.removeView(findViewById4);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f6662o = defaultTimeBar;
        } else {
            cVar = cVar2;
            z18 = z10;
            z19 = z11;
            r92 = 0;
            this.f6662o = null;
        }
        c0 c0Var2 = this.f6662o;
        c cVar3 = cVar;
        if (c0Var2 != null) {
            c0Var2.addListener(cVar3);
        }
        View findViewById5 = findViewById(R$id.exo_play_pause);
        this.f6652e = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(cVar3);
        }
        View findViewById6 = findViewById(R$id.exo_prev);
        this.f6650c = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(cVar3);
        }
        View findViewById7 = findViewById(R$id.exo_next);
        this.f6651d = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(cVar3);
        }
        Typeface font = ResourcesCompat.getFont(context, R$font.roboto_medium_numbers);
        View findViewById8 = findViewById(R$id.exo_rew);
        TextView textView = findViewById8 == null ? (TextView) findViewById(R$id.exo_rew_with_amount) : r92;
        this.f6656i = textView;
        if (textView != null) {
            textView.setTypeface(font);
        }
        findViewById8 = findViewById8 == null ? textView : findViewById8;
        this.f6654g = findViewById8;
        if (findViewById8 != null) {
            findViewById8.setOnClickListener(cVar3);
        }
        View findViewById9 = findViewById(R$id.exo_ffwd);
        TextView textView2 = findViewById9 == null ? (TextView) findViewById(R$id.exo_ffwd_with_amount) : r92;
        this.f6655h = textView2;
        if (textView2 != null) {
            textView2.setTypeface(font);
        }
        findViewById9 = findViewById9 == null ? textView2 : findViewById9;
        this.f6653f = findViewById9;
        if (findViewById9 != null) {
            findViewById9.setOnClickListener(cVar3);
        }
        ImageView imageView4 = (ImageView) findViewById(R$id.exo_repeat_toggle);
        this.f6657j = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(cVar3);
        }
        ImageView imageView5 = (ImageView) findViewById(R$id.exo_shuffle);
        this.f6658k = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(cVar3);
        }
        Resources resources = context.getResources();
        this.J4 = resources;
        this.C = resources.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.D = this.J4.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        View findViewById10 = findViewById(R$id.exo_vr);
        this.f6659l = findViewById10;
        if (findViewById10 != null) {
            t0(false, findViewById10);
        }
        x xVar = new x(this);
        this.I4 = xVar;
        xVar.X(z18);
        this.L4 = new h(new String[]{this.J4.getString(R$string.exo_controls_playback_speed), this.J4.getString(R$string.exo_track_selection_title_audio)}, new Drawable[]{this.J4.getDrawable(R$drawable.exo_styled_controls_speed), this.J4.getDrawable(R$drawable.exo_styled_controls_audiotrack)});
        this.P4 = this.J4.getDimensionPixelSize(R$dimen.exo_settings_offset);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(R$layout.exo_styled_settings_list, (ViewGroup) r92);
        this.K4 = recyclerView;
        recyclerView.setAdapter(this.L4);
        this.K4.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) this.K4, -2, -2, true);
        this.N4 = popupWindow;
        if (l0.f6985a < 23) {
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        }
        this.N4.setOnDismissListener(cVar3);
        this.O4 = true;
        this.S4 = new i3.e(getResources());
        this.G = this.J4.getDrawable(R$drawable.exo_styled_controls_subtitle_on);
        this.H = this.J4.getDrawable(R$drawable.exo_styled_controls_subtitle_off);
        this.I = this.J4.getString(R$string.exo_controls_cc_enabled_description);
        this.J = this.J4.getString(R$string.exo_controls_cc_disabled_description);
        this.Q4 = new j();
        this.R4 = new b();
        this.M4 = new e(this.J4.getStringArray(R$array.exo_controls_playback_speeds), Z4);
        this.K = this.J4.getDrawable(R$drawable.exo_styled_controls_fullscreen_exit);
        this.L = this.J4.getDrawable(R$drawable.exo_styled_controls_fullscreen_enter);
        this.f6668u = this.J4.getDrawable(R$drawable.exo_styled_controls_repeat_off);
        this.f6669v = this.J4.getDrawable(R$drawable.exo_styled_controls_repeat_one);
        this.f6670w = this.J4.getDrawable(R$drawable.exo_styled_controls_repeat_all);
        this.A = this.J4.getDrawable(R$drawable.exo_styled_controls_shuffle_on);
        this.B = this.J4.getDrawable(R$drawable.exo_styled_controls_shuffle_off);
        this.M = this.J4.getString(R$string.exo_controls_fullscreen_exit_description);
        this.N = this.J4.getString(R$string.exo_controls_fullscreen_enter_description);
        this.f6671x = this.J4.getString(R$string.exo_controls_repeat_off_description);
        this.f6672y = this.J4.getString(R$string.exo_controls_repeat_one_description);
        this.f6673z = this.J4.getString(R$string.exo_controls_repeat_all_description);
        this.E = this.J4.getString(R$string.exo_controls_shuffle_on_description);
        this.F = this.J4.getString(R$string.exo_controls_shuffle_off_description);
        this.I4.Y((ViewGroup) findViewById(R$id.exo_bottom_bar), true);
        this.I4.Y(this.f6653f, z13);
        this.I4.Y(this.f6654g, z12);
        this.I4.Y(this.f6650c, z14);
        this.I4.Y(this.f6651d, z15);
        this.I4.Y(this.f6658k, z16);
        this.I4.Y(this.T4, z17);
        this.I4.Y(this.f6659l, z19);
        this.I4.Y(this.f6657j, this.C4 != 0);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: i3.i
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                StyledPlayerControlView.this.k0(view, i12, i13, i14, i15, i16, i17, i18, i19);
            }
        });
    }
}
