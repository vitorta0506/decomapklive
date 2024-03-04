package com.guochao.faceshow.mine.view.fragment;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes4.dex */
public class RechargeFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private RechargeFragment f25999b;

    @UiThread
    public RechargeFragment_ViewBinding(RechargeFragment rechargeFragment, View view) {
        this.f25999b = rechargeFragment;
        rechargeFragment.titleBar = (ImageView) butterknife.internal.c.d(view, R.id.iv_title_bar, "field 'titleBar'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RechargeFragment rechargeFragment = this.f25999b;
        if (rechargeFragment != null) {
            this.f25999b = null;
            rechargeFragment.titleBar = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
