package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public final class HealthLiveTipsFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private HealthLiveTipsFragment f19244b;

    /* renamed from: c  reason: collision with root package name */
    private View f19245c;

    /* renamed from: d  reason: collision with root package name */
    private View f19246d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HealthLiveTipsFragment f19247a;

        a(HealthLiveTipsFragment healthLiveTipsFragment) {
            this.f19247a = healthLiveTipsFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19247a.close(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HealthLiveTipsFragment f19249a;

        b(HealthLiveTipsFragment healthLiveTipsFragment) {
            this.f19249a = healthLiveTipsFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19249a.close(view);
        }
    }

    @UiThread
    public HealthLiveTipsFragment_ViewBinding(HealthLiveTipsFragment healthLiveTipsFragment, View view) {
        this.f19244b = healthLiveTipsFragment;
        healthLiveTipsFragment.tvWaitingTip = (TextView) butterknife.internal.c.d(view, R.id.tv_waiting_tip, "field 'tvWaitingTip'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.sure, "field 'sure' and method 'close'");
        healthLiveTipsFragment.sure = (TextView) butterknife.internal.c.a(c10, R.id.sure, "field 'sure'", TextView.class);
        this.f19245c = c10;
        c10.setOnClickListener(new a(healthLiveTipsFragment));
        healthLiveTipsFragment.scrollLayout = (ScrollView) butterknife.internal.c.d(view, R.id.scroll_layout, "field 'scrollLayout'", ScrollView.class);
        View c11 = butterknife.internal.c.c(view, R.id.close, "method 'close'");
        this.f19246d = c11;
        c11.setOnClickListener(new b(healthLiveTipsFragment));
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        HealthLiveTipsFragment healthLiveTipsFragment = this.f19244b;
        if (healthLiveTipsFragment != null) {
            this.f19244b = null;
            healthLiveTipsFragment.tvWaitingTip = null;
            healthLiveTipsFragment.sure = null;
            healthLiveTipsFragment.scrollLayout = null;
            this.f19245c.setOnClickListener(null);
            this.f19245c = null;
            this.f19246d.setOnClickListener(null);
            this.f19246d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
