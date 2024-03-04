package com.guochao.faceshow.signin.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.signin.R$mipmap;
import com.guochao.faceshow.signin.R$string;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import com.guochao.faceshow.signin.bean.NewUser;
import com.guochao.faceshow.signin.bean.RewardList;
import com.guochao.faceshow.signin.bean.SigninResponse;
import com.guochao.faceshow.signin.databinding.FragmentSigninResultBinding;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 &2\u00020\u0001:\u0001&B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0012\u0010\u0016\u001a\u00020\u00102\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0019\u001a\u00020\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0016\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u001a\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020$2\b\u0010 \u001a\u0004\u0018\u00010!H\u0002J\u0016\u0010%\u001a\u00020\u00102\u0006\u0010#\u001a\u00020$2\u0006\u0010 \u001a\u00020!R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006'"}, d2 = {"Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "growTaskBean", "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "isGiftBag", "", "isLastTask", "viewBinding", "Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;", "setViewBinding", "(Lcom/guochao/faceshow/signin/databinding/FragmentSigninResultBinding;)V", "dismissAllowingStateLoss", "", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "refreshData", "signinBean", "Lcom/guochao/faceshow/signin/bean/SigninResponse;", "refreshSignTip", "setImageResource", "imageView", "Landroid/widget/ImageView;", "rewardBean", "Lcom/guochao/faceshow/signin/bean/RewardList;", "setNumberText", "textView", "Landroid/widget/TextView;", "setTextName", "Companion", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SignInResultDialog extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private GrowTaskBean growTaskBean;
    private boolean isGiftBag;
    private boolean isLastTask;
    public FragmentSigninResultBinding viewBinding;

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m760initView$lambda0(SignInResultDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m761initView$lambda1(SignInResultDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshData(SigninResponse signinResponse) {
        List<RewardList> arrayList;
        if (signinResponse != null) {
            arrayList = signinResponse.getLuckInfo();
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            for (RewardList rewardList : arrayList) {
                Integer prizeType = rewardList.getPrizeType();
                if (prizeType != null && prizeType.intValue() == 0) {
                    NewUser newUser = signinResponse.getNewUser();
                    int charmValues = newUser != null ? newUser.getCharmValues() : 0;
                    Integer prizeNum = rewardList.getPrizeNum();
                    rewardList.setPrizeNum(Integer.valueOf(charmValues + (prizeNum != null ? prizeNum.intValue() : 0)));
                }
                Integer prizeType2 = rewardList.getPrizeType();
                if (prizeType2 != null && prizeType2.intValue() == 1) {
                    NewUser newUser2 = signinResponse.getNewUser();
                    int rewardDiamond = newUser2 != null ? newUser2.getRewardDiamond() : 0;
                    Integer prizeNum2 = rewardList.getPrizeNum();
                    rewardList.setPrizeNum(Integer.valueOf(rewardDiamond + (prizeNum2 != null ? prizeNum2.intValue() : 0)));
                }
            }
        } else {
            GrowTaskBean growTaskBean = this.growTaskBean;
            if (growTaskBean == null || (arrayList = growTaskBean.getPrizeVoList()) == null) {
                arrayList = new ArrayList<>();
            }
        }
        int size = arrayList.size();
        if (size == 1) {
            View inflate = getViewBinding().signinTwoResultLay.inflate();
            Intrinsics.checkNotNull(inflate, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) inflate;
            View childAt = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt2 = ((ViewGroup) childAt).getChildAt(1);
            Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt3 = ((ViewGroup) childAt2).getChildAt(1);
            Intrinsics.checkNotNull(childAt3, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) childAt3;
            setNumberText(textView, arrayList.get(0));
            ViewParent parent = textView.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt4 = ((ViewGroup) parent).getChildAt(0);
            Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.widget.TextView");
            setTextName((TextView) childAt4, arrayList.get(0));
            View childAt5 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt5, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt6 = ((ViewGroup) childAt5).getChildAt(0);
            Intrinsics.checkNotNull(childAt6, "null cannot be cast to non-null type android.widget.ImageView");
            setImageResource((ImageView) childAt6, arrayList.get(0));
            View childAt7 = viewGroup.getChildAt(1);
            Intrinsics.checkNotNull(childAt7, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) childAt7).setVisibility(8);
        } else if (size == 2) {
            View inflate2 = getViewBinding().signinTwoResultLay.inflate();
            Intrinsics.checkNotNull(inflate2, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup2 = (ViewGroup) inflate2;
            View childAt8 = viewGroup2.getChildAt(0);
            Intrinsics.checkNotNull(childAt8, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt9 = ((ViewGroup) childAt8).getChildAt(1);
            Intrinsics.checkNotNull(childAt9, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt10 = ((ViewGroup) childAt9).getChildAt(1);
            Intrinsics.checkNotNull(childAt10, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView2 = (TextView) childAt10;
            setNumberText(textView2, arrayList.get(0));
            ViewParent parent2 = textView2.getParent();
            Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt11 = ((ViewGroup) parent2).getChildAt(0);
            Intrinsics.checkNotNull(childAt11, "null cannot be cast to non-null type android.widget.TextView");
            setTextName((TextView) childAt11, arrayList.get(0));
            View childAt12 = viewGroup2.getChildAt(0);
            Intrinsics.checkNotNull(childAt12, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt13 = ((ViewGroup) childAt12).getChildAt(0);
            Intrinsics.checkNotNull(childAt13, "null cannot be cast to non-null type android.widget.ImageView");
            setImageResource((ImageView) childAt13, arrayList.get(0));
            View childAt14 = viewGroup2.getChildAt(1);
            Intrinsics.checkNotNull(childAt14, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt15 = ((ViewGroup) childAt14).getChildAt(1);
            Intrinsics.checkNotNull(childAt15, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt16 = ((ViewGroup) childAt15).getChildAt(1);
            Intrinsics.checkNotNull(childAt16, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView3 = (TextView) childAt16;
            setNumberText(textView3, arrayList.get(1));
            ViewParent parent3 = textView3.getParent();
            Intrinsics.checkNotNull(parent3, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt17 = ((ViewGroup) parent3).getChildAt(0);
            Intrinsics.checkNotNull(childAt17, "null cannot be cast to non-null type android.widget.TextView");
            setTextName((TextView) childAt17, arrayList.get(1));
            View childAt18 = viewGroup2.getChildAt(1);
            Intrinsics.checkNotNull(childAt18, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt19 = ((ViewGroup) childAt18).getChildAt(0);
            Intrinsics.checkNotNull(childAt19, "null cannot be cast to non-null type android.widget.ImageView");
            setImageResource((ImageView) childAt19, arrayList.get(1));
        } else if (size == 3) {
            View inflate3 = getViewBinding().signinThreeResultLay.inflate();
            Intrinsics.checkNotNull(inflate3, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup3 = (ViewGroup) inflate3;
            View childAt20 = viewGroup3.getChildAt(0);
            Intrinsics.checkNotNull(childAt20, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt21 = ((ViewGroup) childAt20).getChildAt(1);
            Intrinsics.checkNotNull(childAt21, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt22 = ((ViewGroup) childAt21).getChildAt(1);
            Intrinsics.checkNotNull(childAt22, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView4 = (TextView) childAt22;
            setNumberText(textView4, arrayList.get(0));
            ViewParent parent4 = textView4.getParent();
            Intrinsics.checkNotNull(parent4, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt23 = ((ViewGroup) parent4).getChildAt(0);
            Intrinsics.checkNotNull(childAt23, "null cannot be cast to non-null type android.widget.TextView");
            setTextName((TextView) childAt23, arrayList.get(0));
            View childAt24 = viewGroup3.getChildAt(0);
            Intrinsics.checkNotNull(childAt24, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt25 = ((ViewGroup) childAt24).getChildAt(0);
            Intrinsics.checkNotNull(childAt25, "null cannot be cast to non-null type android.widget.ImageView");
            setImageResource((ImageView) childAt25, arrayList.get(0));
            View childAt26 = viewGroup3.getChildAt(1);
            Intrinsics.checkNotNull(childAt26, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt27 = ((ViewGroup) childAt26).getChildAt(1);
            Intrinsics.checkNotNull(childAt27, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt28 = ((ViewGroup) childAt27).getChildAt(1);
            Intrinsics.checkNotNull(childAt28, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView5 = (TextView) childAt28;
            setNumberText(textView5, arrayList.get(1));
            ViewParent parent5 = textView5.getParent();
            Intrinsics.checkNotNull(parent5, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt29 = ((ViewGroup) parent5).getChildAt(0);
            Intrinsics.checkNotNull(childAt29, "null cannot be cast to non-null type android.widget.TextView");
            setTextName((TextView) childAt29, arrayList.get(1));
            View childAt30 = viewGroup3.getChildAt(1);
            Intrinsics.checkNotNull(childAt30, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt31 = ((ViewGroup) childAt30).getChildAt(0);
            Intrinsics.checkNotNull(childAt31, "null cannot be cast to non-null type android.widget.ImageView");
            setImageResource((ImageView) childAt31, arrayList.get(1));
            View childAt32 = viewGroup3.getChildAt(2);
            Intrinsics.checkNotNull(childAt32, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt33 = ((ViewGroup) childAt32).getChildAt(1);
            Intrinsics.checkNotNull(childAt33, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt34 = ((ViewGroup) childAt33).getChildAt(1);
            Intrinsics.checkNotNull(childAt34, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView6 = (TextView) childAt34;
            setNumberText(textView6, arrayList.get(2));
            ViewParent parent6 = textView6.getParent();
            Intrinsics.checkNotNull(parent6, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt35 = ((ViewGroup) parent6).getChildAt(0);
            Intrinsics.checkNotNull(childAt35, "null cannot be cast to non-null type android.widget.TextView");
            setTextName((TextView) childAt35, arrayList.get(2));
            View childAt36 = viewGroup3.getChildAt(2);
            Intrinsics.checkNotNull(childAt36, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt37 = ((ViewGroup) childAt36).getChildAt(0);
            Intrinsics.checkNotNull(childAt37, "null cannot be cast to non-null type android.widget.ImageView");
            setImageResource((ImageView) childAt37, arrayList.get(2));
        } else if (size == 4) {
            View inflate4 = getViewBinding().signinFourResultLay.inflate();
            Intrinsics.checkNotNull(inflate4, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup4 = (ViewGroup) inflate4;
            View childAt38 = viewGroup4.getChildAt(0);
            Intrinsics.checkNotNull(childAt38, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt39 = ((ViewGroup) childAt38).getChildAt(0);
            Intrinsics.checkNotNull(childAt39, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt40 = ((ViewGroup) childAt39).getChildAt(1);
            Intrinsics.checkNotNull(childAt40, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt41 = ((ViewGroup) childAt40).getChildAt(1);
            Intrinsics.checkNotNull(childAt41, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView7 = (TextView) childAt41;
            setNumberText(textView7, arrayList.get(0));
            ViewParent parent7 = textView7.getParent();
            Intrinsics.checkNotNull(parent7, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt42 = ((ViewGroup) parent7).getChildAt(0);
            Intrinsics.checkNotNull(childAt42, "null cannot be cast to non-null type android.widget.TextView");
            setTextName((TextView) childAt42, arrayList.get(0));
            View childAt43 = viewGroup4.getChildAt(0);
            Intrinsics.checkNotNull(childAt43, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt44 = ((ViewGroup) childAt43).getChildAt(0);
            Intrinsics.checkNotNull(childAt44, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt45 = ((ViewGroup) childAt44).getChildAt(0);
            Intrinsics.checkNotNull(childAt45, "null cannot be cast to non-null type android.widget.ImageView");
            setImageResource((ImageView) childAt45, arrayList.get(0));
            View childAt46 = viewGroup4.getChildAt(0);
            Intrinsics.checkNotNull(childAt46, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt47 = ((ViewGroup) childAt46).getChildAt(1);
            Intrinsics.checkNotNull(childAt47, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt48 = ((ViewGroup) childAt47).getChildAt(1);
            Intrinsics.checkNotNull(childAt48, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt49 = ((ViewGroup) childAt48).getChildAt(1);
            Intrinsics.checkNotNull(childAt49, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView8 = (TextView) childAt49;
            setNumberText(textView8, arrayList.get(1));
            ViewParent parent8 = textView8.getParent();
            Intrinsics.checkNotNull(parent8, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt50 = ((ViewGroup) parent8).getChildAt(0);
            Intrinsics.checkNotNull(childAt50, "null cannot be cast to non-null type android.widget.TextView");
            setTextName((TextView) childAt50, arrayList.get(1));
            View childAt51 = viewGroup4.getChildAt(0);
            Intrinsics.checkNotNull(childAt51, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt52 = ((ViewGroup) childAt51).getChildAt(1);
            Intrinsics.checkNotNull(childAt52, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt53 = ((ViewGroup) childAt52).getChildAt(0);
            Intrinsics.checkNotNull(childAt53, "null cannot be cast to non-null type android.widget.ImageView");
            setImageResource((ImageView) childAt53, arrayList.get(1));
            View childAt54 = viewGroup4.getChildAt(1);
            Intrinsics.checkNotNull(childAt54, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt55 = ((ViewGroup) childAt54).getChildAt(0);
            Intrinsics.checkNotNull(childAt55, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt56 = ((ViewGroup) childAt55).getChildAt(1);
            Intrinsics.checkNotNull(childAt56, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt57 = ((ViewGroup) childAt56).getChildAt(1);
            Intrinsics.checkNotNull(childAt57, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView9 = (TextView) childAt57;
            setNumberText(textView9, arrayList.get(2));
            View childAt58 = viewGroup4.getChildAt(1);
            Intrinsics.checkNotNull(childAt58, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt59 = ((ViewGroup) childAt58).getChildAt(0);
            Intrinsics.checkNotNull(childAt59, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt60 = ((ViewGroup) childAt59).getChildAt(0);
            Intrinsics.checkNotNull(childAt60, "null cannot be cast to non-null type android.widget.ImageView");
            ViewParent parent9 = textView9.getParent();
            Intrinsics.checkNotNull(parent9, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt61 = ((ViewGroup) parent9).getChildAt(0);
            Intrinsics.checkNotNull(childAt61, "null cannot be cast to non-null type android.widget.TextView");
            setTextName((TextView) childAt61, arrayList.get(2));
            setImageResource((ImageView) childAt60, arrayList.get(2));
            View childAt62 = viewGroup4.getChildAt(1);
            Intrinsics.checkNotNull(childAt62, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt63 = ((ViewGroup) childAt62).getChildAt(1);
            Intrinsics.checkNotNull(childAt63, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt64 = ((ViewGroup) childAt63).getChildAt(1);
            Intrinsics.checkNotNull(childAt64, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt65 = ((ViewGroup) childAt64).getChildAt(1);
            Intrinsics.checkNotNull(childAt65, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView10 = (TextView) childAt65;
            setNumberText(textView10, arrayList.get(3));
            View childAt66 = viewGroup4.getChildAt(1);
            Intrinsics.checkNotNull(childAt66, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt67 = ((ViewGroup) childAt66).getChildAt(1);
            Intrinsics.checkNotNull(childAt67, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt68 = ((ViewGroup) childAt67).getChildAt(0);
            Intrinsics.checkNotNull(childAt68, "null cannot be cast to non-null type android.widget.ImageView");
            ViewParent parent10 = textView10.getParent();
            Intrinsics.checkNotNull(parent10, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt69 = ((ViewGroup) parent10).getChildAt(0);
            Intrinsics.checkNotNull(childAt69, "null cannot be cast to non-null type android.widget.TextView");
            setTextName((TextView) childAt69, arrayList.get(3));
            setImageResource((ImageView) childAt68, arrayList.get(3));
        }
    }

    private final void refreshSignTip(SigninResponse signinResponse) {
        Integer prizeType;
        List<RewardList> luckInfo = signinResponse.getLuckInfo();
        char c10 = 4;
        if (luckInfo != null) {
            char c11 = 4;
            for (RewardList rewardList : luckInfo) {
                Integer prizeAttribute = rewardList.getPrizeAttribute();
                if (prizeAttribute != null && prizeAttribute.intValue() == 0 && c11 >= 4) {
                    c11 = 3;
                }
                Integer prizeAttribute2 = rewardList.getPrizeAttribute();
                if (prizeAttribute2 != null && prizeAttribute2.intValue() == 1) {
                    Integer prizeType2 = rewardList.getPrizeType();
                    if ((prizeType2 != null ? prizeType2.intValue() : 0) >= 4) {
                        Integer prizeType3 = rewardList.getPrizeType();
                        if ((prizeType3 != null ? prizeType3.intValue() : 0) <= 6 && c11 >= 3) {
                            c11 = 2;
                        }
                    }
                }
                Integer prizeAttribute3 = rewardList.getPrizeAttribute();
                if (prizeAttribute3 != null && prizeAttribute3.intValue() == 1 && (prizeType = rewardList.getPrizeType()) != null && prizeType.intValue() == 3 && c11 >= 2) {
                    c11 = 1;
                }
            }
            c10 = c11;
        }
        if (c10 == 1) {
            getViewBinding().tvSignedTip.setText(getString(R$string.signin_result_tip));
        } else if (c10 == 2) {
            getViewBinding().tvSignedTip.setText(getString(R$string.signin_result_tip_1));
        } else if (c10 != 3) {
            getViewBinding().tvSignedTip.setText(getString(R$string.signin_result_tip_1));
            getViewBinding().tvSignedTip.setVisibility(8);
        } else {
            getViewBinding().tvSignedTip.setText(getString(R$string.signin_result_tip_2));
        }
    }

    private final void setNumberText(TextView textView, RewardList rewardList) {
        if (rewardList != null) {
            Integer prizeUseDay = rewardList.getPrizeUseDay();
            int intValue = prizeUseDay != null ? prizeUseDay.intValue() : 1;
            Integer prizeAttribute = rewardList.getPrizeAttribute();
            if (prizeAttribute != null && prizeAttribute.intValue() == 1) {
                Integer prizeType = rewardList.getPrizeType();
                if (prizeType != null && prizeType.intValue() == 3) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append('x');
                    Integer prizeNum = rewardList.getPrizeNum();
                    sb2.append(prizeNum != null ? prizeNum.intValue() : 1);
                    textView.setText(sb2.toString());
                    return;
                } else if (prizeType != null && prizeType.intValue() == 4) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append('x');
                    sb3.append(getString(intValue == 1 ? R$string.f_dress_day : R$string.f_dress_days, Integer.valueOf(intValue)));
                    textView.setText(sb3.toString());
                    return;
                } else if (prizeType != null && prizeType.intValue() == 5) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append('x');
                    sb4.append(getString(intValue == 1 ? R$string.f_dress_day : R$string.f_dress_days, Integer.valueOf(intValue)));
                    textView.setText(sb4.toString());
                    return;
                } else if (prizeType != null && prizeType.intValue() == 6) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append('x');
                    sb5.append(getString(intValue == 1 ? R$string.f_dress_day : R$string.f_dress_days, Integer.valueOf(intValue)));
                    textView.setText(sb5.toString());
                    return;
                } else {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append('x');
                    Integer prizeNum2 = rewardList.getPrizeNum();
                    sb6.append(prizeNum2 != null ? prizeNum2.intValue() : 1);
                    textView.setText(sb6.toString());
                    return;
                }
            }
            StringBuilder sb7 = new StringBuilder();
            sb7.append('x');
            Integer prizeNum3 = rewardList.getPrizeNum();
            sb7.append(prizeNum3 != null ? prizeNum3.intValue() : 1);
            textView.setText(sb7.toString());
        }
    }

    @JvmStatic
    @NotNull
    public static final SignInResultDialog showDialog(@NotNull FragmentManager fragmentManager, @Nullable GrowTaskBean growTaskBean, boolean z10, @Nullable Boolean bool) {
        return Companion.showDialog(fragmentManager, growTaskBean, z10, bool);
    }

    @JvmStatic
    @NotNull
    public static final SignInResultDialog showDialog(@NotNull FragmentManager fragmentManager, @NotNull SigninResponse signinResponse) {
        return Companion.showDialog(fragmentManager, signinResponse);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        Fragment parentFragment;
        FragmentManager childFragmentManager;
        super.dismissAllowingStateLoss();
        if (!this.isLastTask || (parentFragment = getParentFragment()) == null || (childFragmentManager = parentFragment.getChildFragmentManager()) == null) {
            return;
        }
        Companion.showDialog(childFragmentManager, this.growTaskBean, false, Boolean.TRUE);
    }

    @NotNull
    public final FragmentSigninResultBinding getViewBinding() {
        FragmentSigninResultBinding fragmentSigninResultBinding = this.viewBinding;
        if (fragmentSigninResultBinding != null) {
            return fragmentSigninResultBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        SigninResponse signinResponse;
        GrowTaskBean growTaskBean;
        Integer taskType;
        Intrinsics.checkNotNullParameter(root, "root");
        if (Language.RUSSIAN.equals(q7.a.e().c()) || "it".equals(q7.a.e().c())) {
            getViewBinding().tvTitle.setTextSize(2, 14.0f);
        }
        Bundle arguments = getArguments();
        if (arguments == null || (signinResponse = (SigninResponse) arguments.getParcelable("SigninBean")) == null) {
            signinResponse = null;
        }
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (growTaskBean = (GrowTaskBean) arguments2.getParcelable("GrowTaskBean")) == null) {
            growTaskBean = null;
        }
        this.growTaskBean = growTaskBean;
        Bundle arguments3 = getArguments();
        boolean z10 = false;
        this.isLastTask = arguments3 != null ? arguments3.getBoolean("isLastTask", false) : false;
        Bundle arguments4 = getArguments();
        this.isGiftBag = arguments4 != null ? arguments4.getBoolean("isGiftBag", false) : false;
        if (signinResponse == null && this.growTaskBean == null) {
            return;
        }
        getViewBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignInResultDialog.m760initView$lambda0(SignInResultDialog.this, view);
            }
        });
        getViewBinding().tvIKnow.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignInResultDialog.m761initView$lambda1(SignInResultDialog.this, view);
            }
        });
        if (signinResponse != null) {
            getViewBinding().primaryTitle.setText(getString(R$string.signin_perday_primary_title));
            refreshSignTip(signinResponse);
        } else if (this.isGiftBag) {
            getViewBinding().primaryTitle.setText(getString(R$string.signin_grow_gift_bag));
            getViewBinding().tvSignedTip.setVisibility(8);
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), Dispatchers.getMain(), null, new SignInResultDialog$initView$3(this, signinResponse, null), 2, null);
            return;
        } else {
            getViewBinding().primaryTitle.setVisibility(8);
            getViewBinding().tvSignedTip.setVisibility(8);
            GrowTaskBean growTaskBean2 = this.growTaskBean;
            if (growTaskBean2 != null && (taskType = growTaskBean2.getTaskType()) != null && taskType.intValue() == 1) {
                z10 = true;
            }
            if (z10) {
                getViewBinding().primaryTitle.setVisibility(8);
            }
        }
        refreshData(signinResponse);
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

    public final void setImageResource(@NotNull ImageView imageView, @NotNull RewardList rewardBean) {
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        Intrinsics.checkNotNullParameter(rewardBean, "rewardBean");
        Integer prizeAttribute = rewardBean.getPrizeAttribute();
        if (prizeAttribute != null && prizeAttribute.intValue() == 0) {
            imageView.setBackgroundResource(R$mipmap.gift_clip_light);
            imageView.measure(0, 0);
            int intValue = (((float) imageView.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
            imageView.setPadding(intValue, intValue, intValue, intValue);
        }
        Integer prizeType = rewardBean.getPrizeType();
        if (prizeType != null && prizeType.intValue() == 0) {
            imageView.setImageResource(R$mipmap.icon_signin_fifth);
        } else if (prizeType != null && prizeType.intValue() == 1) {
            imageView.setImageResource(R$mipmap.icon_signin_first);
        } else if (prizeType != null && prizeType.intValue() == 2) {
            imageView.setImageResource(R$mipmap.icon_signin_shuijing);
        } else {
            com.bumptech.glide.c.v(imageView).r(rewardBean.getRewardImg()).Q0(imageView);
        }
    }

    public final void setTextName(@NotNull TextView textView, @NotNull RewardList rewardBean) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        Intrinsics.checkNotNullParameter(rewardBean, "rewardBean");
        Integer prizeAttribute = rewardBean.getPrizeAttribute();
        if (prizeAttribute != null && prizeAttribute.intValue() == 0) {
            Integer prizeType = rewardBean.getPrizeType();
            if (prizeType != null && prizeType.intValue() == 3) {
                textView.setText(getString(R$string.signin_task_gift_chips));
                return;
            } else if (prizeType != null && prizeType.intValue() == 4) {
                textView.setText(getString(R$string.signin_task_touxiangkuang_chips));
                return;
            } else if (prizeType != null && prizeType.intValue() == 5) {
                textView.setText(getString(R$string.signin_task_gongliao_chips));
                return;
            } else if (prizeType != null && prizeType.intValue() == 6) {
                textView.setText(getString(R$string.signin_task_zuojia_chips));
                return;
            } else {
                return;
            }
        }
        Integer prizeType2 = rewardBean.getPrizeType();
        if (prizeType2 != null && prizeType2.intValue() == 0) {
            textView.setText(getString(R$string.signin_perday_result_fifth));
        } else if (prizeType2 != null && prizeType2.intValue() == 1) {
            textView.setText(getString(R$string.signin_reward_diamond));
        } else if (prizeType2 != null && prizeType2.intValue() == 2) {
            textView.setText(getString(R$string.recharge_crystal));
        } else {
            textView.setText(rewardBean.getRewardName());
        }
    }

    public final void setViewBinding(@NotNull FragmentSigninResultBinding fragmentSigninResultBinding) {
        Intrinsics.checkNotNullParameter(fragmentSigninResultBinding, "<set-?>");
        this.viewBinding = fragmentSigninResultBinding;
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J3\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0002\u0010\fJ\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0007¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;", "", "()V", "showDialog", "Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "growTaskBean", "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "isLastTask", "", "isGiftBag", "(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;ZLjava/lang/Boolean;)Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;", "signinBean", "Lcom/guochao/faceshow/signin/bean/SigninResponse;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ SignInResultDialog showDialog$default(Companion companion, FragmentManager fragmentManager, GrowTaskBean growTaskBean, boolean z10, Boolean bool, int i9, Object obj) {
            if ((i9 & 8) != 0) {
                bool = null;
            }
            return companion.showDialog(fragmentManager, growTaskBean, z10, bool);
        }

        @JvmStatic
        @NotNull
        public final SignInResultDialog showDialog(@NotNull FragmentManager fragmentManager, @NotNull SigninResponse signinBean) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            Intrinsics.checkNotNullParameter(signinBean, "signinBean");
            SignInResultDialog signInResultDialog = new SignInResultDialog();
            Bundle bundle = new Bundle();
            bundle.putParcelable("SigninBean", signinBean);
            signInResultDialog.setArguments(bundle);
            signInResultDialog.show(fragmentManager, SignInResultDialog.class.getSimpleName());
            return signInResultDialog;
        }

        @JvmStatic
        @NotNull
        public final SignInResultDialog showDialog(@NotNull FragmentManager fragmentManager, @Nullable GrowTaskBean growTaskBean, boolean z10, @Nullable Boolean bool) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            SignInResultDialog signInResultDialog = new SignInResultDialog();
            Bundle bundle = new Bundle();
            bundle.putParcelable("GrowTaskBean", growTaskBean);
            bundle.putBoolean("isLastTask", z10);
            bundle.putBoolean("isGiftBag", bool != null ? bool.booleanValue() : false);
            signInResultDialog.setArguments(bundle);
            signInResultDialog.show(fragmentManager, SignInResultDialog.class.getSimpleName());
            return signInResultDialog;
        }
    }
}
