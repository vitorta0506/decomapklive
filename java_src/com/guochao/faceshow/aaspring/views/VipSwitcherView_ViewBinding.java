package com.guochao.faceshow.aaspring.views;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class VipSwitcherView_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private VipSwitcherView f24125b;

    /* renamed from: c  reason: collision with root package name */
    private View f24126c;

    /* renamed from: d  reason: collision with root package name */
    private View f24127d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VipSwitcherView f24128a;

        a(VipSwitcherView vipSwitcherView) {
            this.f24128a = vipSwitcherView;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f24128a.click(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VipSwitcherView f24130a;

        b(VipSwitcherView vipSwitcherView) {
            this.f24130a = vipSwitcherView;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f24130a.click(view);
        }
    }

    @UiThread
    public VipSwitcherView_ViewBinding(VipSwitcherView vipSwitcherView, View view) {
        this.f24125b = vipSwitcherView;
        View c10 = butterknife.internal.c.c(view, R.id.text1, "field 'mView1' and method 'click'");
        vipSwitcherView.mView1 = c10;
        this.f24126c = c10;
        c10.setOnClickListener(new a(vipSwitcherView));
        View c11 = butterknife.internal.c.c(view, R.id.text2, "field 'mView2' and method 'click'");
        vipSwitcherView.mView2 = c11;
        this.f24127d = c11;
        c11.setOnClickListener(new b(vipSwitcherView));
        vipSwitcherView.vipTV = (TextView) butterknife.internal.c.d(view, R.id.textVIP, "field 'vipTV'", TextView.class);
        vipSwitcherView.svipTV = (TextView) butterknife.internal.c.d(view, R.id.textSVIP, "field 'svipTV'", TextView.class);
        vipSwitcherView.mRedPoint = butterknife.internal.c.c(view, R.id.red_point, "field 'mRedPoint'");
        vipSwitcherView.mViewIndicator = butterknife.internal.c.c(view, R.id.indicator, "field 'mViewIndicator'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        VipSwitcherView vipSwitcherView = this.f24125b;
        if (vipSwitcherView != null) {
            this.f24125b = null;
            vipSwitcherView.mView1 = null;
            vipSwitcherView.mView2 = null;
            vipSwitcherView.vipTV = null;
            vipSwitcherView.svipTV = null;
            vipSwitcherView.mRedPoint = null;
            vipSwitcherView.mViewIndicator = null;
            this.f24126c.setOnClickListener(null);
            this.f24126c = null;
            this.f24127d.setOnClickListener(null);
            this.f24127d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
