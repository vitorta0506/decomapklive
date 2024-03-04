package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class HealthUpVideoTipsFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private HealthUpVideoTipsFragment f19252b;

    /* renamed from: c  reason: collision with root package name */
    private View f19253c;

    /* renamed from: d  reason: collision with root package name */
    private View f19254d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HealthUpVideoTipsFragment f19255a;

        a(HealthUpVideoTipsFragment healthUpVideoTipsFragment) {
            this.f19255a = healthUpVideoTipsFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19255a.close(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HealthUpVideoTipsFragment f19257a;

        b(HealthUpVideoTipsFragment healthUpVideoTipsFragment) {
            this.f19257a = healthUpVideoTipsFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19257a.close(view);
        }
    }

    @UiThread
    public HealthUpVideoTipsFragment_ViewBinding(HealthUpVideoTipsFragment healthUpVideoTipsFragment, View view) {
        this.f19252b = healthUpVideoTipsFragment;
        View c10 = butterknife.internal.c.c(view, R.id.close, "field 'close' and method 'close'");
        healthUpVideoTipsFragment.close = (ImageView) butterknife.internal.c.a(c10, R.id.close, "field 'close'", ImageView.class);
        this.f19253c = c10;
        c10.setOnClickListener(new a(healthUpVideoTipsFragment));
        healthUpVideoTipsFragment.tvWaitingTip = (TextView) butterknife.internal.c.d(view, R.id.tv_waiting_tip, "field 'tvWaitingTip'", TextView.class);
        View c11 = butterknife.internal.c.c(view, R.id.sure, "field 'sure' and method 'close'");
        healthUpVideoTipsFragment.sure = (TextView) butterknife.internal.c.a(c11, R.id.sure, "field 'sure'", TextView.class);
        this.f19254d = c11;
        c11.setOnClickListener(new b(healthUpVideoTipsFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        HealthUpVideoTipsFragment healthUpVideoTipsFragment = this.f19252b;
        if (healthUpVideoTipsFragment != null) {
            this.f19252b = null;
            healthUpVideoTipsFragment.close = null;
            healthUpVideoTipsFragment.tvWaitingTip = null;
            healthUpVideoTipsFragment.sure = null;
            this.f19253c.setOnClickListener(null);
            this.f19253c = null;
            this.f19254d.setOnClickListener(null);
            this.f19254d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
