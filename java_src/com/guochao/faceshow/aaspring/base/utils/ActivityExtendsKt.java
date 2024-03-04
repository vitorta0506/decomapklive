package com.guochao.faceshow.aaspring.base.utils;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.MvvmUtils;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.base.titlebar.EmptyTitleBar;
import com.guochao.faceshow.aaspring.base.titlebar.ToolbarTitleBar;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.lib_core.R$id;
import com.tencent.ugc.UGCTransitionRules;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0014\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a\n\u0010\b\u001a\u00020\t*\u00020\n\u001a\f\u0010\u000b\u001a\u00020\t*\u00020\nH\u0002\u001a\n\u0010\f\u001a\u00020\u0004*\u00020\r\u001a\n\u0010\u000e\u001a\u00020\u0004*\u00020\u0005\"\u0018\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00018\u0002X\u0083\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"field", "Ljava/lang/reflect/Field;", "kotlin.jvm.PlatformType", "findViewBindingAndSet", "", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;", "savedInstanceState", "Landroid/os/Bundle;", "fixOrientation", "", "Landroid/app/Activity;", "isTranslucentOrFloating", "safeRegisterEventBus", "Landroidx/lifecycle/LifecycleOwner;", "setStatusBar", "lib_core_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ActivityExtendsKt {
    private static final Field field;

    static {
        Field declaredField = Activity.class.getDeclaredField("mActivityInfo");
        declaredField.setAccessible(true);
        field = declaredField;
    }

    public static final void findViewBindingAndSet(@NotNull GCCoreActivity gCCoreActivity, @Nullable Bundle bundle) {
        View root;
        Intrinsics.checkNotNullParameter(gCCoreActivity, "<this>");
        ViewGroup viewGroup = (ViewGroup) gCCoreActivity.getWindow().findViewById(16908290);
        long currentTimeMillis = System.currentTimeMillis();
        MvvmUtils mvvmUtils = MvvmUtils.INSTANCE;
        LayoutInflater layoutInflater = gCCoreActivity.getLayoutInflater();
        Intrinsics.checkNotNullExpressionValue(layoutInflater, "layoutInflater");
        ViewBinding findViewBinding = mvvmUtils.findViewBinding(gCCoreActivity, viewGroup, layoutInflater);
        LogUtils.i("GCViewBinding", "take " + (System.currentTimeMillis() - currentTimeMillis) + "ms to find viewBinding for " + gCCoreActivity.getClass());
        if (findViewBinding == null || (root = findViewBinding.getRoot()) == null) {
            return;
        }
        if (Intrinsics.areEqual(viewGroup, root)) {
            gCCoreActivity.onContentChanged();
        } else {
            gCCoreActivity.setContentView(root);
        }
        View findViewById = root.findViewById(R$id.toolbar);
        if (findViewById == null) {
            findViewById = root.findViewById(R$id.gc_tool_bar);
        }
        if (findViewById != null) {
            ViewParent parent = findViewById.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            gCCoreActivity.setTitleBarController(new ToolbarTitleBar(gCCoreActivity, (ViewGroup) parent, gCCoreActivity, null, null, 24, null));
            ((Toolbar) findViewById).setOnMenuItemClickListener(gCCoreActivity);
        } else {
            gCCoreActivity.setTitleBarController(new EmptyTitleBar(gCCoreActivity));
        }
        gCCoreActivity.initView(bundle);
    }

    public static final boolean fixOrientation(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        if (Build.VERSION.SDK_INT == 26 && isTranslucentOrFloating(activity)) {
            try {
                Object obj = field.get(activity);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.content.pm.ActivityInfo");
                ((ActivityInfo) obj).screenOrientation = -1;
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        activity.setRequestedOrientation(1);
        return false;
    }

    private static final boolean isTranslucentOrFloating(Activity activity) {
        Method method;
        boolean booleanValue;
        boolean z10 = false;
        try {
            Object obj = Class.forName("com.android.internal.R$styleable").getField("Window").get(null);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.IntArray");
            TypedArray obtainStyledAttributes = activity.obtainStyledAttributes((int[]) obj);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(styleableRes)");
            method = ActivityInfo.class.getMethod("isTranslucentOrFloating", TypedArray.class);
            method.setAccessible(true);
            Object invoke = method.invoke(null, obtainStyledAttributes);
            Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Boolean");
            booleanValue = ((Boolean) invoke).booleanValue();
        } catch (Exception unused) {
        }
        try {
            method.setAccessible(false);
            return booleanValue;
        } catch (Exception unused2) {
            z10 = booleanValue;
            return z10;
        }
    }

    public static final void safeRegisterEventBus(@NotNull LifecycleOwner lifecycleOwner) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        if (lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        lifecycleOwner.getLifecycle().addObserver(new DefaultLifecycleObserver() { // from class: com.guochao.faceshow.aaspring.base.utils.ActivityExtendsKt$safeRegisterEventBus$1
            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public void onCreate(@NotNull LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                androidx.lifecycle.a.a(this, owner);
                if (EventBus.getDefault().isRegistered(owner)) {
                    return;
                }
                EventBus.getDefault().register(owner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public void onDestroy(@NotNull LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                androidx.lifecycle.a.b(this, owner);
                if (EventBus.getDefault().isRegistered(owner)) {
                    EventBus.getDefault().unregister(owner);
                }
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.a.c(this, lifecycleOwner2);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.a.d(this, lifecycleOwner2);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.a.e(this, lifecycleOwner2);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.a.f(this, lifecycleOwner2);
            }
        });
    }

    public static final void setStatusBar(@NotNull GCCoreActivity gCCoreActivity) {
        Intrinsics.checkNotNullParameter(gCCoreActivity, "<this>");
        if (gCCoreActivity.useImmersiveStatusBar()) {
            gCCoreActivity.getWindow().addFlags(Integer.MIN_VALUE);
            gCCoreActivity.getWindow().setStatusBarColor(0);
            gCCoreActivity.getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
            gCCoreActivity.setLightStatusBar(gCCoreActivity.useBlackTextStatusBar());
        }
    }
}
