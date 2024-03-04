package com.guochao.faceshow.component.f2fmatch.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.component.f2fmatch.R$string;
import com.guochao.faceshow.component.f2fmatch.databinding.FragmentF2fGuideBinding;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0012\u0010\u0010\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fGuideFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "viewBinding", "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fGuideBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fGuideBinding;", "setViewBinding", "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fGuideBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityCreated", "onCancel", "dialog", "Landroid/content/DialogInterface;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "onDismiss", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fGuideFragment extends GCCoreFragment {
    public FragmentF2fGuideBinding viewBinding;

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m615initView$lambda0(F2fGuideFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    @NotNull
    public final FragmentF2fGuideBinding getViewBinding() {
        FragmentF2fGuideBinding fragmentF2fGuideBinding = this.viewBinding;
        if (fragmentF2fGuideBinding != null) {
            return fragmentF2fGuideBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        root.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        getViewBinding().f25103ok.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fGuideFragment.m615initView$lambda0(F2fGuideFragment.this, view);
            }
        });
        TextView textView = getViewBinding().tips1;
        int i9 = R$string.match_tips1;
        boolean z10 = true;
        Object[] objArr = new Object[1];
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        objArr[0] = getString((current == null || current.getGender() != 0) ? false : false ? R$string.f2f_female : R$string.f2f_male);
        textView.setText(getString(i9, objArr));
        FrameLayout frameLayout = getViewBinding().layout;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "viewBinding.layout");
        if (ViewCompat.isLaidOut(frameLayout) && !frameLayout.isLayoutRequested()) {
            int min = Math.min(DensityUtil.dp2px(388.0f), frameLayout.getMeasuredHeight());
            if (min != frameLayout.getMeasuredHeight()) {
                frameLayout.getLayoutParams().height = min;
                frameLayout.requestLayout();
                return;
            }
            return;
        }
        frameLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fGuideFragment$initView$$inlined$doOnLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(@NotNull View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                Intrinsics.checkNotNullParameter(view, "view");
                view.removeOnLayoutChangeListener(this);
                int min2 = Math.min(DensityUtil.dp2px(388.0f), view.getMeasuredHeight());
                if (min2 != view.getMeasuredHeight()) {
                    view.getLayoutParams().height = min2;
                    view.requestLayout();
                }
            }
        });
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(true);
            dialog.setCanceledOnTouchOutside(true);
            Window window = dialog.getWindow();
            if (window != null) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                if (attributes != null) {
                    Intrinsics.checkNotNullExpressionValue(attributes, "attributes");
                    attributes.width = -1;
                    attributes.height = -1;
                } else {
                    attributes = null;
                }
                window.setAttributes(attributes);
                window.setLayout(-1, -1);
            }
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onCancel(dialog);
        ja.a.b().e("KEY_F2F_GUIDE");
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createCenterDialog();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        ja.a.b().e("KEY_F2F_GUIDE");
    }

    public final void setViewBinding(@NotNull FragmentF2fGuideBinding fragmentF2fGuideBinding) {
        Intrinsics.checkNotNullParameter(fragmentF2fGuideBinding, "<set-?>");
        this.viewBinding = fragmentF2fGuideBinding;
    }
}
