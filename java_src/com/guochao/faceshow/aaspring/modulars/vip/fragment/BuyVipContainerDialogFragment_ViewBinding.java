package com.guochao.faceshow.aaspring.modulars.vip.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.VipSwitcherView;
/* loaded from: classes3.dex */
public class BuyVipContainerDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BuyVipContainerDialogFragment f23358b;

    /* renamed from: c  reason: collision with root package name */
    private View f23359c;

    /* renamed from: d  reason: collision with root package name */
    private View f23360d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BuyVipContainerDialogFragment f23361a;

        a(BuyVipContainerDialogFragment buyVipContainerDialogFragment) {
            this.f23361a = buyVipContainerDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23361a.close(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BuyVipContainerDialogFragment f23363a;

        b(BuyVipContainerDialogFragment buyVipContainerDialogFragment) {
            this.f23363a = buyVipContainerDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23363a.toCustomerService(view);
        }
    }

    @UiThread
    public BuyVipContainerDialogFragment_ViewBinding(BuyVipContainerDialogFragment buyVipContainerDialogFragment, View view) {
        this.f23358b = buyVipContainerDialogFragment;
        buyVipContainerDialogFragment.mVipSwitcherView = (VipSwitcherView) c.d(view, R.id.vip_swicher, "field 'mVipSwitcherView'", VipSwitcherView.class);
        View c10 = c.c(view, R.id.close, "field 'mViewClose' and method 'close'");
        buyVipContainerDialogFragment.mViewClose = c10;
        this.f23359c = c10;
        c10.setOnClickListener(new a(buyVipContainerDialogFragment));
        buyVipContainerDialogFragment.bgTitleLay = c.c(view, R.id.bg_title_lay, "field 'bgTitleLay'");
        View c11 = c.c(view, R.id.to_1v1, "method 'toCustomerService'");
        this.f23360d = c11;
        c11.setOnClickListener(new b(buyVipContainerDialogFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BuyVipContainerDialogFragment buyVipContainerDialogFragment = this.f23358b;
        if (buyVipContainerDialogFragment != null) {
            this.f23358b = null;
            buyVipContainerDialogFragment.mVipSwitcherView = null;
            buyVipContainerDialogFragment.mViewClose = null;
            buyVipContainerDialogFragment.bgTitleLay = null;
            this.f23359c.setOnClickListener(null);
            this.f23359c = null;
            this.f23360d.setOnClickListener(null);
            this.f23360d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
