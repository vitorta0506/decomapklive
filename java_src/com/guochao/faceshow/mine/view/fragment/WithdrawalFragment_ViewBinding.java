package com.guochao.faceshow.mine.view.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.ObservableScrollView;
/* loaded from: classes4.dex */
public class WithdrawalFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private WithdrawalFragment f26024b;

    /* renamed from: c  reason: collision with root package name */
    private View f26025c;

    /* renamed from: d  reason: collision with root package name */
    private View f26026d;

    /* loaded from: classes4.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalFragment f26027a;

        a(WithdrawalFragment withdrawalFragment) {
            this.f26027a = withdrawalFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f26027a.onViewClicked();
        }
    }

    /* loaded from: classes4.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalFragment f26029a;

        b(WithdrawalFragment withdrawalFragment) {
            this.f26029a = withdrawalFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f26029a.onClick(view);
        }
    }

    @UiThread
    public WithdrawalFragment_ViewBinding(WithdrawalFragment withdrawalFragment, View view) {
        this.f26024b = withdrawalFragment;
        withdrawalFragment.btnDiamond = (TextView) butterknife.internal.c.d(view, R.id.btnDiamond, "field 'btnDiamond'", TextView.class);
        withdrawalFragment.btnMoney = (TextView) butterknife.internal.c.d(view, R.id.btnMoney, "field 'btnMoney'", TextView.class);
        withdrawalFragment.tvIntro = (TextView) butterknife.internal.c.d(view, R.id.tv_intro, "field 'tvIntro'", TextView.class);
        withdrawalFragment.scrollView = (ObservableScrollView) butterknife.internal.c.d(view, R.id.ob_scrollview, "field 'scrollView'", ObservableScrollView.class);
        withdrawalFragment.llFreezeLayout = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_freeze_layout, "field 'llFreezeLayout'", LinearLayout.class);
        withdrawalFragment.tvFcontunt1 = (TextView) butterknife.internal.c.d(view, R.id.tv_f_count1, "field 'tvFcontunt1'", TextView.class);
        withdrawalFragment.tvAvailableBalance = (TextView) butterknife.internal.c.d(view, R.id.tv_available_balance, "field 'tvAvailableBalance'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.iv_freeze_balance, "field 'ivFreezeBalance' and method 'onViewClicked'");
        withdrawalFragment.ivFreezeBalance = (ImageView) butterknife.internal.c.a(c10, R.id.iv_freeze_balance, "field 'ivFreezeBalance'", ImageView.class);
        this.f26025c = c10;
        c10.setOnClickListener(new a(withdrawalFragment));
        withdrawalFragment.tvFreezeBalance = (TextView) butterknife.internal.c.d(view, R.id.tv_freeze_balance, "field 'tvFreezeBalance'", TextView.class);
        withdrawalFragment.llFreezeTip = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_freeze_tip, "field 'llFreezeTip'", LinearLayout.class);
        withdrawalFragment.tvWithdrawalOf = (TextView) butterknife.internal.c.d(view, R.id.tv_withdrawal_of, "field 'tvWithdrawalOf'", TextView.class);
        withdrawalFragment.llFreeze = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_freeze, "field 'llFreeze'", LinearLayout.class);
        withdrawalFragment.tvFreezeJia = (TextView) butterknife.internal.c.d(view, R.id.tv_freeze_jia, "field 'tvFreezeJia'", TextView.class);
        withdrawalFragment.tvFreezeTip = (TextView) butterknife.internal.c.d(view, R.id.tv_freeze_tip, "field 'tvFreezeTip'", TextView.class);
        withdrawalFragment.llBottom = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_bottom, "field 'llBottom'", LinearLayout.class);
        withdrawalFragment.titleBar = (ImageView) butterknife.internal.c.d(view, R.id.iv_title_bar, "field 'titleBar'", ImageView.class);
        View c11 = butterknife.internal.c.c(view, R.id.iv_f_help, "method 'onClick'");
        this.f26026d = c11;
        c11.setOnClickListener(new b(withdrawalFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WithdrawalFragment withdrawalFragment = this.f26024b;
        if (withdrawalFragment != null) {
            this.f26024b = null;
            withdrawalFragment.btnDiamond = null;
            withdrawalFragment.btnMoney = null;
            withdrawalFragment.tvIntro = null;
            withdrawalFragment.scrollView = null;
            withdrawalFragment.llFreezeLayout = null;
            withdrawalFragment.tvFcontunt1 = null;
            withdrawalFragment.tvAvailableBalance = null;
            withdrawalFragment.ivFreezeBalance = null;
            withdrawalFragment.tvFreezeBalance = null;
            withdrawalFragment.llFreezeTip = null;
            withdrawalFragment.tvWithdrawalOf = null;
            withdrawalFragment.llFreeze = null;
            withdrawalFragment.tvFreezeJia = null;
            withdrawalFragment.tvFreezeTip = null;
            withdrawalFragment.llBottom = null;
            withdrawalFragment.titleBar = null;
            this.f26025c.setOnClickListener(null);
            this.f26025c = null;
            this.f26026d.setOnClickListener(null);
            this.f26026d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
