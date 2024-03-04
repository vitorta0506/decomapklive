package com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.databinding.LiveFirstRechargeCloseTipBinding;
import com.guochao.faceshow.utils.TimeUtil;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 !2\u00020\u0001:\u0002!\"B\u0007¢\u0006\u0004\b \u0010\u0015J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0006\u0010\u000b\u001a\u00020\u0004J\b\u0010\f\u001a\u00020\u0004H\u0016R(\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u000e\u0010\u000f\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R$\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "Landroid/app/Dialog;", "onCreateDialog", "Landroid/view/View;", "root", "initView", "refreshText", "onDestroyView", "Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;)V", "getViewBinding$annotations", "()V", "Lcom/guochao/faceshow/views/g;", "mCountDownTimerUtil", "Lcom/guochao/faceshow/views/g;", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;", "onConfirmListener", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;", "getOnConfirmListener", "()Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;", "setOnConfirmListener", "(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;)V", "<init>", "Companion", "OnConfirmListener", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class LiveFirstRechargeCloseTip extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final com.guochao.faceshow.views.g mCountDownTimerUtil = new com.guochao.faceshow.views.g(2147483647L) { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.LiveFirstRechargeCloseTip$mCountDownTimerUtil$1
        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            if (isCancel() || LiveFirstRechargeCloseTip.this.isDetached() || !LiveFirstRechargeCloseTip.this.isAdded()) {
                return;
            }
            LiveFirstRechargeCloseTip.this.refreshText();
        }
    };
    @Nullable
    private OnConfirmListener onConfirmListener;
    public LiveFirstRechargeCloseTipBinding viewBinding;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$Companion;", "", "()V", "showDialog", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;", "fm", "Landroidx/fragment/app/FragmentManager;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final LiveFirstRechargeCloseTip showDialog(@NotNull FragmentManager fm) {
            Intrinsics.checkNotNullParameter(fm, "fm");
            LiveFirstRechargeCloseTip liveFirstRechargeCloseTip = new LiveFirstRechargeCloseTip();
            liveFirstRechargeCloseTip.show(fm, LiveFirstRechargeCloseTip.class.getSimpleName());
            return liveFirstRechargeCloseTip;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;", "", "onConfirm", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnConfirmListener {
        void onConfirm();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m422initView$lambda0(LiveFirstRechargeCloseTip this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m423initView$lambda1(LiveFirstRechargeCloseTip this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OnConfirmListener onConfirmListener = this$0.onConfirmListener;
        if (onConfirmListener != null) {
            onConfirmListener.onConfirm();
        }
        this$0.dismissAllowingStateLoss();
    }

    @JvmStatic
    @NotNull
    public static final LiveFirstRechargeCloseTip showDialog(@NotNull FragmentManager fragmentManager) {
        return Companion.showDialog(fragmentManager);
    }

    @Nullable
    public final OnConfirmListener getOnConfirmListener() {
        return this.onConfirmListener;
    }

    @NotNull
    public final LiveFirstRechargeCloseTipBinding getViewBinding() {
        LiveFirstRechargeCloseTipBinding liveFirstRechargeCloseTipBinding = this.viewBinding;
        if (liveFirstRechargeCloseTipBinding != null) {
            return liveFirstRechargeCloseTipBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        getViewBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveFirstRechargeCloseTip.m422initView$lambda0(LiveFirstRechargeCloseTip.this, view);
            }
        });
        getViewBinding().tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveFirstRechargeCloseTip.m423initView$lambda1(LiveFirstRechargeCloseTip.this, view);
            }
        });
        refreshText();
        this.mCountDownTimerUtil.start();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        AppCompatDialog createCenterDialog = createCenterDialog();
        Window window = createCenterDialog.getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes != null) {
            attributes.width = -1;
        }
        if (window != null) {
            window.setAttributes(attributes);
        }
        return createCenterDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mCountDownTimerUtil.cancel();
    }

    public final void refreshText() {
        long lastLoginTime = ((86400000 + FirstRechargeDownTimeUtils.INSTANCE.getLastLoginTime()) - System.currentTimeMillis()) - com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff();
        if (lastLoginTime < 0) {
            TextView textView = getViewBinding().tvContent;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String string = getString(R.string.first_recharge_close_tip_content);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.first…charge_close_tip_content)");
            String format = String.format(string, Arrays.copyOf(new Object[]{TimeUtil.timeToString(0L, true)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            textView.setText(format);
            return;
        }
        TextView textView2 = getViewBinding().tvContent;
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
        String string2 = getString(R.string.first_recharge_close_tip_content);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.first…charge_close_tip_content)");
        String format2 = String.format(string2, Arrays.copyOf(new Object[]{TimeUtil.timeToString(lastLoginTime, true)}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
        textView2.setText(format2);
    }

    public final void setOnConfirmListener(@Nullable OnConfirmListener onConfirmListener) {
        this.onConfirmListener = onConfirmListener;
    }

    public final void setViewBinding(@NotNull LiveFirstRechargeCloseTipBinding liveFirstRechargeCloseTipBinding) {
        Intrinsics.checkNotNullParameter(liveFirstRechargeCloseTipBinding, "<set-?>");
        this.viewBinding = liveFirstRechargeCloseTipBinding;
    }
}
