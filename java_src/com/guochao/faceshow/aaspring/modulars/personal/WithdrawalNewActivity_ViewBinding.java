package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class WithdrawalNewActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private WithdrawalNewActivity f21420c;

    /* renamed from: d  reason: collision with root package name */
    private View f21421d;

    /* renamed from: e  reason: collision with root package name */
    private View f21422e;

    /* renamed from: f  reason: collision with root package name */
    private View f21423f;

    /* renamed from: g  reason: collision with root package name */
    private View f21424g;

    /* renamed from: h  reason: collision with root package name */
    private View f21425h;

    /* renamed from: i  reason: collision with root package name */
    private View f21426i;

    /* renamed from: j  reason: collision with root package name */
    private View f21427j;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalNewActivity f21428a;

        a(WithdrawalNewActivity withdrawalNewActivity) {
            this.f21428a = withdrawalNewActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21428a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalNewActivity f21430a;

        b(WithdrawalNewActivity withdrawalNewActivity) {
            this.f21430a = withdrawalNewActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21430a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalNewActivity f21432a;

        c(WithdrawalNewActivity withdrawalNewActivity) {
            this.f21432a = withdrawalNewActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21432a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalNewActivity f21434a;

        d(WithdrawalNewActivity withdrawalNewActivity) {
            this.f21434a = withdrawalNewActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21434a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalNewActivity f21436a;

        e(WithdrawalNewActivity withdrawalNewActivity) {
            this.f21436a = withdrawalNewActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21436a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalNewActivity f21438a;

        f(WithdrawalNewActivity withdrawalNewActivity) {
            this.f21438a = withdrawalNewActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21438a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class g extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalNewActivity f21440a;

        g(WithdrawalNewActivity withdrawalNewActivity) {
            this.f21440a = withdrawalNewActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21440a.onViewClicked(view);
        }
    }

    @UiThread
    public WithdrawalNewActivity_ViewBinding(WithdrawalNewActivity withdrawalNewActivity, View view) {
        super(withdrawalNewActivity, view);
        this.f21420c = withdrawalNewActivity;
        View c10 = butterknife.internal.c.c(view, R.id.fl_select_withdrawal_way, "field 'flSelectWithdrawalWay' and method 'onViewClicked'");
        withdrawalNewActivity.flSelectWithdrawalWay = (FrameLayout) butterknife.internal.c.a(c10, R.id.fl_select_withdrawal_way, "field 'flSelectWithdrawalWay'", FrameLayout.class);
        this.f21421d = c10;
        c10.setOnClickListener(new a(withdrawalNewActivity));
        withdrawalNewActivity.tvAmount = (TextView) butterknife.internal.c.d(view, R.id.tvAmount, "field 'tvAmount'", TextView.class);
        View c11 = butterknife.internal.c.c(view, R.id.btnWithdrawal, "field 'btnWithdrawal' and method 'onViewClicked'");
        withdrawalNewActivity.btnWithdrawal = c11;
        this.f21422e = c11;
        c11.setOnClickListener(new b(withdrawalNewActivity));
        withdrawalNewActivity.tvWithdrawalWay = (TextView) butterknife.internal.c.d(view, R.id.tv_withdrawal_way, "field 'tvWithdrawalWay'", TextView.class);
        withdrawalNewActivity.etAliPayAccount = (EditText) butterknife.internal.c.d(view, R.id.et_ali_pay_account, "field 'etAliPayAccount'", EditText.class);
        withdrawalNewActivity.flAliPayAccount = (FrameLayout) butterknife.internal.c.d(view, R.id.fl_ali_pay_account, "field 'flAliPayAccount'", FrameLayout.class);
        withdrawalNewActivity.etAliPayName = (EditText) butterknife.internal.c.d(view, R.id.et_ali_pay_name, "field 'etAliPayName'", EditText.class);
        withdrawalNewActivity.flAliPayName = (FrameLayout) butterknife.internal.c.d(view, R.id.fl_ali_pay_name, "field 'flAliPayName'", FrameLayout.class);
        withdrawalNewActivity.llAliPayLayout = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_ali_pay_layout, "field 'llAliPayLayout'", LinearLayout.class);
        View c12 = butterknife.internal.c.c(view, R.id.et_bank_card_account, "field 'etBankCardAccount' and method 'onViewClicked'");
        withdrawalNewActivity.etBankCardAccount = (EditText) butterknife.internal.c.a(c12, R.id.et_bank_card_account, "field 'etBankCardAccount'", EditText.class);
        this.f21423f = c12;
        c12.setOnClickListener(new c(withdrawalNewActivity));
        withdrawalNewActivity.flBankCard = (FrameLayout) butterknife.internal.c.d(view, R.id.fl_bank_card, "field 'flBankCard'", FrameLayout.class);
        withdrawalNewActivity.etBankCardAccountHolder = (EditText) butterknife.internal.c.d(view, R.id.et_bank_card_account_holder, "field 'etBankCardAccountHolder'", EditText.class);
        withdrawalNewActivity.flBankCardAccountHolder = (FrameLayout) butterknife.internal.c.d(view, R.id.fl_bank_card_account_holder, "field 'flBankCardAccountHolder'", FrameLayout.class);
        withdrawalNewActivity.ivArrowRight = (ImageView) butterknife.internal.c.d(view, R.id.ivArrowRight, "field 'ivArrowRight'", ImageView.class);
        withdrawalNewActivity.tvBankName = (TextView) butterknife.internal.c.d(view, R.id.tvBankName, "field 'tvBankName'", TextView.class);
        View c13 = butterknife.internal.c.c(view, R.id.rlBankNameLayout, "field 'rlBankNameLayout' and method 'onViewClicked'");
        withdrawalNewActivity.rlBankNameLayout = (RelativeLayout) butterknife.internal.c.a(c13, R.id.rlBankNameLayout, "field 'rlBankNameLayout'", RelativeLayout.class);
        this.f21424g = c13;
        c13.setOnClickListener(new d(withdrawalNewActivity));
        withdrawalNewActivity.etBankCardAddress = (EditText) butterknife.internal.c.d(view, R.id.et_bank_card_address, "field 'etBankCardAddress'", EditText.class);
        withdrawalNewActivity.flBankCardAddress = (FrameLayout) butterknife.internal.c.d(view, R.id.fl_bank_card_address, "field 'flBankCardAddress'", FrameLayout.class);
        withdrawalNewActivity.llBankCardLayout = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_bank_card_layout, "field 'llBankCardLayout'", LinearLayout.class);
        withdrawalNewActivity.etPayPalAccount = (EditText) butterknife.internal.c.d(view, R.id.et_pay_pal_account, "field 'etPayPalAccount'", EditText.class);
        withdrawalNewActivity.etPayPalName = (EditText) butterknife.internal.c.d(view, R.id.et_pay_pal_name, "field 'etPayPalName'", EditText.class);
        withdrawalNewActivity.tvRegionName = (TextView) butterknife.internal.c.d(view, R.id.tv_region_name, "field 'tvRegionName'", TextView.class);
        withdrawalNewActivity.tvRegion = (TextView) butterknife.internal.c.d(view, R.id.tv_region, "field 'tvRegion'", TextView.class);
        View c14 = butterknife.internal.c.c(view, R.id.fl_region, "field 'flRegion' and method 'onViewClicked'");
        withdrawalNewActivity.flRegion = (LinearLayout) butterknife.internal.c.a(c14, R.id.fl_region, "field 'flRegion'", LinearLayout.class);
        this.f21425h = c14;
        c14.setOnClickListener(new e(withdrawalNewActivity));
        withdrawalNewActivity.llPayPalLayout = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_pay_pal_layout, "field 'llPayPalLayout'", LinearLayout.class);
        withdrawalNewActivity.etPayoneerId = (TextView) butterknife.internal.c.d(view, R.id.et_payoneer_id, "field 'etPayoneerId'", TextView.class);
        withdrawalNewActivity.llPayoneerLayout = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_payoneer_layout, "field 'llPayoneerLayout'", LinearLayout.class);
        View c15 = butterknife.internal.c.c(view, R.id.tv_add_payoneer, "field 'tvAddPayoneer' and method 'onViewClicked'");
        withdrawalNewActivity.tvAddPayoneer = (TextView) butterknife.internal.c.a(c15, R.id.tv_add_payoneer, "field 'tvAddPayoneer'", TextView.class);
        this.f21426i = c15;
        c15.setOnClickListener(new f(withdrawalNewActivity));
        withdrawalNewActivity.tvPayoneerTip = (TextView) butterknife.internal.c.d(view, R.id.tv_payoneer_tip, "field 'tvPayoneerTip'", TextView.class);
        withdrawalNewActivity.ivWithdrawalLogo = (ImageView) butterknife.internal.c.d(view, R.id.iv_withdrawal_logo, "field 'ivWithdrawalLogo'", ImageView.class);
        View c16 = butterknife.internal.c.c(view, R.id.ll_payoneer_select, "field 'llPayoneerSelect' and method 'onViewClicked'");
        withdrawalNewActivity.llPayoneerSelect = (LinearLayout) butterknife.internal.c.a(c16, R.id.ll_payoneer_select, "field 'llPayoneerSelect'", LinearLayout.class);
        this.f21427j = c16;
        c16.setOnClickListener(new g(withdrawalNewActivity));
        withdrawalNewActivity.ivPayoneerMore = (ImageView) butterknife.internal.c.d(view, R.id.iv_payoneer_more, "field 'ivPayoneerMore'", ImageView.class);
        withdrawalNewActivity.flPayoneer = (FrameLayout) butterknife.internal.c.d(view, R.id.fl_payoneer, "field 'flPayoneer'", FrameLayout.class);
        withdrawalNewActivity.ivWithdrawalMore = (ImageView) butterknife.internal.c.d(view, R.id.iv_withdrawal_more, "field 'ivWithdrawalMore'", ImageView.class);
        withdrawalNewActivity.llPayoneerv2Layout = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_payoneerv2_layout, "field 'llPayoneerv2Layout'", LinearLayout.class);
        withdrawalNewActivity.etPayoneerAccount = (EditText) butterknife.internal.c.d(view, R.id.et_payoneer_account, "field 'etPayoneerAccount'", EditText.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        WithdrawalNewActivity withdrawalNewActivity = this.f21420c;
        if (withdrawalNewActivity != null) {
            this.f21420c = null;
            withdrawalNewActivity.flSelectWithdrawalWay = null;
            withdrawalNewActivity.tvAmount = null;
            withdrawalNewActivity.btnWithdrawal = null;
            withdrawalNewActivity.tvWithdrawalWay = null;
            withdrawalNewActivity.etAliPayAccount = null;
            withdrawalNewActivity.flAliPayAccount = null;
            withdrawalNewActivity.etAliPayName = null;
            withdrawalNewActivity.flAliPayName = null;
            withdrawalNewActivity.llAliPayLayout = null;
            withdrawalNewActivity.etBankCardAccount = null;
            withdrawalNewActivity.flBankCard = null;
            withdrawalNewActivity.etBankCardAccountHolder = null;
            withdrawalNewActivity.flBankCardAccountHolder = null;
            withdrawalNewActivity.ivArrowRight = null;
            withdrawalNewActivity.tvBankName = null;
            withdrawalNewActivity.rlBankNameLayout = null;
            withdrawalNewActivity.etBankCardAddress = null;
            withdrawalNewActivity.flBankCardAddress = null;
            withdrawalNewActivity.llBankCardLayout = null;
            withdrawalNewActivity.etPayPalAccount = null;
            withdrawalNewActivity.etPayPalName = null;
            withdrawalNewActivity.tvRegionName = null;
            withdrawalNewActivity.tvRegion = null;
            withdrawalNewActivity.flRegion = null;
            withdrawalNewActivity.llPayPalLayout = null;
            withdrawalNewActivity.etPayoneerId = null;
            withdrawalNewActivity.llPayoneerLayout = null;
            withdrawalNewActivity.tvAddPayoneer = null;
            withdrawalNewActivity.tvPayoneerTip = null;
            withdrawalNewActivity.ivWithdrawalLogo = null;
            withdrawalNewActivity.llPayoneerSelect = null;
            withdrawalNewActivity.ivPayoneerMore = null;
            withdrawalNewActivity.flPayoneer = null;
            withdrawalNewActivity.ivWithdrawalMore = null;
            withdrawalNewActivity.llPayoneerv2Layout = null;
            withdrawalNewActivity.etPayoneerAccount = null;
            this.f21421d.setOnClickListener(null);
            this.f21421d = null;
            this.f21422e.setOnClickListener(null);
            this.f21422e = null;
            this.f21423f.setOnClickListener(null);
            this.f21423f = null;
            this.f21424g.setOnClickListener(null);
            this.f21424g = null;
            this.f21425h.setOnClickListener(null);
            this.f21425h = null;
            this.f21426i.setOnClickListener(null);
            this.f21426i = null;
            this.f21427j.setOnClickListener(null);
            this.f21427j = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
