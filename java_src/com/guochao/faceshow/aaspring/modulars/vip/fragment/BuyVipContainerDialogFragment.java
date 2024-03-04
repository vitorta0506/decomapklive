package com.guochao.faceshow.aaspring.modulars.vip.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.dialog.FaceCastDialog;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.utils.listener.OnBackButtonPressedHandler;
import com.guochao.faceshow.aaspring.views.VipSwitcherView;
import com.guochao.faceshow.systemassistant.act.SystemAssistantAct;
import com.guochao.faceshow.systemassistant.data.AssistantUserInfo;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.views.e;
/* loaded from: classes3.dex */
public class BuyVipContainerDialogFragment extends BaseDialogFragment implements OnBackButtonPressedHandler {

    /* renamed from: a  reason: collision with root package name */
    private int f23350a;

    /* renamed from: b  reason: collision with root package name */
    BuyVipGuideParentFragment f23351b;
    @BindView
    public View bgTitleLay;

    /* renamed from: c  reason: collision with root package name */
    Runnable f23352c = new b();

    /* renamed from: d  reason: collision with root package name */
    private boolean f23353d;

    /* renamed from: e  reason: collision with root package name */
    private d f23354e;
    @BindView
    View mViewClose;
    @BindView
    VipSwitcherView mVipSwitcherView;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BuyVipContainerDialogFragment.this.mVipSwitcherView.b(1, 0.0f, 0);
            BuyVipContainerDialogFragment.this.mVipSwitcherView.setCurrentItem(1);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = BuyVipContainerDialogFragment.this.mViewClose;
            if (view != null) {
                view.setVisibility(0);
                BuyVipContainerDialogFragment.this.mViewClose.setAlpha(0.0f);
                BuyVipContainerDialogFragment.this.mViewClose.animate().alpha(1.0f).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements e.a {
        c() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                BuyVipContainerDialogFragment.this.dismissAllowingStateLoss();
                dialog.dismiss();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void onDismiss();
    }

    public static BuyVipContainerDialogFragment P1(int i9, FragmentManager fragmentManager) {
        BuyVipContainerDialogFragment buyVipContainerDialogFragment = new BuyVipContainerDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("from", i9);
        buyVipContainerDialogFragment.setArguments(bundle);
        buyVipContainerDialogFragment.show(fragmentManager, "buy_vip_dialog");
        return buyVipContainerDialogFragment;
    }

    public void Q1() {
        super.dismissAllowingStateLoss();
    }

    @OnClick
    public void close(View view) {
        e alert = alert(getString(R.string.vip_mall_cancel_buy_tips), null, new c(), false);
        ((TextView) alert.findViewById(R.id.common_dialog_title)).setMaxLines(Integer.MAX_VALUE);
        alert.d(Color.parseColor("#888888"));
        alert.m(Color.parseColor("#F94A8C"));
        alert.c(getString(R.string.vip_mall_think_again));
        alert.e(getString(R.string.vip_mall_give_up));
        alert.n(true);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        if (!this.f23351b.W1(this)) {
            super.dismissAllowingStateLoss();
        } else {
            this.f23353d = true;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_buy_vip_container;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f23351b = BuyVipGuideParentFragment.X1(1, this.f23350a);
        getChildFragmentManager().beginTransaction().replace(R.id.buy_vip_view, this.f23351b).commitAllowingStateLoss();
        this.mVipSwitcherView.c(this.f23351b);
        int i9 = this.f23350a;
        if (i9 == 3 || i9 == 4) {
            this.mVipSwitcherView.setVisibility(0);
            this.mVipSwitcherView.post(new a());
        }
        HandlerGetter.getMainHandler().postDelayed(this.f23352c, 3000L);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.utils.listener.OnBackButtonPressedHandler
    public boolean onBack() {
        if (this.f23353d || isDetached() || !isAdded()) {
            return false;
        }
        close(this.mViewClose);
        return true;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f23350a = getArguments().getInt("from");
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        this.mGravity = 80;
        FaceCastDialog createBottDialog = createBottDialog();
        createBottDialog.setCancelable(false);
        createBottDialog.setCanceledOnTouchOutside(false);
        createBottDialog.a(this);
        return createBottDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        HandlerGetter.getMainHandler().removeCallbacks(this.f23352c);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        d dVar = this.f23354e;
        if (dVar != null) {
            dVar.onDismiss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        getActivity().getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        Window window = getDialog().getWindow();
        if (Build.VERSION.SDK_INT > 29) {
            window.addFlags(Integer.MIN_VALUE);
            window.clearFlags(67108864);
        } else {
            window.addFlags(67108864);
        }
        window.setGravity(80);
        window.setLayout(-1, -2);
        window.setBackgroundDrawable(new ColorDrawable(0));
    }

    public void setOnDismissListener(d dVar) {
        this.f23354e = dVar;
    }

    @OnClick
    public void toCustomerService(View view) {
        AssistantUserInfo.OfficialUserData officialUserData = new AssistantUserInfo.OfficialUserData();
        officialUserData.userId = Integer.parseInt(fb.a.c());
        SystemAssistantAct.A0(getActivity(), officialUserData, 2);
    }
}
