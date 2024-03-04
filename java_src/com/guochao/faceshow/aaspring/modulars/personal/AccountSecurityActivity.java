package com.guochao.faceshow.aaspring.modulars.personal;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.CancelAccountActivity;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.CancelWarnDialog;
import com.guochao.faceshow.aaspring.modulars.user.bind.BindPhoneV2Activity;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class AccountSecurityActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f21057a;
    @BindView
    TextView authorizedResult;

    /* renamed from: b  reason: collision with root package name */
    private String f21058b;

    /* renamed from: c  reason: collision with root package name */
    private String f21059c;

    /* renamed from: d  reason: collision with root package name */
    private String f21060d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f21061e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f21062f;
    @BindView
    RelativeLayout flBg;

    /* renamed from: g  reason: collision with root package name */
    private boolean f21063g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f21064h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f21065i;
    @BindView
    ImageView ivMobileMore;
    @BindView
    ImageView ivMobileWaring;
    @BindView
    ImageView ivMore;
    @BindView
    ImageView ivTitlebg;
    @BindView
    TextView realNameAuthentication;
    @BindView
    RelativeLayout rlChangeLoginPassword;
    @BindView
    RelativeLayout rlChangePaymentPassword;
    @BindView
    RelativeLayout rlEmail;
    @BindView
    RelativeLayout rlPhone;
    @BindView
    RelativeLayout rlRealNameAuthentication;
    @BindView
    TextView tvChange;
    @BindView
    TextView tvEmail;
    @BindView
    TextView tvLoginPwd;
    @BindView
    TextView tvMobile;
    @BindView
    TextView tvMobileChange;
    @BindView
    TextView tvPlayPwd;
    @BindView
    TextView tvSafetyLevel;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e0() {
        CancelAccountActivity.s0(getActivity(), -1);
    }

    private void g0() {
        if (BaseConfig.isChinese()) {
            this.f21064h = i.u().s().getIsCertication() == 1;
            b.b(getActivity(), this.rlEmail, this.rlRealNameAuthentication, this.realNameAuthentication, this.authorizedResult, Boolean.valueOf(this.f21064h));
            return;
        }
        this.rlEmail.setVisibility(0);
        this.rlRealNameAuthentication.setVisibility(8);
    }

    private void i0() {
        if (this.f21063g) {
            this.tvEmail.setVisibility(0);
            this.tvChange.setVisibility(0);
            this.ivMore.setVisibility(8);
            this.tvEmail.setText(this.f21057a);
            this.rlEmail.setEnabled(false);
            this.tvEmail.setText(StringUtils.setEncryptionEmail(this.f21057a));
        } else {
            this.tvEmail.setVisibility(8);
            this.tvChange.setVisibility(8);
            this.ivMore.setVisibility(0);
        }
        if (this.f21062f) {
            this.tvMobile.setVisibility(0);
            this.tvMobileChange.setVisibility(0);
            this.ivMobileMore.setVisibility(8);
            this.ivMobileWaring.setVisibility(8);
            this.tvMobile.setText(StringUtils.setEncryptionMobile(this.f21058b));
            this.rlPhone.setEnabled(false);
        } else {
            this.tvMobile.setVisibility(8);
            this.tvMobileChange.setVisibility(8);
            this.ivMobileMore.setVisibility(0);
            this.ivMobileWaring.setVisibility(0);
        }
        this.tvLoginPwd.setText(getString(this.f21065i ? R.string.change_login_password : R.string.set_login_password));
        this.tvPlayPwd.setText(getString(this.f21061e ? R.string.change_payment_password : R.string.set_setpayment_password));
    }

    private void k0() {
        boolean z10 = this.f21062f;
        if (z10 && this.f21063g && this.f21061e && this.f21065i) {
            this.flBg.setBackgroundResource(R.drawable.zhanghuanquan_jigao);
            this.tvSafetyLevel.setText(R.string.security_level_jigao);
        } else if (z10 && this.f21063g) {
            this.flBg.setBackgroundResource(R.drawable.zhanghuanquan_gao);
            this.tvSafetyLevel.setText(R.string.security_level_gao);
        } else if (!z10 && !this.f21063g) {
            this.flBg.setBackgroundResource(R.drawable.zhanghuanquan_jidi);
            this.tvSafetyLevel.setText(R.string.the_safety_level_is_extremely_low);
        } else {
            this.flBg.setBackgroundResource(R.drawable.zhanghuanquan_di);
            this.tvSafetyLevel.setText(R.string.security_level_di);
        }
        i0();
    }

    public void d0() {
        this.f21058b = SpUtils.getStr(this, "phone");
        this.f21057a = SpUtils.getStr(this, "email");
        this.f21060d = SpUtils.getStr(this, Contants.USER_PWD);
        this.f21059c = SpUtils.getStr(this, Contants.payPassword);
        boolean z10 = true;
        this.f21062f = !TextUtils.isEmpty(this.f21058b);
        this.f21063g = !TextUtils.isEmpty(this.f21057a);
        this.f21061e = !TextUtils.isEmpty(this.f21059c) && "1".equals(this.f21059c);
        this.f21065i = (TextUtils.isEmpty(this.f21060d) || !"1".equals(this.f21060d)) ? false : false;
        g0();
        k0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_account_security_new;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.setting_account_safe);
        setLeftBackIcon(R.drawable.icon_left_back_sign_center);
        TitleBackgroundView titleBackgroundView = (TitleBackgroundView) findViewById(R.id.float_title_back);
        titleBackgroundView.setBackgroundResource(R.color.transparent);
        titleBackgroundView.setBottomEnable(false);
        d0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        d0();
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.rl_change_login_password /* 2131364281 */:
                if (this.f21065i) {
                    ChangeLoginOrPayPasswordActivity.g0(getActivity(), 0);
                    return;
                } else if (!this.f21062f && !this.f21063g) {
                    startActivity(PhoneOrEmailSetLoginPasswordActivity.class);
                    return;
                } else {
                    SetLoginPasswordActivity.i0(getActivity(), 0);
                    return;
                }
            case R.id.rl_change_payment_password /* 2131364282 */:
                if (this.f21061e) {
                    ChangeLoginOrPayPasswordActivity.g0(getActivity(), 1);
                    return;
                } else if (this.f21062f) {
                    SetLoginPasswordActivity.i0(getActivity(), 1);
                    return;
                } else {
                    startActivity(BindPhoneToSetPayPasswordActivity.class);
                    return;
                }
            case R.id.rl_email /* 2131364286 */:
                BindEmailV2Activity.k0(getActivity(), 0, true ^ this.f21065i);
                return;
            case R.id.rl_phone /* 2131364290 */:
                BindPhoneV2Activity.t0(this, 0, !this.f21065i);
                return;
            case R.id.rl_real_name_authentication /* 2131364293 */:
                b.i(getActivity(), Boolean.valueOf(this.f21064h));
                return;
            case R.id.rl_unreg_account /* 2131364301 */:
                CancelWarnDialog.T1(getSupportFragmentManager()).setOnConfirmClickListener(new CancelWarnDialog.a() { // from class: com.guochao.faceshow.aaspring.modulars.personal.a
                    @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.CancelWarnDialog.a
                    public final void onConfirm() {
                        AccountSecurityActivity.this.e0();
                    }
                });
                return;
            case R.id.tv_change /* 2131364952 */:
                BindEmailV2Activity.k0(getActivity(), 1, !this.f21065i);
                return;
            case R.id.tv_mobile_change /* 2131365056 */:
                BindPhoneV2Activity.t0(this, 1, !this.f21065i);
                return;
            default:
                return;
        }
    }
}
