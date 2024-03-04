package com.guochao.component.mvp.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\u001a\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\n\u001a\u00020\u0004H\u0014J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;", "Lcom/guochao/component/mvp/fragment/FullWidthBaseFragment;", "()V", "initListener", "", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "loadDataAndObserve", "onCreate", "onStart", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class FullWidthCenterFragment extends FullWidthBaseFragment {
    @Override // com.guochao.component.mvp.fragment.FullWidthBaseFragment
    protected void initListener() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.mvp.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        initListener();
        loadDataAndObserve();
    }

    @Override // com.guochao.component.mvp.fragment.FullWidthBaseFragment
    protected void loadDataAndObserve() {
    }

    @Override // com.guochao.component.mvp.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.guochao.component.mvp.fragment.FullWidthBaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        Window window2;
        Window window3;
        Window window4;
        WindowManager windowManager;
        Display defaultDisplay;
        super.onStart();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        FragmentActivity activity = getActivity();
        if (activity != null && (windowManager = activity.getWindowManager()) != null && (defaultDisplay = windowManager.getDefaultDisplay()) != null) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        int dp2px = displayMetrics.widthPixels - DensityUtil.dp2px(74.0f);
        Dialog dialog = getDialog();
        if (dialog != null && (window4 = dialog.getWindow()) != null) {
            window4.setGravity(17);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window3 = dialog2.getWindow()) != null) {
            window3.setLayout(dp2px, -2);
        }
        Dialog dialog3 = getDialog();
        WindowManager.LayoutParams attributes = (dialog3 == null || (window2 = dialog3.getWindow()) == null) ? null : window2.getAttributes();
        if (attributes != null) {
            attributes.dimAmount = 0.6f;
        }
        Dialog dialog4 = getDialog();
        Window window5 = dialog4 != null ? dialog4.getWindow() : null;
        if (window5 != null) {
            window5.setAttributes(attributes);
        }
        Dialog dialog5 = getDialog();
        if (dialog5 == null || (window = dialog5.getWindow()) == null) {
            return;
        }
        window.addFlags(2);
    }
}
