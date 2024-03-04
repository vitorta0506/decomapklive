package com.guochao.faceshow.signin.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.signin.R$string;
import com.guochao.faceshow.signin.databinding.ActivitySigninCenterRulesBinding;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;", "()V", "viewBinding", "Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;", "setViewBinding", "(Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;)V", "initView", "", "savedInstanceSate", "Landroid/os/Bundle;", "Companion", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserSigninCenterRulesActivity extends GCCoreActivity {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public ActivitySigninCenterRulesBinding viewBinding;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity$Companion;", "", "()V", "start", "", "context", "Landroid/content/Context;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void start(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.startActivity(new Intent(context, UserSigninCenterRulesActivity.class));
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m744initView$lambda0(UserSigninCenterRulesActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    @JvmStatic
    public static final void start(@NotNull Context context) {
        Companion.start(context);
    }

    @NotNull
    public final ActivitySigninCenterRulesBinding getViewBinding() {
        ActivitySigninCenterRulesBinding activitySigninCenterRulesBinding = this.viewBinding;
        if (activitySigninCenterRulesBinding != null) {
            return activitySigninCenterRulesBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        getViewBinding().statusBarSpace.getLayoutParams().height = StatusBarHelper.getStatusbarHeight(this);
        getViewBinding().ivLeftBack.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.activity.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserSigninCenterRulesActivity.m744initView$lambda0(UserSigninCenterRulesActivity.this, view);
            }
        });
        TextViewUtils.setCustomBold(getViewBinding().tvTitle, getViewBinding().rulesTitle2, getViewBinding().rulesTitle3);
        TextView textView = getViewBinding().rulesContent2;
        textView.setText(getString(R$string.signin_center_primary_content2_1) + '\n' + getString(R$string.signin_center_primary_content2_2) + '\n' + getString(R$string.signin_center_primary_content2_3));
        TextView textView2 = getViewBinding().rulesContent3;
        textView2.setText(getString(R$string.signin_center_primary_content3_1) + '\n' + getString(R$string.signin_center_primary_content3_2) + '\n' + getString(R$string.signin_center_primary_content3_3) + '\n' + getString(R$string.signin_center_primary_content3_4) + '\n' + getString(R$string.signin_center_primary_content3_5));
    }

    public final void setViewBinding(@NotNull ActivitySigninCenterRulesBinding activitySigninCenterRulesBinding) {
        Intrinsics.checkNotNullParameter(activitySigninCenterRulesBinding, "<set-?>");
        this.viewBinding = activitySigninCenterRulesBinding;
    }
}
