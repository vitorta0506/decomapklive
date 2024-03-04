package com.guochao.faceshow.aaspring.modulars.onevone.pendant;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class PendantDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PendantDialog f20971b;

    /* renamed from: c  reason: collision with root package name */
    private View f20972c;

    /* renamed from: d  reason: collision with root package name */
    private View f20973d;

    /* renamed from: e  reason: collision with root package name */
    private View f20974e;

    /* renamed from: f  reason: collision with root package name */
    private View f20975f;

    /* renamed from: g  reason: collision with root package name */
    private View f20976g;

    /* renamed from: h  reason: collision with root package name */
    private View f20977h;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PendantDialog f20978a;

        a(PendantDialog pendantDialog) {
            this.f20978a = pendantDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20978a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PendantDialog f20980a;

        b(PendantDialog pendantDialog) {
            this.f20980a = pendantDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20980a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PendantDialog f20982a;

        c(PendantDialog pendantDialog) {
            this.f20982a = pendantDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20982a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PendantDialog f20984a;

        d(PendantDialog pendantDialog) {
            this.f20984a = pendantDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20984a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PendantDialog f20986a;

        e(PendantDialog pendantDialog) {
            this.f20986a = pendantDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20986a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PendantDialog f20988a;

        f(PendantDialog pendantDialog) {
            this.f20988a = pendantDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20988a.onViewClicked(view);
        }
    }

    @UiThread
    public PendantDialog_ViewBinding(PendantDialog pendantDialog, View view) {
        this.f20971b = pendantDialog;
        View c10 = butterknife.internal.c.c(view, R.id.empty_view, "field 'emptyView' and method 'onViewClicked'");
        pendantDialog.emptyView = c10;
        this.f20972c = c10;
        c10.setOnClickListener(new a(pendantDialog));
        pendantDialog.fragmentContainer = (ViewGroup) butterknife.internal.c.d(view, R.id.fragment_container, "field 'fragmentContainer'", ViewGroup.class);
        pendantDialog.firstTab = (TextView) butterknife.internal.c.d(view, R.id.first_tab, "field 'firstTab'", TextView.class);
        pendantDialog.secondTab = (TextView) butterknife.internal.c.d(view, R.id.second_tab, "field 'secondTab'", TextView.class);
        pendantDialog.thirdTab = (TextView) butterknife.internal.c.d(view, R.id.third_tab, "field 'thirdTab'", TextView.class);
        View c11 = butterknife.internal.c.c(view, R.id.tab1, "field 'tab1' and method 'onViewClicked'");
        pendantDialog.tab1 = c11;
        this.f20973d = c11;
        c11.setOnClickListener(new b(pendantDialog));
        View c12 = butterknife.internal.c.c(view, R.id.tab2, "field 'tab2' and method 'onViewClicked'");
        pendantDialog.tab2 = c12;
        this.f20974e = c12;
        c12.setOnClickListener(new c(pendantDialog));
        View c13 = butterknife.internal.c.c(view, R.id.tab3, "field 'tab3' and method 'onViewClicked'");
        pendantDialog.tab3 = c13;
        this.f20975f = c13;
        c13.setOnClickListener(new d(pendantDialog));
        View c14 = butterknife.internal.c.c(view, R.id.tab_lay, "field 'tabLay' and method 'onViewClicked'");
        pendantDialog.tabLay = (ViewGroup) butterknife.internal.c.a(c14, R.id.tab_lay, "field 'tabLay'", ViewGroup.class);
        this.f20976g = c14;
        c14.setOnClickListener(new e(pendantDialog));
        pendantDialog.tabLine = butterknife.internal.c.c(view, R.id.tab_line, "field 'tabLine'");
        View c15 = butterknife.internal.c.c(view, R.id.icon_close, "field 'iconClose' and method 'onViewClicked'");
        pendantDialog.iconClose = (ImageView) butterknife.internal.c.a(c15, R.id.icon_close, "field 'iconClose'", ImageView.class);
        this.f20977h = c15;
        c15.setOnClickListener(new f(pendantDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PendantDialog pendantDialog = this.f20971b;
        if (pendantDialog != null) {
            this.f20971b = null;
            pendantDialog.emptyView = null;
            pendantDialog.fragmentContainer = null;
            pendantDialog.firstTab = null;
            pendantDialog.secondTab = null;
            pendantDialog.thirdTab = null;
            pendantDialog.tab1 = null;
            pendantDialog.tab2 = null;
            pendantDialog.tab3 = null;
            pendantDialog.tabLay = null;
            pendantDialog.tabLine = null;
            pendantDialog.iconClose = null;
            this.f20972c.setOnClickListener(null);
            this.f20972c = null;
            this.f20973d.setOnClickListener(null);
            this.f20973d = null;
            this.f20974e.setOnClickListener(null);
            this.f20974e = null;
            this.f20975f.setOnClickListener(null);
            this.f20975f = null;
            this.f20976g.setOnClickListener(null);
            this.f20976g = null;
            this.f20977h.setOnClickListener(null);
            this.f20977h = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
