package com.guochao.component.mvp.fragment;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\u001a\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\n\u001a\u00020\u0004H\u0014J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\f\u001a\u00020\r2\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016¨\u0006\u000f"}, d2 = {"Lcom/guochao/component/mvp/fragment/FullWidthBaseFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "initListener", "", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "loadDataAndObserve", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "onStart", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class FullWidthBaseFragment extends GCCoreFragment {
    protected void initListener() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        initListener();
        loadDataAndObserve();
    }

    protected void loadDataAndObserve() {
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = getDialog();
        Window window = dialog != null ? dialog.getWindow() : null;
        if (window != null) {
            window.setNavigationBarColor(-1);
        }
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        Intrinsics.checkNotNullExpressionValue(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        return onCreateDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        Window window2;
        Window window3;
        Window window4;
        Window window5;
        Window window6;
        WindowManager windowManager;
        Display defaultDisplay;
        super.onStart();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        FragmentActivity activity = getActivity();
        if (activity != null && (windowManager = activity.getWindowManager()) != null && (defaultDisplay = windowManager.getDefaultDisplay()) != null) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        Dialog dialog = getDialog();
        if (dialog != null && (window6 = dialog.getWindow()) != null) {
            if (Build.VERSION.SDK_INT > 29) {
                window6.addFlags(Integer.MIN_VALUE);
                window6.clearFlags(67108864);
            } else {
                window6.addFlags(67108864);
            }
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window5 = dialog2.getWindow()) != null) {
            window5.setGravity(80);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null && (window4 = dialog3.getWindow()) != null) {
            window4.setLayout(-1, -2);
        }
        Dialog dialog4 = getDialog();
        if (dialog4 != null && (window3 = dialog4.getWindow()) != null) {
            window3.setBackgroundDrawable(new ColorDrawable(0));
        }
        Dialog dialog5 = getDialog();
        WindowManager.LayoutParams attributes = (dialog5 == null || (window2 = dialog5.getWindow()) == null) ? null : window2.getAttributes();
        if (attributes != null) {
            attributes.dimAmount = 0.0f;
        }
        Dialog dialog6 = getDialog();
        Window window7 = dialog6 != null ? dialog6.getWindow() : null;
        if (window7 != null) {
            window7.setAttributes(attributes);
        }
        Dialog dialog7 = getDialog();
        if (dialog7 == null || (window = dialog7.getWindow()) == null) {
            return;
        }
        window.addFlags(2);
    }
}
