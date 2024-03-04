package com.guochao.component.mvp.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.FragmentManager;
import com.guochao.component.mvp.databinding.FragmentMvpHelperBinding;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.utils.ScreenTools;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0012\u0010\u0010\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/guochao/component/mvp/fragment/MvpHelperDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "viewBinding", "Lcom/guochao/component/mvp/databinding/FragmentMvpHelperBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/FragmentMvpHelperBinding;", "setViewBinding", "(Lcom/guochao/component/mvp/databinding/FragmentMvpHelperBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "Companion", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MvpHelperDialog extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public FragmentMvpHelperBinding viewBinding;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/component/mvp/fragment/MvpHelperDialog$Companion;", "", "()V", "showDialog", "Lcom/guochao/component/mvp/fragment/MvpHelperDialog;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final MvpHelperDialog showDialog(@NotNull FragmentManager fragmentManager) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            MvpHelperDialog mvpHelperDialog = new MvpHelperDialog();
            mvpHelperDialog.show(fragmentManager, MvpHelperDialog.class.getSimpleName());
            return mvpHelperDialog;
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m259initView$lambda0(MvpHelperDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m260initView$lambda1(MvpHelperDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    @JvmStatic
    @NotNull
    public static final MvpHelperDialog showDialog(@NotNull FragmentManager fragmentManager) {
        return Companion.showDialog(fragmentManager);
    }

    @NotNull
    public final FragmentMvpHelperBinding getViewBinding() {
        FragmentMvpHelperBinding fragmentMvpHelperBinding = this.viewBinding;
        if (fragmentMvpHelperBinding != null) {
            return fragmentMvpHelperBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getViewBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MvpHelperDialog.m259initView$lambda0(MvpHelperDialog.this, view);
            }
        });
        getViewBinding().tvIKnow.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MvpHelperDialog.m260initView$lambda1(MvpHelperDialog.this, view);
            }
        });
        getViewBinding().llContent.getLayoutParams().height = (int) ((ScreenTools.getScreenHeight() * 3.0f) / 4.0f);
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

    public final void setViewBinding(@NotNull FragmentMvpHelperBinding fragmentMvpHelperBinding) {
        Intrinsics.checkNotNullParameter(fragmentMvpHelperBinding, "<set-?>");
        this.viewBinding = fragmentMvpHelperBinding;
    }
}
