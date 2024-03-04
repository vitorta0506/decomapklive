package com.guochao.faceshow.mine.view.fragment;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.databinding.DialogRechargeBinding;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0012\u0010\u0014\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R$\u0010\u0003\u001a\u00020\u00048\u0016@\u0016X\u0097.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;", "()V", "viewBinding", "Lcom/guochao/faceshow/databinding/DialogRechargeBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/DialogRechargeBinding;)V", "getRechargeItemBackground", "", "getSelectTextColor", "getStartBuyBackground", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class RechargeBuzzCoinFragment extends RechargeDialog {
    public DialogRechargeBinding viewBinding;

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog
    public int getRechargeItemBackground() {
        return R.drawable.bg_item_recharge_selector_page;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog
    public int getSelectTextColor() {
        return ContextCompat.getColor(GCApplication.app(), R.color.white);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog
    public int getStartBuyBackground() {
        return R.drawable.bg_first_recharge_iknow_page;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog
    @NotNull
    public DialogRechargeBinding getViewBinding() {
        DialogRechargeBinding dialogRechargeBinding = this.viewBinding;
        if (dialogRechargeBinding != null) {
            return dialogRechargeBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getViewBinding().bgView.setVisibility(8);
        LinearLayout linearLayout = getViewBinding().contentArea;
        linearLayout.setBackgroundResource(R.color.white);
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        ((FrameLayout.LayoutParams) layoutParams).gravity = 48;
        getViewBinding().rechargeHeaderTitle.setVisibility(8);
        ViewGroup.LayoutParams layoutParams2 = getViewBinding().recyclerView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
        marginLayoutParams.setMarginStart(DensityUtil.dp2px(0.0f));
        marginLayoutParams.setMarginEnd(DensityUtil.dp2px(0.0f));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog, com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* bridge */ /* synthetic */ void onConsumeResponse() {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.a(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(false);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog, p9.a.e
    public /* bridge */ /* synthetic */ void onCrystalsChanged(int i9) {
        p9.b.a(this, i9);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog, com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* bridge */ /* synthetic */ void onPayError(Throwable th2) {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.b(this, th2);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog, com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    @Deprecated
    public /* bridge */ /* synthetic */ void onPayResponse() {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.c(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog, com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* bridge */ /* synthetic */ void onSubscribeFailed() {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.d(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog, com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* bridge */ /* synthetic */ void onSubscribeSuccess() {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.e(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog
    public void setViewBinding(@NotNull DialogRechargeBinding dialogRechargeBinding) {
        Intrinsics.checkNotNullParameter(dialogRechargeBinding, "<set-?>");
        this.viewBinding = dialogRechargeBinding;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog, com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* bridge */ /* synthetic */ void startSubscribe() {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.f(this);
    }
}
