package com.guochao.faceshow.component.f2fmatch.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.fragment.app.Fragment;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.material.R;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.component.f2fmatch.R$drawable;
import com.guochao.faceshow.component.f2fmatch.R$id;
import com.guochao.faceshow.component.f2fmatch.databinding.FragmentF2fMatchHistoryBinding;
import com.guochao.lib_base.R$style;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0012\u0010\u0010\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchHistoryFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "viewBinding", "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchHistoryBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchHistoryBinding;", "setViewBinding", "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchHistoryBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "onViewCreated", ViewHierarchyConstants.VIEW_KEY, "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMatchHistoryFragment extends GCCoreFragment {
    public FragmentF2fMatchHistoryBinding viewBinding;

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    @NotNull
    public final FragmentF2fMatchHistoryBinding getViewBinding() {
        FragmentF2fMatchHistoryBinding fragmentF2fMatchHistoryBinding = this.viewBinding;
        if (fragmentF2fMatchHistoryBinding != null) {
            return fragmentF2fMatchHistoryBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getChildFragmentManager().beginTransaction().replace(R$id.content, Fragment.instantiate(requireContext(), "com.guochao.faceshow.aaspring.modulars.onevone.history.F2fHistoryFragment2")).commitAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return new BottomSheetDialog(requireContext(), R$style.BottomSheetDialogStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Window window;
        View findViewById;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null || (findViewById = window.findViewById(R.id.design_bottom_sheet)) == null) {
            return;
        }
        findViewById.setBackgroundResource(R$drawable.bg_f2f_history);
    }

    public final void setViewBinding(@NotNull FragmentF2fMatchHistoryBinding fragmentF2fMatchHistoryBinding) {
        Intrinsics.checkNotNullParameter(fragmentF2fMatchHistoryBinding, "<set-?>");
        this.viewBinding = fragmentF2fMatchHistoryBinding;
    }
}
