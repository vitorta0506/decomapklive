package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;", "", "()V", "popupWindow", "Landroid/widget/PopupWindow;", "getPopupWindow", "()Landroid/widget/PopupWindow;", "setPopupWindow", "(Landroid/widget/PopupWindow;)V", "hidePop", "", "showPopupIfNeed", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SendToAllUserGuidPop {
    @Nullable
    private PopupWindow popupWindow;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showPopupIfNeed$lambda-2  reason: not valid java name */
    public static final void m410showPopupIfNeed$lambda2(SendToAllUserGuidPop this$0, View view) {
        int width;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "$view");
        PopupWindow popupWindow = new PopupWindow(view.getContext());
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i9 = view.getContext().getResources().getDisplayMetrics().widthPixels;
        if (q7.a.e().j()) {
            width = iArr[0] + (view.getWidth() / 2);
        } else {
            width = i9 - (iArr[0] + (view.getWidth() / 2));
        }
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setTouchable(false);
        popupWindow.setOutsideTouchable(false);
        TextView textView = new TextView(view.getContext());
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView.setText(R.string.gift_all_tips);
        textView.setGravity(17);
        textView.setTextSize(14.0f);
        textView.setTextColor(-1);
        textView.setBackgroundResource(R.drawable.gift_top_remind);
        textView.measure(View.MeasureSpec.makeMeasureSpec(width * 2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(10000, Integer.MIN_VALUE));
        popupWindow.setContentView(textView);
        popupWindow.setWidth(textView.getMeasuredWidth());
        popupWindow.setHeight(textView.getMeasuredHeight());
        if (q7.a.e().j()) {
            popupWindow.showAsDropDown(view, -iArr[0], DensityUtil.dp2px(10.0f), 3);
        } else {
            popupWindow.showAsDropDown(view, 0, DensityUtil.dp2px(10.0f), GravityCompat.START);
        }
        this$0.popupWindow = popupWindow;
    }

    @Nullable
    public final PopupWindow getPopupWindow() {
        return this.popupWindow;
    }

    public final void hidePop() {
        ja.a.b().e("KEY_SEND_TO_ALL");
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        try {
            popupWindow.dismiss();
            this.popupWindow = null;
        } catch (Exception unused) {
        }
    }

    public final void setPopupWindow(@Nullable PopupWindow popupWindow) {
        this.popupWindow = popupWindow;
    }

    public final void showPopupIfNeed(@NotNull final View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view.getVisibility() == 0 && ja.a.b().f("KEY_SEND_TO_ALL")) {
            HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.w
                @Override // java.lang.Runnable
                public final void run() {
                    SendToAllUserGuidPop.m410showPopupIfNeed$lambda2(SendToAllUserGuidPop.this, view);
                }
            });
        }
    }
}
