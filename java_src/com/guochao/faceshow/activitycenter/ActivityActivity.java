package com.guochao.faceshow.activitycenter;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.activitycenter.fragment.ActivityCenterFragment;
import com.guochao.faceshow.databinding.ActivityActivityBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/activitycenter/ActivityActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;", "()V", "viewBinding", "Lcom/guochao/faceshow/databinding/ActivityActivityBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/ActivityActivityBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/ActivityActivityBinding;)V", "initView", "", "savedInstanceSate", "Landroid/os/Bundle;", "replaceFragment", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ActivityActivity extends GCCoreActivity {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public ActivityActivityBinding viewBinding;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/activitycenter/ActivityActivity$Companion;", "", "()V", "start", "", "context", "Landroid/content/Context;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void start(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.startActivity(new Intent(context, ActivityActivity.class));
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void replaceFragment() {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "supportFragmentManager.beginTransaction()");
        beginTransaction.replace(R.id.replaceHolderFL, ActivityCenterFragment.Companion.newInstance());
        beginTransaction.commit();
    }

    @NotNull
    public final ActivityActivityBinding getViewBinding() {
        ActivityActivityBinding activityActivityBinding = this.viewBinding;
        if (activityActivityBinding != null) {
            return activityActivityBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(R.string.activity_center_title);
        getViewBinding();
        replaceFragment();
    }

    public final void setViewBinding(@NotNull ActivityActivityBinding activityActivityBinding) {
        Intrinsics.checkNotNullParameter(activityActivityBinding, "<set-?>");
        this.viewBinding = activityActivityBinding;
    }
}
