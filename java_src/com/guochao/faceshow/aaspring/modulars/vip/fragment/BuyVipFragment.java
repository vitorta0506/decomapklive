package com.guochao.faceshow.aaspring.modulars.vip.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.SubSkuDetailsBean;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import com.guochao.faceshow.aaspring.modulars.vip.fragment.BaseBuyVipFragment;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.views.e;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import y7.r;
/* loaded from: classes3.dex */
public class BuyVipFragment extends BaseBuyVipFragment {

    /* renamed from: l  reason: collision with root package name */
    List<SubSkuDetailsBean> f23365l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    boolean f23366m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements e.a {
        a() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                String vipSign = b8.e.g().c().getUserVipMsg().getVipSign();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(NotifyType.VIBRATE);
                sb2.append(d.e0(vipSign == null ? d.f17930w : vipSign));
                String sb3 = sb2.toString();
                BaseBuyVipFragment.h hVar = BuyVipFragment.this.f23326i;
                if (hVar != null) {
                    hVar.B1(vipSign, sb3);
                }
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    public static BuyVipFragment b2(int i9, int i10, int i11, int i12) {
        BuyVipFragment buyVipFragment = new BuyVipFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("key", i9);
        bundle.putInt("mode", i10);
        bundle.putInt("pos", i12);
        bundle.putInt("from", i11);
        buyVipFragment.setArguments(bundle);
        return buyVipFragment;
    }

    private boolean c2() {
        return b8.e.g().c().getUserVipMsg().getPlatform() == 1;
    }

    private void e2(View view) {
        if (getContext() != null && DisableDoubleClickUtils.canClick(view)) {
            if (c2()) {
                ToastUtils.showToast(getContext(), BaseApplication.getInstance().getString(R.string.vip_mall_up_level_old_account));
            } else if (this.f23365l.isEmpty()) {
                ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.google_pay_error);
            } else {
                EventTrackingUtils.getInstance().track("buy_svip_btn_click");
                e eVar = new e(getContext(), new a());
                eVar.f(getContext().getString(R.string.vip_mall_level_up_desc));
                eVar.k(getContext().getString(R.string.f16064ok));
                eVar.j();
                eVar.show();
            }
        }
    }

    public void a2(boolean z10) {
        this.f23366m = z10;
    }

    public void d2(List<SubSkuDetailsBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        W1(true);
        this.f23365l = list;
        for (int i9 = 0; i9 < list.size(); i9++) {
            SubSkuDetailsBean subSkuDetailsBean = list.get(i9);
            if (i9 == 0) {
                this.f23321d.a(subSkuDetailsBean, 0, this.f23328k, this.f23323f);
            } else if (i9 == 1) {
                this.f23320c.a(subSkuDetailsBean, 1, this.f23328k, this.f23323f);
            } else if (i9 == 2) {
                this.f23322e.a(subSkuDetailsBean, 2, this.f23328k, this.f23323f);
            }
            if (b8.e.g().c().getVipLevel() == 0) {
                this.mViewNextBtn.setText(getString(R.string.setting_payment_password_next));
            }
        }
    }

    @OnClick
    public void next(View view) {
        if (this.f23366m) {
            ToastUtils.debugToast(getContext(), "(仅测试) 正在请求个人中心接口，暂不可点击");
            return;
        }
        int vipLevel = b8.e.g().c().getVipLevel();
        if (this.f23323f == 2 && vipLevel == 1) {
            e2(view);
        } else if (this.f23365l.isEmpty()) {
            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.google_pay_error);
        } else if (this.f23328k >= this.f23365l.size()) {
            BaseApplication baseApplication = BaseApplication.getInstance();
            ToastUtils.debugToast(baseApplication, "(仅测试)谷歌后台，vip只配了" + this.f23365l.size() + "个订阅商品");
        } else {
            List<SubSkuDetailsBean> list = this.f23365l;
            if (list.get(Math.min(this.f23328k, list.size() - 1)).isDisable()) {
                ToastUtils.showToast(getContext(), BaseApplication.getInstance().getString(R.string.vip_mall_sub_out_limit));
            } else if (DisableDoubleClickUtils.canClick(view) && this.f23326i != null) {
                try {
                    List<SubSkuDetailsBean> list2 = this.f23365l;
                    this.f23326i.b(view, list2.get(Math.min(this.f23328k, list2.size() - 1)).getSkuDetails().f(), this.f23323f);
                } catch (Exception unused) {
                }
            }
        }
    }

    @OnClick
    public void onClick(View view) {
        if (this.f23366m) {
            ToastUtils.debugToast(getContext(), "(仅测试) 正在消耗中，暂不可点击");
        } else {
            e2(view);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void updateSubState(r rVar) {
        if (rVar.a() == 0) {
            this.mViewNext.setEnabled(true);
            this.mViewNextBtn.setText(getString(R.string.setting_payment_password_next));
            this.mViewNextDisableHint.setVisibility(8);
            this.mViewNextBtn.setVisibility(0);
            return;
        }
        this.mViewNext.setEnabled(false);
        this.mViewNextDisableHint.setVisibility(0);
        this.mViewNextBtn.setVisibility(8);
        if (rVar.a() == 1) {
            int i9 = this.f23323f;
            if (i9 == 1) {
                this.mTextViewNextHint1.setText(getString(R.string.vip_mall_has_been_opend));
                this.mLevelUpToVVipView.setVisibility(0);
            } else if (i9 == 2) {
                this.mViewNext.setEnabled(true);
                this.mViewNextBtn.setText(getString(R.string.vip_mall_level_up_to_vvip));
                this.mViewNextDisableHint.setVisibility(8);
                this.mViewNextBtn.setVisibility(0);
                this.mLevelUpToVVipView.setVisibility(8);
            }
        } else if (rVar.a() == 2) {
            this.mTextViewNextHint1.setText(getString(R.string.vip_mall_has_been_opend_vvip));
            this.mLevelUpToVVipView.setVisibility(8);
        }
        this.mTextViewNextHint2.setText(getString(R.string.period_of_validity, EditTextUtils.convertNormalNumberToArabicNumber(new SimpleDateFormat("M/d/yyyy", Locale.US).format(new Date(b8.e.g().c().getUserVipMsg().getThirdEndTime())))));
    }
}
