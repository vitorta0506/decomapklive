package com.guochao.faceshow.signin.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.core.content.ContextCompat;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.signin.R$drawable;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
import com.guochao.faceshow.signin.R$mipmap;
import com.guochao.faceshow.signin.R$raw;
import com.guochao.faceshow.signin.R$string;
import com.guochao.faceshow.signin.bean.RewardList;
import com.guochao.faceshow.signin.bean.SignList;
import com.guochao.faceshow.signin.bean.SigninBean;
import com.guochao.faceshow.signin.bean.SigninResponse;
import com.guochao.faceshow.signin.databinding.FragmentSigninBinding;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.guochao.lib_base.R$color;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 C2\u00020\u0001:\u0001CB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020 H\u0002J\b\u0010!\u001a\u0004\u0018\u00010\"J\u001a\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'H\u0014J\u0012\u0010(\u001a\u00020\u00062\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u0012\u0010)\u001a\u00020*2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u0010\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020-H\u0016J\u0010\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020 H\u0002J\u0010\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020 H\u0002J\u0010\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020 H\u0002J\u0010\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020 H\u0002J\u0010\u00106\u001a\u00020\u00062\u0006\u00107\u001a\u00020 H\u0002J\u0010\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020 H\u0002J\u0010\u0010:\u001a\u00020\u00062\u0006\u0010;\u001a\u00020 H\u0002J)\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010\f2\b\u0010@\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0002\u0010AJ\u0010\u0010B\u001a\u00020\u00062\u0006\u0010$\u001a\u00020 H\u0002R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0017\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0019\u0010\u0002\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006D"}, d2 = {"Lcom/guochao/faceshow/signin/dialog/SignInDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "callBack", "Lkotlin/Function1;", "Lcom/guochao/faceshow/signin/bean/SigninResponse;", "", "getCallBack", "()Lkotlin/jvm/functions/Function1;", "setCallBack", "(Lkotlin/jvm/functions/Function1;)V", "signedCount", "", "getSignedCount", "()I", "setSignedCount", "(I)V", "signinBean", "Lcom/guochao/faceshow/signin/bean/SigninBean;", "getSigninBean", "()Lcom/guochao/faceshow/signin/bean/SigninBean;", "setSigninBean", "(Lcom/guochao/faceshow/signin/bean/SigninBean;)V", "viewBinding", "Lcom/guochao/faceshow/signin/databinding/FragmentSigninBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/signin/databinding/FragmentSigninBinding;", "setViewBinding", "(Lcom/guochao/faceshow/signin/databinding/FragmentSigninBinding;)V", "addSvga", "viewGroup", "Landroid/view/ViewGroup;", "getSystemLanguage", "", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "onDismiss", "dialog", "Landroid/content/DialogInterface;", "refreshFifthSelect", "fifthLay", "refreshFirstSelect", "firstLay", "refreshForthSelect", "forthLay", "refreshSecondSelect", "secondLay", "refreshSeventhSelect", "seventhLay", "refreshSixthSelect", "sixthLay", "refreshThirdSelect", "thirdLay", "setImageResponse", "imageView", "Landroid/widget/ImageView;", "prizeType", "rewardImg", "(Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/String;)V", "setSignInResult", "Companion", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SignInDialog extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Function1<? super SigninResponse, Unit> callBack;
    private int signedCount = 4;
    @Nullable
    private SigninBean signinBean;
    public FragmentSigninBinding viewBinding;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/signin/dialog/SignInDialog$Companion;", "", "()V", "showDialog", "Lcom/guochao/faceshow/signin/dialog/SignInDialog;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "signinBean", "Lcom/guochao/faceshow/signin/bean/SigninBean;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @Nullable
        public final SignInDialog showDialog(@NotNull FragmentManager fragmentManager, @NotNull SigninBean signinBean) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            Intrinsics.checkNotNullParameter(signinBean, "signinBean");
            if (SpUtils.getBool(GCApplication.app(), "SignInIgnore", false)) {
                return null;
            }
            SignInDialog signInDialog = new SignInDialog();
            Bundle bundle = new Bundle();
            bundle.putParcelable("SigninBean", signinBean);
            signInDialog.setArguments(bundle);
            signInDialog.show(fragmentManager, SignInDialog.class.getSimpleName());
            return signInDialog;
        }
    }

    private final void addSvga(ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "viewGroup.context");
        SvgaImageViewV2 svgaImageViewV2 = new SvgaImageViewV2(context, null, 2, null);
        viewGroup.addView(svgaImageViewV2, 0, new ViewGroup.LayoutParams(DensityUtil.dp2px(44.0f), DensityUtil.dp2px(44.0f)));
        svgaImageViewV2.playRaw(R$raw.signin_light_small);
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m753initView$lambda0(View view) {
        view.setSelected(!view.isSelected());
        SpUtils.setBool(view.getContext(), "SignInIgnore", view.isSelected());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m754initView$lambda1(SignInDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m755initView$lambda2(SignInDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (DisableDoubleClickUtils.canClick(view)) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), Dispatchers.getMain(), null, new SignInDialog$initView$3$1(this$0, null), 2, null);
        }
    }

    private final void refreshFifthSelect(ViewGroup viewGroup) {
        View childAt = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt2 = ((ViewGroup) childAt).getChildAt(0);
        Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt3 = ((ViewGroup) childAt2).getChildAt(0);
        if (!viewGroup.isSelected()) {
            childAt3.setBackgroundTintList(ContextCompat.getColorStateList(viewGroup.getContext(), R$color.transparent));
        }
        View childAt4 = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt5 = ((ViewGroup) childAt4).getChildAt(0);
        Intrinsics.checkNotNull(childAt5, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt6 = ((ViewGroup) childAt5).getChildAt(1);
        if (!viewGroup.isSelected()) {
            childAt6.setBackgroundTintList(ContextCompat.getColorStateList(viewGroup.getContext(), R$color.transparent));
        }
        if (this.signedCount < 5) {
            viewGroup.getChildAt(1).setVisibility(8);
            viewGroup.getChildAt(2).setVisibility(8);
        } else {
            viewGroup.getChildAt(1).setVisibility(0);
            viewGroup.getChildAt(1).setBackgroundResource(R$drawable.bg_item_signined);
            viewGroup.getChildAt(2).setVisibility(0);
        }
        if (this.signedCount == 4) {
            View childAt7 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt7, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt8 = ((ViewGroup) childAt7).getChildAt(0);
            Intrinsics.checkNotNull(childAt8, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt9 = ((ViewGroup) childAt8).getChildAt(0);
            Intrinsics.checkNotNull(childAt9, "null cannot be cast to non-null type android.view.ViewGroup");
            addSvga((ViewGroup) childAt9);
            View childAt10 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt10, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt11 = ((ViewGroup) childAt10).getChildAt(0);
            Intrinsics.checkNotNull(childAt11, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt12 = ((ViewGroup) childAt11).getChildAt(1);
            Intrinsics.checkNotNull(childAt12, "null cannot be cast to non-null type android.view.ViewGroup");
            addSvga((ViewGroup) childAt12);
            View childAt13 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt13, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt14 = ((ViewGroup) childAt13).getChildAt(1);
            Intrinsics.checkNotNull(childAt14, "null cannot be cast to non-null type android.widget.TextView");
            ViewGroup.LayoutParams layoutParams = ((TextView) childAt14).getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = -DensityUtil.dp2px(0.0f);
        }
    }

    private final void refreshFirstSelect(ViewGroup viewGroup) {
        View childAt = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt2 = ((ViewGroup) childAt).getChildAt(0);
        Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup2 = (ViewGroup) childAt2;
        if (!viewGroup.isEnabled() || !viewGroup.isSelected()) {
            viewGroup2.setBackgroundTintList(ContextCompat.getColorStateList(viewGroup.getContext(), R$color.transparent));
        }
        if (this.signedCount < 1) {
            viewGroup.getChildAt(1).setVisibility(8);
            viewGroup.getChildAt(2).setVisibility(8);
        } else {
            viewGroup.getChildAt(1).setVisibility(0);
            viewGroup.getChildAt(1).setEnabled(false);
            viewGroup.getChildAt(1).setBackgroundResource(R$drawable.bg_item_signined);
            viewGroup.getChildAt(2).setVisibility(0);
        }
        if (this.signedCount == 0) {
            View childAt3 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt3, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt4 = ((ViewGroup) childAt3).getChildAt(0);
            Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.view.ViewGroup");
            addSvga((ViewGroup) childAt4);
            View childAt5 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt5, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt6 = ((ViewGroup) childAt5).getChildAt(1);
            Intrinsics.checkNotNull(childAt6, "null cannot be cast to non-null type android.widget.TextView");
            ViewGroup.LayoutParams layoutParams = ((TextView) childAt6).getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = -DensityUtil.dp2px(0.0f);
        }
    }

    private final void refreshForthSelect(ViewGroup viewGroup) {
        View childAt = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt2 = ((ViewGroup) childAt).getChildAt(0);
        if (!viewGroup.isSelected()) {
            childAt2.setBackgroundTintList(ContextCompat.getColorStateList(viewGroup.getContext(), R$color.transparent));
        }
        if (this.signedCount < 4) {
            viewGroup.getChildAt(1).setVisibility(8);
            viewGroup.getChildAt(2).setVisibility(8);
        } else {
            viewGroup.getChildAt(1).setVisibility(0);
            viewGroup.getChildAt(1).setBackgroundResource(R$drawable.bg_item_signined);
            viewGroup.getChildAt(2).setVisibility(0);
        }
        if (this.signedCount == 3) {
            View childAt3 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt3, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt4 = ((ViewGroup) childAt3).getChildAt(0);
            Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.view.ViewGroup");
            addSvga((ViewGroup) childAt4);
            View childAt5 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt5, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt6 = ((ViewGroup) childAt5).getChildAt(1);
            Intrinsics.checkNotNull(childAt6, "null cannot be cast to non-null type android.widget.TextView");
            ViewGroup.LayoutParams layoutParams = ((TextView) childAt6).getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = -DensityUtil.dp2px(0.0f);
        }
    }

    private final void refreshSecondSelect(ViewGroup viewGroup) {
        View childAt = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt2 = ((ViewGroup) childAt).getChildAt(0);
        Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup2 = (ViewGroup) childAt2;
        if (!viewGroup.isEnabled() || !viewGroup.isSelected()) {
            viewGroup2.setBackgroundTintList(ContextCompat.getColorStateList(viewGroup.getContext(), R$color.transparent));
        }
        if (this.signedCount < 2) {
            viewGroup.getChildAt(1).setVisibility(8);
            viewGroup.getChildAt(2).setVisibility(8);
        } else {
            viewGroup.getChildAt(1).setVisibility(0);
            viewGroup.getChildAt(1).setBackgroundResource(R$drawable.bg_item_signined);
            viewGroup.getChildAt(2).setVisibility(0);
        }
        if (this.signedCount == 1) {
            View childAt3 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt3, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt4 = ((ViewGroup) childAt3).getChildAt(0);
            Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.view.ViewGroup");
            addSvga((ViewGroup) childAt4);
            View childAt5 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt5, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt6 = ((ViewGroup) childAt5).getChildAt(1);
            Intrinsics.checkNotNull(childAt6, "null cannot be cast to non-null type android.widget.TextView");
            ViewGroup.LayoutParams layoutParams = ((TextView) childAt6).getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = -DensityUtil.dp2px(0.0f);
        }
    }

    private final void refreshSeventhSelect(ViewGroup viewGroup) {
        View childAt = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt2 = ((ViewGroup) childAt).getChildAt(0);
        if (!viewGroup.isSelected()) {
            childAt2.setBackgroundTintList(ContextCompat.getColorStateList(viewGroup.getContext(), R$color.transparent));
        }
        if (this.signedCount < 7) {
            viewGroup.getChildAt(1).setVisibility(8);
            viewGroup.getChildAt(2).setVisibility(8);
        } else {
            viewGroup.getChildAt(1).setVisibility(0);
            viewGroup.getChildAt(1).setBackgroundResource(R$drawable.bg_item_signined);
            viewGroup.getChildAt(2).setVisibility(0);
        }
        if (this.signedCount == 6) {
            View childAt3 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt3, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt4 = ((ViewGroup) childAt3).getChildAt(0);
            Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup2 = (ViewGroup) childAt4;
            Context context = viewGroup2.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "viewGroup.context");
            SvgaImageViewV2 svgaImageViewV2 = new SvgaImageViewV2(context, null, 2, null);
            viewGroup2.addView(svgaImageViewV2, 0, new ViewGroup.LayoutParams(DensityUtil.dp2px(52.0f), DensityUtil.dp2px(52.0f)));
            svgaImageViewV2.playRaw(R$raw.signin_light_normal);
        }
    }

    private final void refreshSixthSelect(ViewGroup viewGroup) {
        View childAt = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt2 = ((ViewGroup) childAt).getChildAt(0);
        if (!viewGroup.isSelected()) {
            childAt2.setBackgroundTintList(ContextCompat.getColorStateList(viewGroup.getContext(), R$color.transparent));
        }
        if (this.signedCount < 6) {
            viewGroup.getChildAt(1).setVisibility(8);
            viewGroup.getChildAt(2).setVisibility(8);
        } else {
            viewGroup.getChildAt(1).setVisibility(0);
            viewGroup.getChildAt(1).setBackgroundResource(R$drawable.bg_item_signined);
            viewGroup.getChildAt(2).setVisibility(0);
        }
        if (this.signedCount == 5) {
            View childAt3 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt3, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt4 = ((ViewGroup) childAt3).getChildAt(0);
            Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.view.ViewGroup");
            addSvga((ViewGroup) childAt4);
            View childAt5 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt5, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt6 = ((ViewGroup) childAt5).getChildAt(1);
            Intrinsics.checkNotNull(childAt6, "null cannot be cast to non-null type android.widget.TextView");
            ViewGroup.LayoutParams layoutParams = ((TextView) childAt6).getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = -DensityUtil.dp2px(0.0f);
        }
    }

    private final void refreshThirdSelect(ViewGroup viewGroup) {
        View childAt = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt2 = ((ViewGroup) childAt).getChildAt(0);
        Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt3 = ((ViewGroup) childAt2).getChildAt(0);
        if (!viewGroup.isSelected()) {
            childAt3.setBackgroundTintList(ContextCompat.getColorStateList(viewGroup.getContext(), R$color.transparent));
        }
        View childAt4 = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt5 = ((ViewGroup) childAt4).getChildAt(0);
        Intrinsics.checkNotNull(childAt5, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt6 = ((ViewGroup) childAt5).getChildAt(1);
        if (!viewGroup.isSelected()) {
            childAt6.setBackgroundTintList(ContextCompat.getColorStateList(viewGroup.getContext(), R$color.transparent));
        }
        if (this.signedCount < 3) {
            viewGroup.getChildAt(1).setVisibility(8);
            viewGroup.getChildAt(2).setVisibility(8);
        } else {
            viewGroup.getChildAt(1).setVisibility(0);
            viewGroup.getChildAt(1).setBackgroundResource(R$drawable.bg_item_signined);
            viewGroup.getChildAt(2).setVisibility(0);
        }
        if (this.signedCount == 2) {
            View childAt7 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt7, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt8 = ((ViewGroup) childAt7).getChildAt(0);
            Intrinsics.checkNotNull(childAt8, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt9 = ((ViewGroup) childAt8).getChildAt(0);
            Intrinsics.checkNotNull(childAt9, "null cannot be cast to non-null type android.view.ViewGroup");
            addSvga((ViewGroup) childAt9);
            View childAt10 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt10, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt11 = ((ViewGroup) childAt10).getChildAt(0);
            Intrinsics.checkNotNull(childAt11, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt12 = ((ViewGroup) childAt11).getChildAt(1);
            Intrinsics.checkNotNull(childAt12, "null cannot be cast to non-null type android.view.ViewGroup");
            addSvga((ViewGroup) childAt12);
            View childAt13 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt13, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt14 = ((ViewGroup) childAt13).getChildAt(1);
            Intrinsics.checkNotNull(childAt14, "null cannot be cast to non-null type android.widget.TextView");
            ViewGroup.LayoutParams layoutParams = ((TextView) childAt14).getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = -DensityUtil.dp2px(0.0f);
        }
    }

    private final void setImageResponse(ImageView imageView, Integer num, String str) {
        if (num != null && num.intValue() == 0) {
            imageView.setImageResource(R$mipmap.icon_signin_fifth);
        } else if (num != null && num.intValue() == 1) {
            imageView.setImageResource(R$mipmap.icon_signin_first);
        } else if (num != null && num.intValue() == 2) {
            imageView.setImageResource(R$mipmap.icon_signin_shuijing);
        } else {
            com.bumptech.glide.c.v(imageView).r(str).Q0(imageView);
        }
    }

    private final void setSignInResult(final ViewGroup viewGroup) {
        String replace$default;
        ViewGroup viewGroup2;
        String replace$default2;
        String replace$default3;
        ViewGroup viewGroup3;
        int i9;
        String replace$default4;
        String replace$default5;
        ViewGroup viewGroup4;
        int i10;
        String replace$default6;
        ViewGroup viewGroup5;
        int i11;
        String replace$default7;
        List<SignList> signList;
        List<SignList> signList2;
        List<SignList> signList3;
        List<SignList> signList4;
        List<SignList> signList5;
        View childAt = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt2 = ((ViewGroup) childAt).getChildAt(0);
        Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type android.view.ViewGroup");
        final ViewGroup viewGroup6 = (ViewGroup) childAt2;
        View childAt3 = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt3, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt4 = ((ViewGroup) childAt3).getChildAt(1);
        Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.view.ViewGroup");
        final ViewGroup viewGroup7 = (ViewGroup) childAt4;
        View childAt5 = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt5, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt6 = ((ViewGroup) childAt5).getChildAt(2);
        Intrinsics.checkNotNull(childAt6, "null cannot be cast to non-null type android.view.ViewGroup");
        final ViewGroup viewGroup8 = (ViewGroup) childAt6;
        View childAt7 = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt7, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt8 = ((ViewGroup) childAt7).getChildAt(3);
        Intrinsics.checkNotNull(childAt8, "null cannot be cast to non-null type android.view.ViewGroup");
        final ViewGroup viewGroup9 = (ViewGroup) childAt8;
        View childAt9 = viewGroup.getChildAt(1);
        Intrinsics.checkNotNull(childAt9, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt10 = ((ViewGroup) childAt9).getChildAt(0);
        Intrinsics.checkNotNull(childAt10, "null cannot be cast to non-null type android.view.ViewGroup");
        final ViewGroup viewGroup10 = (ViewGroup) childAt10;
        View childAt11 = viewGroup.getChildAt(1);
        Intrinsics.checkNotNull(childAt11, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt12 = ((ViewGroup) childAt11).getChildAt(1);
        Intrinsics.checkNotNull(childAt12, "null cannot be cast to non-null type android.view.ViewGroup");
        final ViewGroup viewGroup11 = (ViewGroup) childAt12;
        View childAt13 = viewGroup.getChildAt(1);
        Intrinsics.checkNotNull(childAt13, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt14 = ((ViewGroup) childAt13).getChildAt(2);
        Intrinsics.checkNotNull(childAt14, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup12 = (ViewGroup) childAt14;
        if (this.signedCount == 0) {
            viewGroup6.setSelected(true);
        }
        refreshFirstSelect(viewGroup6);
        View childAt15 = viewGroup6.getChildAt(0);
        Intrinsics.checkNotNull(childAt15, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt16 = ((ViewGroup) childAt15).getChildAt(1);
        Intrinsics.checkNotNull(childAt16, "null cannot be cast to non-null type android.widget.TextView");
        String string = getString(R$string.f_dress_day, 1);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.f_dress_day, 1)");
        replace$default = StringsKt__StringsJVMKt.replace$default(string, " ", "", false, 4, (Object) null);
        ((TextView) childAt16).setText(replace$default);
        View childAt17 = viewGroup6.getChildAt(0);
        Intrinsics.checkNotNull(childAt17, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt18 = ((ViewGroup) childAt17).getChildAt(0);
        Intrinsics.checkNotNull(childAt18, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt19 = ((ViewGroup) childAt18).getChildAt(0);
        Intrinsics.checkNotNull(childAt19, "null cannot be cast to non-null type android.widget.ImageView");
        ImageView imageView = (ImageView) childAt19;
        if (imageView instanceof SvgaImageViewV2) {
            View childAt20 = viewGroup6.getChildAt(0);
            Intrinsics.checkNotNull(childAt20, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt21 = ((ViewGroup) childAt20).getChildAt(0);
            Intrinsics.checkNotNull(childAt21, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt22 = ((ViewGroup) childAt21).getChildAt(1);
            Intrinsics.checkNotNull(childAt22, "null cannot be cast to non-null type android.widget.ImageView");
            imageView = (ImageView) childAt22;
        }
        SigninBean signinBean = this.signinBean;
        if (signinBean == null || (signList5 = signinBean.getSignList()) == null) {
            viewGroup2 = viewGroup12;
        } else {
            if (signList5.size() > 0) {
                ArrayList arrayList = new ArrayList();
                List<RewardList> fixList = signList5.get(0).getFixList();
                if (fixList == null) {
                    fixList = new ArrayList<>();
                }
                viewGroup2 = viewGroup12;
                List<RewardList> list = fixList;
                List<RewardList> luckList = signList5.get(0).getLuckList();
                if (luckList == null) {
                    luckList = new ArrayList<>();
                }
                arrayList.addAll(list);
                arrayList.addAll(luckList);
                if (arrayList.size() > 0) {
                    Integer prizeAttribute = ((RewardList) arrayList.get(0)).getPrizeAttribute();
                    if (prizeAttribute != null && prizeAttribute.intValue() == 0) {
                        imageView.setBackgroundResource(R$mipmap.gift_clip_light);
                        imageView.measure(0, 0);
                        int intValue = (((float) imageView.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                        imageView.setPadding(intValue, intValue, intValue, intValue);
                    }
                    setImageResponse(imageView, ((RewardList) arrayList.get(0)).getPrizeType(), ((RewardList) arrayList.get(0)).getRewardImg());
                }
            } else {
                viewGroup2 = viewGroup12;
            }
            Unit unit = Unit.INSTANCE;
        }
        Unit unit2 = Unit.INSTANCE;
        if (this.signedCount == 1) {
            viewGroup7.setSelected(true);
        }
        refreshSecondSelect(viewGroup7);
        View childAt23 = viewGroup7.getChildAt(0);
        Intrinsics.checkNotNull(childAt23, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt24 = ((ViewGroup) childAt23).getChildAt(1);
        Intrinsics.checkNotNull(childAt24, "null cannot be cast to non-null type android.widget.TextView");
        int i12 = R$string.f_dress_days;
        String string2 = getString(i12, 2);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.f_dress_days, 2)");
        replace$default2 = StringsKt__StringsJVMKt.replace$default(string2, " ", "", false, 4, (Object) null);
        ((TextView) childAt24).setText(replace$default2);
        if (this.signedCount == 2) {
            viewGroup8.setSelected(true);
        }
        final ViewGroup viewGroup13 = viewGroup2;
        viewGroup8.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignInDialog.m756setSignInResult$lambda14$lambda9(SignInDialog.this, viewGroup8, viewGroup, viewGroup9, viewGroup6, viewGroup7, viewGroup8, view);
            }
        });
        View childAt25 = viewGroup8.getChildAt(0);
        Intrinsics.checkNotNull(childAt25, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt26 = ((ViewGroup) childAt25).getChildAt(0);
        Intrinsics.checkNotNull(childAt26, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt27 = ((ViewGroup) childAt26).getChildAt(0);
        Intrinsics.checkNotNull(childAt27, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt28 = ((ViewGroup) childAt27).getChildAt(0);
        SigninBean signinBean2 = this.signinBean;
        if (signinBean2 != null && (signList4 = signinBean2.getSignList()) != null && signList4.size() > 2) {
            List<RewardList> fixList2 = signList4.get(2).getFixList();
            if (fixList2 == null) {
                fixList2 = new ArrayList<>();
            }
            if (signList4.get(2).getLuckList() == null) {
                new ArrayList();
            }
            if (fixList2.size() > 0) {
                Integer prizeAttribute2 = fixList2.get(0).getPrizeAttribute();
                if (prizeAttribute2 != null && prizeAttribute2.intValue() == 0) {
                    Intrinsics.checkNotNull(childAt28, "null cannot be cast to non-null type android.widget.ImageView");
                    ImageView imageView2 = (ImageView) childAt28;
                    imageView2.setBackgroundResource(R$mipmap.gift_clip_light);
                    imageView2.measure(0, 0);
                    int intValue2 = (((float) imageView2.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView2.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                    imageView2.setPadding(intValue2, intValue2, intValue2, intValue2);
                }
                Intrinsics.checkNotNull(childAt28, "null cannot be cast to non-null type android.widget.ImageView");
                setImageResponse((ImageView) childAt28, fixList2.get(0).getPrizeType(), fixList2.get(0).getRewardImg());
            }
        }
        View childAt29 = viewGroup8.getChildAt(0);
        Intrinsics.checkNotNull(childAt29, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt30 = ((ViewGroup) childAt29).getChildAt(0);
        Intrinsics.checkNotNull(childAt30, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt31 = ((ViewGroup) childAt30).getChildAt(1);
        Intrinsics.checkNotNull(childAt31, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt32 = ((ViewGroup) childAt31).getChildAt(0);
        SigninBean signinBean3 = this.signinBean;
        if (signinBean3 != null && (signList3 = signinBean3.getSignList()) != null && signList3.size() > 2) {
            List<RewardList> fixList3 = signList3.get(2).getFixList();
            if (fixList3 == null) {
                fixList3 = new ArrayList<>();
            }
            List<RewardList> luckList2 = signList3.get(2).getLuckList();
            if (luckList2 == null) {
                luckList2 = new ArrayList<>();
            }
            if (fixList3.size() > 1) {
                Integer prizeAttribute3 = fixList3.get(1).getPrizeAttribute();
                if (prizeAttribute3 != null && prizeAttribute3.intValue() == 0) {
                    Intrinsics.checkNotNull(childAt32, "null cannot be cast to non-null type android.widget.ImageView");
                    ImageView imageView3 = (ImageView) childAt32;
                    imageView3.setBackgroundResource(R$mipmap.gift_clip_light);
                    imageView3.measure(0, 0);
                    int intValue3 = (((float) imageView3.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView3.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                    imageView3.setPadding(intValue3, intValue3, intValue3, intValue3);
                }
                Intrinsics.checkNotNull(childAt32, "null cannot be cast to non-null type android.widget.ImageView");
                setImageResponse((ImageView) childAt32, fixList3.get(1).getPrizeType(), fixList3.get(1).getRewardImg());
            } else if (luckList2.size() > 0) {
                Integer prizeAttribute4 = luckList2.get(0).getPrizeAttribute();
                if (prizeAttribute4 != null && prizeAttribute4.intValue() == 0) {
                    Intrinsics.checkNotNull(childAt32, "null cannot be cast to non-null type android.widget.ImageView");
                    ImageView imageView4 = (ImageView) childAt32;
                    imageView4.setBackgroundResource(R$mipmap.gift_clip_light);
                    imageView4.measure(0, 0);
                    int intValue4 = (((float) imageView4.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView4.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                    imageView4.setPadding(intValue4, intValue4, intValue4, intValue4);
                }
                Intrinsics.checkNotNull(childAt32, "null cannot be cast to non-null type android.widget.ImageView");
                setImageResponse((ImageView) childAt32, luckList2.get(0).getPrizeType(), luckList2.get(0).getRewardImg());
            }
        }
        refreshThirdSelect(viewGroup8);
        View childAt33 = viewGroup8.getChildAt(0);
        Intrinsics.checkNotNull(childAt33, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt34 = ((ViewGroup) childAt33).getChildAt(1);
        Intrinsics.checkNotNull(childAt34, "null cannot be cast to non-null type android.widget.TextView");
        String string3 = getString(i12, 3);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(R.string.f_dress_days, 3)");
        replace$default3 = StringsKt__StringsJVMKt.replace$default(string3, " ", "", false, 4, (Object) null);
        ((TextView) childAt34).setText(replace$default3);
        if (this.signedCount == 3) {
            viewGroup3 = viewGroup9;
            i9 = 1;
            viewGroup3.setSelected(true);
        } else {
            viewGroup3 = viewGroup9;
            i9 = 1;
        }
        refreshForthSelect(viewGroup3);
        View childAt35 = viewGroup3.getChildAt(0);
        Intrinsics.checkNotNull(childAt35, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt36 = ((ViewGroup) childAt35).getChildAt(i9);
        Intrinsics.checkNotNull(childAt36, "null cannot be cast to non-null type android.widget.TextView");
        Object[] objArr = new Object[i9];
        objArr[0] = 4;
        String string4 = getString(i12, objArr);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(R.string.f_dress_days, 4)");
        replace$default4 = StringsKt__StringsJVMKt.replace$default(string4, " ", "", false, 4, (Object) null);
        ((TextView) childAt36).setText(replace$default4);
        if (this.signedCount == 4) {
            viewGroup10.setSelected(true);
        }
        viewGroup10.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignInDialog.m758setSignInResult$lambda23$lambda18(SignInDialog.this, viewGroup10, viewGroup, viewGroup13, viewGroup11, viewGroup10, view);
            }
        });
        View childAt37 = viewGroup10.getChildAt(0);
        Intrinsics.checkNotNull(childAt37, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt38 = ((ViewGroup) childAt37).getChildAt(0);
        Intrinsics.checkNotNull(childAt38, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt39 = ((ViewGroup) childAt38).getChildAt(0);
        Intrinsics.checkNotNull(childAt39, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt40 = ((ViewGroup) childAt39).getChildAt(0);
        SigninBean signinBean4 = this.signinBean;
        if (signinBean4 != null && (signList2 = signinBean4.getSignList()) != null && signList2.size() > 4) {
            List<RewardList> fixList4 = signList2.get(4).getFixList();
            if (fixList4 == null) {
                fixList4 = new ArrayList<>();
            }
            if (signList2.get(4).getLuckList() == null) {
                new ArrayList();
            }
            if (fixList4.size() > 0) {
                Integer prizeAttribute5 = fixList4.get(0).getPrizeAttribute();
                if (prizeAttribute5 != null && prizeAttribute5.intValue() == 0) {
                    Intrinsics.checkNotNull(childAt40, "null cannot be cast to non-null type android.widget.ImageView");
                    ImageView imageView5 = (ImageView) childAt40;
                    imageView5.setBackgroundResource(R$mipmap.gift_clip_light);
                    imageView5.measure(0, 0);
                    int intValue5 = (((float) imageView5.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView5.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                    imageView5.setPadding(intValue5, intValue5, intValue5, intValue5);
                }
                Intrinsics.checkNotNull(childAt40, "null cannot be cast to non-null type android.widget.ImageView");
                setImageResponse((ImageView) childAt40, fixList4.get(0).getPrizeType(), fixList4.get(0).getRewardImg());
            }
        }
        View childAt41 = viewGroup10.getChildAt(0);
        Intrinsics.checkNotNull(childAt41, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt42 = ((ViewGroup) childAt41).getChildAt(0);
        Intrinsics.checkNotNull(childAt42, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt43 = ((ViewGroup) childAt42).getChildAt(1);
        Intrinsics.checkNotNull(childAt43, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt44 = ((ViewGroup) childAt43).getChildAt(0);
        SigninBean signinBean5 = this.signinBean;
        if (signinBean5 != null && (signList = signinBean5.getSignList()) != null && signList.size() > 4) {
            List<RewardList> fixList5 = signList.get(4).getFixList();
            if (fixList5 == null) {
                fixList5 = new ArrayList<>();
            }
            List<RewardList> luckList3 = signList.get(4).getLuckList();
            if (luckList3 == null) {
                luckList3 = new ArrayList<>();
            }
            if (fixList5.size() > 1) {
                Integer prizeAttribute6 = fixList5.get(1).getPrizeAttribute();
                if (prizeAttribute6 != null && prizeAttribute6.intValue() == 0) {
                    Intrinsics.checkNotNull(childAt44, "null cannot be cast to non-null type android.widget.ImageView");
                    ImageView imageView6 = (ImageView) childAt44;
                    imageView6.setBackgroundResource(R$mipmap.gift_clip_light);
                    imageView6.measure(0, 0);
                    int intValue6 = (((float) imageView6.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView6.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                    imageView6.setPadding(intValue6, intValue6, intValue6, intValue6);
                }
                Intrinsics.checkNotNull(childAt44, "null cannot be cast to non-null type android.widget.ImageView");
                setImageResponse((ImageView) childAt44, fixList5.get(1).getPrizeType(), fixList5.get(1).getRewardImg());
            } else if (luckList3.size() > 0) {
                Integer prizeAttribute7 = luckList3.get(0).getPrizeAttribute();
                if (prizeAttribute7 != null && prizeAttribute7.intValue() == 0) {
                    Intrinsics.checkNotNull(childAt44, "null cannot be cast to non-null type android.widget.ImageView");
                    ImageView imageView7 = (ImageView) childAt44;
                    imageView7.setBackgroundResource(R$mipmap.gift_clip_light);
                    imageView7.measure(0, 0);
                    int intValue7 = (((float) imageView7.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView7.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                    imageView7.setPadding(intValue7, intValue7, intValue7, intValue7);
                }
                Intrinsics.checkNotNull(childAt44, "null cannot be cast to non-null type android.widget.ImageView");
                setImageResponse((ImageView) childAt44, luckList3.get(0).getPrizeType(), luckList3.get(0).getRewardImg());
            }
        }
        refreshFifthSelect(viewGroup10);
        View childAt45 = viewGroup10.getChildAt(0);
        Intrinsics.checkNotNull(childAt45, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt46 = ((ViewGroup) childAt45).getChildAt(1);
        Intrinsics.checkNotNull(childAt46, "null cannot be cast to non-null type android.widget.TextView");
        String string5 = getString(i12, 5);
        Intrinsics.checkNotNullExpressionValue(string5, "getString(R.string.f_dress_days, 5)");
        replace$default5 = StringsKt__StringsJVMKt.replace$default(string5, " ", "", false, 4, (Object) null);
        ((TextView) childAt46).setText(replace$default5);
        if (this.signedCount == 5) {
            viewGroup4 = viewGroup11;
            i10 = 1;
            viewGroup4.setSelected(true);
        } else {
            viewGroup4 = viewGroup11;
            i10 = 1;
        }
        refreshSixthSelect(viewGroup4);
        View childAt47 = viewGroup4.getChildAt(0);
        Intrinsics.checkNotNull(childAt47, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt48 = ((ViewGroup) childAt47).getChildAt(i10);
        Intrinsics.checkNotNull(childAt48, "null cannot be cast to non-null type android.widget.TextView");
        Object[] objArr2 = new Object[i10];
        objArr2[0] = 6;
        String string6 = getString(i12, objArr2);
        Intrinsics.checkNotNullExpressionValue(string6, "getString(R.string.f_dress_days, 6)");
        replace$default6 = StringsKt__StringsJVMKt.replace$default(string6, " ", "", false, 4, (Object) null);
        ((TextView) childAt48).setText(replace$default6);
        if (this.signedCount == 6) {
            viewGroup5 = viewGroup13;
            i11 = 1;
            viewGroup5.setSelected(true);
        } else {
            viewGroup5 = viewGroup13;
            i11 = 1;
        }
        refreshSeventhSelect(viewGroup5);
        View childAt49 = viewGroup5.getChildAt(0);
        Intrinsics.checkNotNull(childAt49, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt50 = ((ViewGroup) childAt49).getChildAt(i11);
        Intrinsics.checkNotNull(childAt50, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt51 = ((ViewGroup) childAt50).getChildAt(i11);
        Intrinsics.checkNotNull(childAt51, "null cannot be cast to non-null type android.widget.TextView");
        Object[] objArr3 = new Object[i11];
        objArr3[0] = 7;
        String string7 = getString(i12, objArr3);
        Intrinsics.checkNotNullExpressionValue(string7, "getString(R.string.f_dress_days, 7)");
        replace$default7 = StringsKt__StringsJVMKt.replace$default(string7, " ", "", false, 4, (Object) null);
        ((TextView) childAt51).setText(replace$default7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setSignInResult$lambda-14$lambda-9  reason: not valid java name */
    public static final void m756setSignInResult$lambda14$lambda9(SignInDialog this$0, ViewGroup thirdLay, ViewGroup root, ViewGroup forthLay, ViewGroup firstLay, ViewGroup secondLay, ViewGroup this_apply, final View view) {
        boolean z10;
        float screenWidth;
        int width;
        List<SignList> signList;
        boolean z11;
        int i9;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(thirdLay, "$thirdLay");
        Intrinsics.checkNotNullParameter(root, "$root");
        Intrinsics.checkNotNullParameter(forthLay, "$forthLay");
        Intrinsics.checkNotNullParameter(firstLay, "$firstLay");
        Intrinsics.checkNotNullParameter(secondLay, "$secondLay");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        final PopupWindow popupWindow = new PopupWindow(this$0.getActivity());
        View inflate = this$0.getLayoutInflater().inflate(R$layout.popup_third_sign_item, (ViewGroup) null);
        inflate.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setContentView(inflate);
        popupWindow.getContentView().measure(0, 0);
        int measuredHeight = popupWindow.getContentView().getMeasuredHeight();
        int measuredWidth = popupWindow.getContentView().getMeasuredWidth();
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R$id.content_data);
        SigninBean signinBean = this$0.signinBean;
        if (signinBean == null || (signList = signinBean.getSignList()) == null || signList.size() <= 2) {
            z10 = false;
        } else {
            List<RewardList> fixList = signList.get(2).getFixList();
            if (fixList == null) {
                fixList = new ArrayList<>();
            }
            List<RewardList> luckList = signList.get(2).getLuckList();
            if (luckList == null) {
                luckList = new ArrayList<>();
            }
            if (fixList.size() >= 2 || luckList.size() <= 1) {
                z11 = false;
            } else {
                int size = luckList.size();
                for (int i10 = 1; i10 < size; i10++) {
                    Integer prizeType = luckList.get(i10).getPrizeType();
                    if (prizeType == null || prizeType.intValue() != 7) {
                        ImageView imageView = new ImageView(this_apply.getContext());
                        linearLayout.addView(imageView);
                        imageView.getLayoutParams().width = DensityUtil.dp2px(25.0f);
                        imageView.getLayoutParams().height = DensityUtil.dp2px(25.0f);
                        if (linearLayout.getChildCount() > 1) {
                            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                            ((ViewGroup.MarginLayoutParams) layoutParams).setMarginStart(DensityUtil.dp2px(15.0f));
                        }
                        Integer prizeAttribute = luckList.get(i10).getPrizeAttribute();
                        if (prizeAttribute != null && prizeAttribute.intValue() == 0) {
                            imageView.setBackgroundResource(R$mipmap.gift_clip_light);
                            imageView.measure(0, 0);
                            int intValue = (((float) imageView.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                            imageView.setPadding(intValue, intValue, intValue, intValue);
                        }
                        this$0.setImageResponse(imageView, luckList.get(i10).getPrizeType(), luckList.get(i10).getRewardImg());
                    }
                }
                z11 = true;
            }
            if (fixList.size() < 2 || luckList.size() <= 0) {
                z10 = z11;
            } else {
                int size2 = luckList.size();
                while (i9 < size2) {
                    Integer prizeType2 = luckList.get(i9).getPrizeType();
                    i9 = (prizeType2 != null && prizeType2.intValue() == 7) ? i9 + 1 : 0;
                    ImageView imageView2 = new ImageView(this_apply.getContext());
                    linearLayout.addView(imageView2);
                    imageView2.getLayoutParams().width = DensityUtil.dp2px(25.0f);
                    imageView2.getLayoutParams().height = DensityUtil.dp2px(25.0f);
                    if (linearLayout.getChildCount() > 1) {
                        ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        ((ViewGroup.MarginLayoutParams) layoutParams2).setMarginStart(DensityUtil.dp2px(15.0f));
                    }
                    Integer prizeAttribute2 = luckList.get(i9).getPrizeAttribute();
                    if (prizeAttribute2 != null && prizeAttribute2.intValue() == 0) {
                        imageView2.setBackgroundResource(R$mipmap.gift_clip_light);
                        imageView2.measure(0, 0);
                        int intValue2 = (((float) imageView2.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView2.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                        imageView2.setPadding(intValue2, intValue2, intValue2, intValue2);
                    }
                    this$0.setImageResponse(imageView2, luckList.get(i9).getPrizeType(), luckList.get(i9).getRewardImg());
                }
                z10 = true;
            }
        }
        if (z10) {
            int width2 = (thirdLay.getWidth() - measuredWidth) / 2;
            if (Intrinsics.areEqual(Language.ARABIC, q7.a.e().c())) {
                screenWidth = (ScreenTools.getScreenWidth() - root.getWidth()) / 2.0f;
                width = forthLay.getWidth();
            } else {
                screenWidth = ((ScreenTools.getScreenWidth() - root.getWidth()) / 2.0f) + (DensityUtil.dp2px(7.5f) * 1) + firstLay.getWidth();
                width = secondLay.getWidth();
            }
            final int i11 = (int) (screenWidth + width + width2);
            final int height = ((-measuredHeight) - thirdLay.getHeight()) - DensityUtil.dp2px(7.5f);
            thirdLay.post(new Runnable() { // from class: com.guochao.faceshow.signin.dialog.n
                @Override // java.lang.Runnable
                public final void run() {
                    SignInDialog.m757setSignInResult$lambda14$lambda9$lambda8(popupWindow, view, i11, height);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setSignInResult$lambda-14$lambda-9$lambda-8  reason: not valid java name */
    public static final void m757setSignInResult$lambda14$lambda9$lambda8(PopupWindow popupWindow, View view, int i9, int i10) {
        Intrinsics.checkNotNullParameter(popupWindow, "$popupWindow");
        popupWindow.showAtLocation(view, GravityCompat.START, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setSignInResult$lambda-23$lambda-18  reason: not valid java name */
    public static final void m758setSignInResult$lambda23$lambda18(SignInDialog this$0, final ViewGroup fifthLay, ViewGroup root, ViewGroup seventhLay, ViewGroup sixthLay, ViewGroup this_apply, View view) {
        boolean z10;
        float screenWidth;
        List<SignList> signList;
        boolean z11;
        int i9;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(fifthLay, "$fifthLay");
        Intrinsics.checkNotNullParameter(root, "$root");
        Intrinsics.checkNotNullParameter(seventhLay, "$seventhLay");
        Intrinsics.checkNotNullParameter(sixthLay, "$sixthLay");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        final PopupWindow popupWindow = new PopupWindow(this$0.getActivity());
        View inflate = this$0.getLayoutInflater().inflate(R$layout.popup_third_sign_item, (ViewGroup) null);
        inflate.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setContentView(inflate);
        popupWindow.getContentView().measure(0, 0);
        popupWindow.getContentView().getMeasuredHeight();
        int measuredWidth = popupWindow.getContentView().getMeasuredWidth();
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R$id.content_data);
        SigninBean signinBean = this$0.signinBean;
        if (signinBean == null || (signList = signinBean.getSignList()) == null || signList.size() <= 4) {
            z10 = false;
        } else {
            List<RewardList> fixList = signList.get(4).getFixList();
            if (fixList == null) {
                fixList = new ArrayList<>();
            }
            List<RewardList> luckList = signList.get(4).getLuckList();
            if (luckList == null) {
                luckList = new ArrayList<>();
            }
            int i10 = 7;
            if (fixList.size() >= 2 || luckList.size() <= 1) {
                z11 = false;
            } else {
                int size = luckList.size();
                int i11 = 1;
                while (i11 < size) {
                    Integer prizeType = luckList.get(i11).getPrizeType();
                    if (prizeType == null || prizeType.intValue() != i10) {
                        ImageView imageView = new ImageView(this_apply.getContext());
                        linearLayout.addView(imageView);
                        imageView.getLayoutParams().width = DensityUtil.dp2px(25.0f);
                        imageView.getLayoutParams().height = DensityUtil.dp2px(25.0f);
                        if (linearLayout.getChildCount() > 1) {
                            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                            ((ViewGroup.MarginLayoutParams) layoutParams).setMarginStart(DensityUtil.dp2px(15.0f));
                        }
                        Integer prizeAttribute = luckList.get(i11).getPrizeAttribute();
                        if (prizeAttribute != null && prizeAttribute.intValue() == 0) {
                            imageView.setBackgroundResource(R$mipmap.gift_clip_light);
                            imageView.measure(0, 0);
                            int intValue = (((float) imageView.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                            imageView.setPadding(intValue, intValue, intValue, intValue);
                        }
                        this$0.setImageResponse(imageView, luckList.get(i11).getPrizeType(), luckList.get(i11).getRewardImg());
                    }
                    i11++;
                    i10 = 7;
                }
                z11 = true;
            }
            if (fixList.size() < 2 || luckList.size() <= 0) {
                z10 = z11;
            } else {
                int size2 = luckList.size();
                while (i9 < size2) {
                    Integer prizeType2 = luckList.get(i9).getPrizeType();
                    i9 = (prizeType2 != null && prizeType2.intValue() == 7) ? i9 + 1 : 0;
                    ImageView imageView2 = new ImageView(this_apply.getContext());
                    linearLayout.addView(imageView2);
                    imageView2.getLayoutParams().width = DensityUtil.dp2px(25.0f);
                    imageView2.getLayoutParams().height = DensityUtil.dp2px(25.0f);
                    if (linearLayout.getChildCount() > 1) {
                        ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        ((ViewGroup.MarginLayoutParams) layoutParams2).setMarginStart(DensityUtil.dp2px(15.0f));
                    }
                    Integer prizeAttribute2 = luckList.get(i9).getPrizeAttribute();
                    if (prizeAttribute2 != null && prizeAttribute2.intValue() == 0) {
                        imageView2.setBackgroundResource(R$mipmap.gift_clip_light);
                        imageView2.measure(0, 0);
                        int intValue2 = (((float) imageView2.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView2.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                        imageView2.setPadding(intValue2, intValue2, intValue2, intValue2);
                    }
                    this$0.setImageResponse(imageView2, luckList.get(i9).getPrizeType(), luckList.get(i9).getRewardImg());
                }
                z10 = true;
            }
        }
        if (z10) {
            int width = (fifthLay.getWidth() - measuredWidth) / 2;
            ViewParent parent = root.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt = ((ViewGroup) parent).getChildAt(1);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) childAt;
            textView.getLineCount();
            final float dp2px = ((-fifthLay.getMeasuredHeight()) - DensityUtil.dp2px(7.5f)) + ((textView.getLineCount() - 1) * (textView.getLineHeight() - textView.getLineSpacingExtra()));
            if (Intrinsics.areEqual(Language.ARABIC, q7.a.e().c())) {
                screenWidth = ((ScreenTools.getScreenWidth() - root.getWidth()) / 2.0f) + (DensityUtil.dp2px(7.5f) * 3) + seventhLay.getWidth() + sixthLay.getWidth();
            } else {
                screenWidth = (ScreenTools.getScreenWidth() - root.getWidth()) / 2.0f;
            }
            final int i12 = (int) (screenWidth + width);
            fifthLay.post(new Runnable() { // from class: com.guochao.faceshow.signin.dialog.o
                @Override // java.lang.Runnable
                public final void run() {
                    SignInDialog.m759setSignInResult$lambda23$lambda18$lambda17(popupWindow, fifthLay, i12, dp2px);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setSignInResult$lambda-23$lambda-18$lambda-17  reason: not valid java name */
    public static final void m759setSignInResult$lambda23$lambda18$lambda17(PopupWindow popupWindow, ViewGroup fifthLay, int i9, float f10) {
        Intrinsics.checkNotNullParameter(popupWindow, "$popupWindow");
        Intrinsics.checkNotNullParameter(fifthLay, "$fifthLay");
        popupWindow.showAtLocation(fifthLay, GravityCompat.START, i9, (int) f10);
    }

    @JvmStatic
    @Nullable
    public static final SignInDialog showDialog(@NotNull FragmentManager fragmentManager, @NotNull SigninBean signinBean) {
        return Companion.showDialog(fragmentManager, signinBean);
    }

    @Nullable
    public final Function1<SigninResponse, Unit> getCallBack() {
        return this.callBack;
    }

    public final int getSignedCount() {
        return this.signedCount;
    }

    @Nullable
    public final SigninBean getSigninBean() {
        return this.signinBean;
    }

    @Nullable
    public final String getSystemLanguage() {
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            Intrinsics.checkNotNullExpressionValue(locales, "getLocales(Resources.getSystem().configuration)");
            return locales.get(0).getLanguage();
        }
        return Locale.getDefault().getLanguage();
    }

    @NotNull
    public final FragmentSigninBinding getViewBinding() {
        FragmentSigninBinding fragmentSigninBinding = this.viewBinding;
        if (fragmentSigninBinding != null) {
            return fragmentSigninBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        SigninBean signinBean;
        Intrinsics.checkNotNullParameter(root, "root");
        getViewBinding().ivTitle.measure(0, 0);
        int measuredHeight = getViewBinding().ivTitle.getMeasuredHeight();
        if (measuredHeight > 0) {
            getViewBinding().tvTitle.getLayoutParams().height = (int) (measuredHeight * 0.63f);
        }
        Bundle arguments = getArguments();
        if (arguments == null || (signinBean = (SigninBean) arguments.getParcelable("SigninBean")) == null) {
            return;
        }
        this.signinBean = signinBean;
        Integer daySign = signinBean.getDaySign();
        this.signedCount = daySign != null ? daySign.intValue() : 0;
        TextView textView = getViewBinding().tvSignedTip;
        int i9 = R$string.signin_perday_signed_tip;
        Object[] objArr = new Object[1];
        int i10 = this.signedCount;
        objArr[0] = i10 < 0 ? "0" : String.valueOf(i10);
        textView.setText(getString(i9, objArr));
        LinearLayout root2 = getViewBinding().signinContentLay.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "viewBinding.signinContentLay.root");
        setSignInResult(root2);
        getViewBinding().ignoreDialog.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignInDialog.m753initView$lambda0(view);
            }
        });
        getViewBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignInDialog.m754initView$lambda1(SignInDialog.this, view);
            }
        });
        getViewBinding().startSignin.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignInDialog.m755initView$lambda2(SignInDialog.this, view);
            }
        });
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

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
    }

    public final void setCallBack(@Nullable Function1<? super SigninResponse, Unit> function1) {
        this.callBack = function1;
    }

    public final void setSignedCount(int i9) {
        this.signedCount = i9;
    }

    public final void setSigninBean(@Nullable SigninBean signinBean) {
        this.signinBean = signinBean;
    }

    public final void setViewBinding(@NotNull FragmentSigninBinding fragmentSigninBinding) {
        Intrinsics.checkNotNullParameter(fragmentSigninBinding, "<set-?>");
        this.viewBinding = fragmentSigninBinding;
    }
}
