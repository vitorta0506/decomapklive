package com.guochao.faceshow.signin.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.modulars.live.model.LotteryResult;
import com.guochao.faceshow.signin.R$string;
import com.guochao.faceshow.signin.databinding.FragmentLotteryResultBinding;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0012\u0010\u0016\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u000b\u0010\u0002\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "currentCount", "", "getCurrentCount", "()I", "setCurrentCount", "(I)V", "viewBinding", "Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;", "setViewBinding", "(Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "Companion", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LotteryResultDialog extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private int currentCount;
    public FragmentLotteryResultBinding viewBinding;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;", "", "()V", "showDialog", "Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "data", "Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final LotteryResultDialog showDialog(@NotNull FragmentManager fragmentManager, @NotNull LotteryResult data) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            Intrinsics.checkNotNullParameter(data, "data");
            LotteryResultDialog lotteryResultDialog = new LotteryResultDialog();
            Bundle bundle = new Bundle();
            bundle.putParcelable("data", data);
            lotteryResultDialog.setArguments(bundle);
            lotteryResultDialog.show(fragmentManager, LotteryResultDialog.class.getSimpleName());
            return lotteryResultDialog;
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m751initView$lambda1(LotteryResultDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m752initView$lambda2(View view) {
    }

    @JvmStatic
    @NotNull
    public static final LotteryResultDialog showDialog(@NotNull FragmentManager fragmentManager, @NotNull LotteryResult lotteryResult) {
        return Companion.showDialog(fragmentManager, lotteryResult);
    }

    public final int getCurrentCount() {
        return this.currentCount;
    }

    @NotNull
    public final FragmentLotteryResultBinding getViewBinding() {
        FragmentLotteryResultBinding fragmentLotteryResultBinding = this.viewBinding;
        if (fragmentLotteryResultBinding != null) {
            return fragmentLotteryResultBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        String replace$default;
        CharSequence trim;
        String replace$default2;
        String replace$default3;
        String replace$default4;
        LotteryResult.LotteryResultItem newUserGiftBag;
        LotteryResult.LotteryResultItem newUserGiftBag2;
        Intrinsics.checkNotNullParameter(root, "root");
        Bundle arguments = getArguments();
        Object obj = null;
        LotteryResult lotteryResult = arguments != null ? (LotteryResult) arguments.getParcelable("data") : null;
        String rewardDiamond = (lotteryResult == null || (newUserGiftBag2 = lotteryResult.getNewUserGiftBag()) == null) ? null : newUserGiftBag2.getRewardDiamond();
        TextView textView = getViewBinding().lotteryContent.rewardDiamond;
        String string = getString(R$string.lottery_free_diamonds);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.lottery_free_diamonds)");
        replace$default = StringsKt__StringsJVMKt.replace$default(string, "x %s", "", false, 4, (Object) null);
        trim = StringsKt__StringsKt.trim((CharSequence) replace$default);
        textView.setText(trim.toString());
        if (rewardDiamond != null) {
            TextView textView2 = getViewBinding().lotteryContent.rewardDiamondCount;
            textView2.setText('x' + rewardDiamond);
        }
        TextView textView3 = getViewBinding().lotteryContent.avatarDays;
        StringBuilder sb2 = new StringBuilder();
        sb2.append('x');
        int i9 = R$string.f_dress_days;
        sb2.append(getString(i9, 3));
        replace$default2 = StringsKt__StringsJVMKt.replace$default(sb2.toString(), " ", "", false, 4, (Object) null);
        textView3.setText(replace$default2);
        TextView textView4 = getViewBinding().lotteryContent.newDays;
        replace$default3 = StringsKt__StringsJVMKt.replace$default('x' + getString(i9, 3), " ", "", false, 4, (Object) null);
        textView4.setText(replace$default3);
        TextView textView5 = getViewBinding().lotteryContent.speedDays;
        replace$default4 = StringsKt__StringsJVMKt.replace$default('x' + getString(i9, 3), " ", "", false, 4, (Object) null);
        textView5.setText(replace$default4);
        TextView textView6 = getViewBinding().lotteryContent.exploreDays;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(getString(R$string.signin_perday_result_fifth));
        sb3.append(" x");
        if (lotteryResult != null && (newUserGiftBag = lotteryResult.getNewUserGiftBag()) != null) {
            obj = newUserGiftBag.getCharmValues();
        }
        if (obj == null) {
            obj = 200;
        }
        sb3.append(obj);
        textView6.setText(sb3.toString());
        getViewBinding().tvIKnow.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LotteryResultDialog.m751initView$lambda1(LotteryResultDialog.this, view);
            }
        });
        getViewBinding().bgView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LotteryResultDialog.m752initView$lambda2(view);
            }
        });
        getViewBinding().tvIKnow.setText(getString(R$string.lottery_i_know));
        getViewBinding().tvIKnow.setEnabled(true);
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

    public final void setCurrentCount(int i9) {
        this.currentCount = i9;
    }

    public final void setViewBinding(@NotNull FragmentLotteryResultBinding fragmentLotteryResultBinding) {
        Intrinsics.checkNotNullParameter(fragmentLotteryResultBinding, "<set-?>");
        this.viewBinding = fragmentLotteryResultBinding;
    }
}
