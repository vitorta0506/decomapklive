package com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.PayLoadingDialog;
import com.guochao.faceshow.databinding.DialogPayLoadingBinding;
import com.guochao.faceshow.utils.HandlerGetter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0012\u0010\u0015\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0005\"\u0004\b\u0006\u0010\u0007R$\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "isShow", "", "()Z", "setShow", "(Z)V", "viewBinding", "Lcom/guochao/faceshow/databinding/DialogPayLoadingBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/DialogPayLoadingBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/DialogPayLoadingBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PayLoadingDialog extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final List<WeakReference<PayLoadingDialog>> showingDialogs = new ArrayList();
    private boolean isShow;
    public DialogPayLoadingBinding viewBinding;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nR\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;", "", "()V", "showingDialogs", "", "Ljava/lang/ref/WeakReference;", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;", "getShowingDialogs", "()Ljava/util/List;", "dismissDialog", "", "showDialog", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: dismissDialog$lambda-2  reason: not valid java name */
        public static final void m424dismissDialog$lambda2() {
            Iterator<T> it = PayLoadingDialog.Companion.getShowingDialogs().iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                if (weakReference.get() != null) {
                    Object obj = weakReference.get();
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.PayLoadingDialog");
                    ((PayLoadingDialog) obj).dismissAllowingStateLoss();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: showDialog$lambda-0  reason: not valid java name */
        public static final void m425showDialog$lambda0() {
            Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
            if (currTopActivity instanceof FragmentActivity) {
                PayLoadingDialog payLoadingDialog = new PayLoadingDialog();
                PayLoadingDialog.Companion.getShowingDialogs().add(new WeakReference<>(payLoadingDialog));
                FragmentManager supportFragmentManager = ((FragmentActivity) currTopActivity).getSupportFragmentManager();
                Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "currTopActivity.supportFragmentManager");
                payLoadingDialog.show(supportFragmentManager, PayLoadingDialog.class.getSimpleName());
            }
        }

        public final void dismissDialog() {
            HandlerGetter.runOnUIThread$default(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.j
                @Override // java.lang.Runnable
                public final void run() {
                    PayLoadingDialog.Companion.m424dismissDialog$lambda2();
                }
            }, null, 2, null);
        }

        @NotNull
        public final List<WeakReference<PayLoadingDialog>> getShowingDialogs() {
            return PayLoadingDialog.showingDialogs;
        }

        public final void showDialog() {
            HandlerGetter.runOnUIThread(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.i
                @Override // java.lang.Runnable
                public final void run() {
                    PayLoadingDialog.Companion.m425showDialog$lambda0();
                }
            }, 400L);
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    @NotNull
    public final DialogPayLoadingBinding getViewBinding() {
        DialogPayLoadingBinding dialogPayLoadingBinding = this.viewBinding;
        if (dialogPayLoadingBinding != null) {
            return dialogPayLoadingBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        Drawable drawable = getViewBinding().imageLoading.getDrawable();
        Intrinsics.checkNotNull(drawable, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        ((AnimationDrawable) drawable).start();
    }

    public final boolean isShow() {
        return this.isShow;
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
        createCenterDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.PayLoadingDialog$onCreateDialog$1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(@Nullable DialogInterface dialogInterface, int i9, @Nullable KeyEvent keyEvent) {
                return i9 == 4;
            }
        });
        if (window != null) {
            window.setDimAmount(0.0f);
        }
        return createCenterDialog;
    }

    public final void setShow(boolean z10) {
        this.isShow = z10;
    }

    public final void setViewBinding(@NotNull DialogPayLoadingBinding dialogPayLoadingBinding) {
        Intrinsics.checkNotNullParameter(dialogPayLoadingBinding, "<set-?>");
        this.viewBinding = dialogPayLoadingBinding;
    }
}
