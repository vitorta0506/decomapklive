package com.guochao.faceshow.component.live.utils;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.utils.ScreenTools;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;", "", "()V", "addFloatFragment", "", "fragment", "Landroidx/fragment/app/Fragment;", PushConstants.INTENT_ACTIVITY_NAME, "Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;", "setDefaultFragmentViewHeight", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class FloatFragmentUtils {
    @NotNull
    public static final FloatFragmentUtils INSTANCE = new FloatFragmentUtils();

    private FloatFragmentUtils() {
    }

    @JvmStatic
    public static final void addFloatFragment(@NotNull Fragment fragment, @NotNull BaseLiveActivity activity) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(activity, "activity");
        FragmentTransaction beginTransaction = activity.getSupportFragmentManager().beginTransaction();
        beginTransaction.addToBackStack(null);
        beginTransaction.setCustomAnimations(R.anim.bottom_to_top, R.anim.do_nothing, R.anim.do_nothing, R.anim.top_to_bottom);
        beginTransaction.replace(R.id.live_float_chat, fragment);
        beginTransaction.commitAllowingStateLoss();
    }

    @JvmStatic
    public static final void setDefaultFragmentViewHeight(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            Context context = view.getContext();
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
            layoutParams.height = (int) (ScreenTools.getScreenRealHeight((Activity) context) * 0.7f);
            view.requestLayout();
        }
    }
}
