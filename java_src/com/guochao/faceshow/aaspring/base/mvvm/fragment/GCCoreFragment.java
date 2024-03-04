package com.guochao.faceshow.aaspring.base.mvvm.fragment;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatDialog;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.mvvm.MvvmUtils;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.lib_base.R$color;
import com.guochao.lib_base.R$style;
import java.lang.reflect.Field;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bA\u0010BJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0017J\u0013\u0010\u0019\u001a\u00020\u00182\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0097\u0002J\u000e\u0010\u001b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001aH\u0017J\u0010\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0016J\u0010\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0003H\u0016J\u001a\u0010#\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 2\b\u0010\"\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010$\u001a\u00020\u0005H\u0016J\u0014\u0010&\u001a\u00020\u00052\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u001cH\u0017J\b\u0010'\u001a\u00020\u0005H\u0017J\u0014\u0010(\u001a\u00020\u00052\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u001cH\u0017J\b\u0010)\u001a\u00020\u0005H\u0016J\b\u0010+\u001a\u00020*H\u0016J\b\u0010-\u001a\u00020,H\u0016J\b\u0010.\u001a\u00020,H\u0016J\b\u00100\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020\u0003H\u0016R\u0016\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0004\u00102R\u001a\u00103\u001a\u00020*8\u0016X\u0096D¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b3\u00105R\u0018\u00107\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u00109\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u001c\u0010;\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010@\u001a\u00020=8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?¨\u0006C"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "Landroidx/fragment/app/DialogFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;", "", "mGravity", "", "setGravity", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "root", "initView", "Lcom/guochao/faceshow/aaspring/base/http/client/a;", "getHttpClient", "", TCConstants.VIDEO_RECORD_VIDEPATH, "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;", "post", "Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;", "get", "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;", "lastRequest", "", "toastStr", "showToast", "resId", "Landroidx/fragment/app/FragmentManager;", "manager", "tag", "show", "dismiss", "msg", "showProgressDialog", "dismissProgressDialog", "showLoading", "dismissLoading", "", "isProgressLoading", "Landroidx/appcompat/app/AppCompatDialog;", "createCenterDialog", "createFullscreenDialog", "Landroid/app/Dialog;", "createBottomDialog", "theme", "I", "isDialog", "Z", "()Z", "Landroidx/viewbinding/ViewBinding;", "vb", "Landroidx/viewbinding/ViewBinding;", "mFaceCastHttpClient", "Lcom/guochao/faceshow/aaspring/base/http/client/a;", "mLastRequest", "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;", "Lkotlinx/coroutines/CoroutineScope;", "getLifecycleSupportedScope", "()Lkotlinx/coroutines/CoroutineScope;", "lifecycleSupportedScope", "<init>", "()V", "lib_core_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class GCCoreFragment extends DialogFragment implements ICoroutineEvent {
    private final boolean isDialog;
    @Nullable
    private com.guochao.faceshow.aaspring.base.http.client.a mFaceCastHttpClient;
    @JvmField
    public int mGravity = 80;
    @Nullable
    private BaseFaceCastRequest<?> mLastRequest;
    @Nullable

    /* renamed from: vb  reason: collision with root package name */
    private ViewBinding f16296vb;

    public static /* synthetic */ void showLoading$default(GCCoreFragment gCCoreFragment, CharSequence charSequence, int i9, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLoading");
        }
        if ((i9 & 1) != 0) {
            charSequence = null;
        }
        gCCoreFragment.showLoading(charSequence);
    }

    public static /* synthetic */ void showProgressDialog$default(GCCoreFragment gCCoreFragment, CharSequence charSequence, int i9, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showProgressDialog");
        }
        if ((i9 & 1) != 0) {
            charSequence = null;
        }
        gCCoreFragment.showProgressDialog(charSequence);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @Nullable
    public <T> Object asyncCPU(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return ICoroutineEvent.DefaultImpls.asyncCPU(this, function2, continuation);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @Nullable
    public <T> Object asyncCPUG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return ICoroutineEvent.DefaultImpls.asyncCPUG(this, function2, continuation);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @Nullable
    public <T> Object asyncIO(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return ICoroutineEvent.DefaultImpls.asyncIO(this, function2, continuation);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @Nullable
    public <T> Object asyncIOG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return ICoroutineEvent.DefaultImpls.asyncIOG(this, function2, continuation);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @Nullable
    public <T> Object asyncMain(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return ICoroutineEvent.DefaultImpls.asyncMain(this, function2, continuation);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @Nullable
    public <T> Object asyncMainG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return ICoroutineEvent.DefaultImpls.asyncMainG(this, function2, continuation);
    }

    @NotNull
    public Dialog createBottomDialog() {
        this.mGravity = 80;
        return createBottomDialog(getTheme());
    }

    @NotNull
    public AppCompatDialog createCenterDialog() {
        AppCompatDialog appCompatDialog = new AppCompatDialog(requireActivity(), R$style.NormalDialog);
        appCompatDialog.requestWindowFeature(1);
        appCompatDialog.setCanceledOnTouchOutside(true);
        Window window = appCompatDialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(ContextCompat.getColor(requireContext(), R$color.mytranparent)));
            window.setDimAmount(0.6f);
        }
        return appCompatDialog;
    }

    @NotNull
    public AppCompatDialog createFullscreenDialog() {
        AppCompatDialog appCompatDialog = new AppCompatDialog(requireContext(), R$style.NormalDialog);
        appCompatDialog.requestWindowFeature(1);
        appCompatDialog.setCanceledOnTouchOutside(true);
        return appCompatDialog;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        dismissAllowingStateLoss();
    }

    public void dismissLoading() {
        FragmentActivity activity = getActivity();
        if (activity instanceof GCCoreActivity) {
            ((GCCoreActivity) activity).dismissLoading();
        }
    }

    @Deprecated(message = "替换方法", replaceWith = @ReplaceWith(expression = "dismissLoading", imports = {}))
    public void dismissProgressDialog() {
        dismissLoading();
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "已弃用")
    @NotNull
    public GetRequest get(@Nullable String str) {
        GetRequest c10 = new GetRequest().O(getActivity()).P(this).Q(str).c(BaseFaceCastRequest.d.b().c(true));
        this.mLastRequest = c10;
        Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.request.GetRequest");
        return c10;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public CoroutineDispatcher getCpuDispatcher() {
        return ICoroutineEvent.DefaultImpls.getCpuDispatcher(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public CoroutineScope getGlobalScope() {
        return ICoroutineEvent.DefaultImpls.getGlobalScope(this);
    }

    @Nullable
    public com.guochao.faceshow.aaspring.base.http.client.a getHttpClient() {
        com.guochao.faceshow.aaspring.base.http.client.a aVar = this.mFaceCastHttpClient;
        if (aVar == null) {
            com.guochao.faceshow.aaspring.base.http.client.a a10 = h7.a.a(this);
            this.mFaceCastHttpClient = a10;
            return a10;
        }
        return aVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public CoroutineDispatcher getIoDispatcher() {
        return ICoroutineEvent.DefaultImpls.getIoDispatcher(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public CoroutineScope getLifecycleSupportedScope() {
        return LifecycleOwnerKt.getLifecycleScope(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public CoroutineDispatcher getMainDispatcher() {
        return ICoroutineEvent.DefaultImpls.getMainDispatcher(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
    }

    public boolean isDialog() {
        return this.isDialog;
    }

    public boolean isProgressLoading() {
        FragmentActivity activity = getActivity();
        if (activity instanceof GCCoreActivity) {
            return ((GCCoreActivity) activity).isProgressLoading();
        }
        return false;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "已弃用")
    @Nullable
    public BaseFaceCastRequest<?> lastRequest() {
        return this.mLastRequest;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public Job launchCPU(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return ICoroutineEvent.DefaultImpls.launchCPU(this, function2);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public Job launchCPUG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return ICoroutineEvent.DefaultImpls.launchCPUG(this, function2);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public Job launchIO(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return ICoroutineEvent.DefaultImpls.launchIO(this, function2);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public Job launchIOG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return ICoroutineEvent.DefaultImpls.launchIOG(this, function2);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public Job launchMain(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return ICoroutineEvent.DefaultImpls.launchMain(this, function2);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public Job launchMainG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return ICoroutineEvent.DefaultImpls.launchMainG(this, function2);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(isDialog());
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        ViewBinding viewBinding = this.f16296vb;
        if (viewBinding != null) {
            ViewGroup viewGroup2 = (ViewGroup) viewBinding.getRoot().getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(viewBinding.getRoot());
            }
        } else {
            MvvmUtils mvvmUtils = MvvmUtils.INSTANCE;
            LayoutInflater layoutInflater = getLayoutInflater();
            Intrinsics.checkNotNullExpressionValue(layoutInflater, "layoutInflater");
            viewBinding = mvvmUtils.findViewBinding(this, viewGroup, layoutInflater);
            if (viewBinding == null) {
                return null;
            }
            View root = viewBinding.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "root");
            initView(root, bundle);
            this.f16296vb = viewBinding;
        }
        ViewGroup viewGroup3 = (ViewGroup) viewBinding.getRoot().getParent();
        if (viewGroup3 != null) {
            viewGroup3.removeView(viewBinding.getRoot());
        }
        return viewBinding.getRoot();
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "已弃用")
    @NotNull
    public PostRequest post(@Nullable String str) {
        PostRequest c10 = new PostRequest().O(getActivity()).P(this).Q(str).c(BaseFaceCastRequest.d.b().c(true));
        this.mLastRequest = c10;
        Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.request.PostRequest");
        return c10;
    }

    public void setGravity(int i9) {
        this.mGravity = i9;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String str) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        try {
            Field declaredField = DialogFragment.class.getDeclaredField("mDismissed");
            declaredField.setAccessible(true);
            Boolean bool = Boolean.FALSE;
            declaredField.set(this, bool);
            Field declaredField2 = DialogFragment.class.getDeclaredField("mShownByMe");
            declaredField2.setAccessible(true);
            declaredField2.set(this, bool);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        FragmentTransaction beginTransaction = manager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "manager.beginTransaction()");
        beginTransaction.add(this, str);
        beginTransaction.setReorderingAllowed(true);
        beginTransaction.commitAllowingStateLoss();
    }

    @JvmOverloads
    public final void showLoading() {
        showLoading$default(this, null, 1, null);
    }

    @JvmOverloads
    public void showLoading(@Nullable CharSequence charSequence) {
        FragmentActivity activity = getActivity();
        if (activity instanceof GCCoreActivity) {
            ((GCCoreActivity) activity).showLoading(charSequence);
        }
    }

    @Deprecated(message = "替换方法", replaceWith = @ReplaceWith(expression = "showLoading", imports = {}))
    public void showProgressDialog(@Nullable CharSequence charSequence) {
        showLoading(charSequence);
    }

    public void showToast(@NotNull CharSequence toastStr) {
        Intrinsics.checkNotNullParameter(toastStr, "toastStr");
        if (getActivity() == null || requireActivity().isDestroyed() || requireActivity().isFinishing()) {
            return;
        }
        ToastUtils.showToast$default(getActivity(), toastStr, 0, 0, 12, null);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @Nullable
    public <T> Object withCPU(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return ICoroutineEvent.DefaultImpls.withCPU(this, function2, continuation);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @Nullable
    public <T> Object withIO(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return ICoroutineEvent.DefaultImpls.withIO(this, function2, continuation);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @Nullable
    public <T> Object withMain(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return ICoroutineEvent.DefaultImpls.withMain(this, function2, continuation);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @Nullable
    public <T> Object withNonCancellable(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return ICoroutineEvent.DefaultImpls.withNonCancellable(this, function2, continuation);
    }

    @NotNull
    public Dialog createBottomDialog(int i9) {
        AppCompatDialog appCompatDialog = new AppCompatDialog(requireActivity(), i9);
        Window window = appCompatDialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(ContextCompat.getColor(requireContext(), R$color.mytranparent)));
        }
        appCompatDialog.requestWindowFeature(1);
        appCompatDialog.setCanceledOnTouchOutside(true);
        Window window2 = appCompatDialog.getWindow();
        WindowManager.LayoutParams attributes = window2 != null ? window2.getAttributes() : null;
        if (attributes != null) {
            attributes.gravity = this.mGravity;
        }
        if (attributes != null) {
            attributes.width = -1;
        }
        if (attributes != null) {
            attributes.height = -2;
        }
        if (window2 != null) {
            window2.setAttributes(attributes);
        }
        if (window2 != null) {
            window2.setDimAmount(0.0f);
        }
        return appCompatDialog;
    }

    public void showToast(int i9) {
        if (getActivity() == null || requireActivity().isDestroyed() || requireActivity().isFinishing()) {
            return;
        }
        ToastUtils.showToast$default(getActivity(), i9, 0, 4, null);
    }
}
