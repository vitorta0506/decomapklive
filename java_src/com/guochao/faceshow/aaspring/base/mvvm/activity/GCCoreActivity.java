package com.guochao.faceshow.aaspring.base.mvvm.activity;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LifecycleOwnerKt;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.loading.LoadingDialog;
import com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent;
import com.guochao.faceshow.aaspring.base.navigator.ARouterNavigator;
import com.guochao.faceshow.aaspring.base.navigator.GCNavigator;
import com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar;
import com.guochao.faceshow.aaspring.base.titlebar.ToolbarTitleBar;
import com.guochao.faceshow.aaspring.base.utils.ActivityExtendsKt;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.listener.OnBackButtonPressedHandler;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.lib_core.R$id;
import com.guochao.lib_core.R$layout;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\bc\u0010dJ\u0012\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\n\u001a\u00020\bH\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\bH\u0014J\u001a\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0017J\u0012\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0017J\u000e\u0010\u001d\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001cH\u0016J\u0012\u0010\u001f\u001a\u00020\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0006H&J\u0012\u0010\"\u001a\u00020\u00142\b\u0010!\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010%\u001a\u00020\b2\b\u0010$\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010%\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u0010H\u0016J\u000e\u0010(\u001a\u00020'2\u0006\u0010\u0017\u001a\u00020\u0016J\u0018\u0010-\u001a\u00020\b2\u0006\u0010*\u001a\u00020)2\u0006\u0010,\u001a\u00020+H\u0016J\u0010\u0010/\u001a\u00020\b2\u0006\u0010.\u001a\u00020\u0014H\u0017J\u0010\u00101\u001a\u00020\b2\u0006\u00100\u001a\u00020\u0014H\u0016J\b\u00102\u001a\u00020\u0014H\u0016J\b\u00103\u001a\u00020\u0014H\u0016J\u0014\u00105\u001a\u00020\b2\n\b\u0002\u00104\u001a\u0004\u0018\u00010#H\u0017J\b\u00106\u001a\u00020\bH\u0017J\u0014\u00107\u001a\u00020\b2\n\b\u0002\u00104\u001a\u0004\u0018\u00010#H\u0017J\b\u00108\u001a\u00020\bH\u0016J\b\u00109\u001a\u00020\u0014H\u0016J\b\u0010:\u001a\u00020\u0014H\u0016J\u0019\u0010<\u001a\u00028\u0000\"\b\b\u0000\u0010;*\u00020\u0000H\u0016¢\u0006\u0004\b<\u0010=J\u0012\u0010?\u001a\u00020\b2\b\u0010>\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010?\u001a\u00020\b2\u0006\u0010@\u001a\u00020\u0010H\u0016J\u001a\u0010B\u001a\u00020\b2\b\u0010A\u001a\u0004\u0018\u00010 2\u0006\u0010,\u001a\u00020+H\u0016J\u0018\u0010F\u001a\u00020\b2\u0006\u0010,\u001a\u00020C2\b\u0010E\u001a\u0004\u0018\u00010DR$\u0010H\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u001c\u0010\u001d\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010NR$\u0010O\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR$\u0010V\u001a\u0004\u0018\u00010U8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R\u0018\u0010]\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0014\u0010b\u001a\u00020_8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b`\u0010a¨\u0006e"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;", "Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;", "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;", "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "onContentChanged", "Lcom/guochao/faceshow/aaspring/base/http/client/a;", "getHttpClient", "Landroid/content/res/Resources;", "getResources", "onDestroy", "", "keyCode", "Landroid/view/KeyEvent;", "event", "", "onKeyDown", "", TCConstants.VIDEO_RECORD_VIDEPATH, "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;", "post", "Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;", "get", "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;", "lastRequest", "savedInstanceSate", "initView", "Landroid/view/MenuItem;", BaseConfig.ITEM, "onMenuItemClick", "", "title", "setTitle", "titleId", "Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;", "navigate", "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;", "titleBar", "Landroid/view/View;", ViewHierarchyConstants.VIEW_KEY, "onNavigationButtonClicked", "light", "setLightStatusBar", "black", "setStatusBarTextBlack", "useImmersiveStatusBar", "useBlackTextStatusBar", "msg", "showProgressDialog", "dismissProgressDialog", "showLoading", "dismissLoading", "isProgressLoading", "shouldShowLiveFloatWindow", ExifInterface.GPS_DIRECTION_TRUE, "getActivity", "()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;", "toastStr", "showToast", "resId", "menuItem", "onMenuClicked", "Landroid/view/ViewGroup;", "Landroid/view/View$OnClickListener;", "clickListener", "showNetErrorView", "Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;", "onBackButtonPressedHandler", "Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;", "getOnBackButtonPressedHandler", "()Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;", "setOnBackButtonPressedHandler", "(Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;)V", "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;", "titleBarController", "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;", "getTitleBarController", "()Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;", "setTitleBarController", "(Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;)V", "Lbutterknife/Unbinder;", "mUnbinder", "Lbutterknife/Unbinder;", "getMUnbinder", "()Lbutterknife/Unbinder;", "setMUnbinder", "(Lbutterknife/Unbinder;)V", "Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;", "loadingDialog", "Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;", "Lkotlinx/coroutines/CoroutineScope;", "getLifecycleSupportedScope", "()Lkotlinx/coroutines/CoroutineScope;", "lifecycleSupportedScope", "<init>", "()V", "lib_core_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class GCCoreActivity extends AppCompatActivity implements ICoroutineEvent, Toolbar.OnMenuItemClickListener, GCTitleBar.TitleBarCallback, GCTitleBar.MenuCallback {
    @Nullable
    private BaseFaceCastRequest<?> lastRequest;
    @Nullable
    private LoadingDialog loadingDialog;
    @Nullable
    private Unbinder mUnbinder;
    @Nullable
    private OnBackButtonPressedHandler onBackButtonPressedHandler;
    @Nullable
    private GCTitleBar titleBarController;

    public static /* synthetic */ void showLoading$default(GCCoreActivity gCCoreActivity, CharSequence charSequence, int i9, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLoading");
        }
        if ((i9 & 1) != 0) {
            charSequence = null;
        }
        gCCoreActivity.showLoading(charSequence);
    }

    public static /* synthetic */ void showProgressDialog$default(GCCoreActivity gCCoreActivity, CharSequence charSequence, int i9, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showProgressDialog");
        }
        if ((i9 & 1) != 0) {
            charSequence = null;
        }
        gCCoreActivity.showProgressDialog(charSequence);
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

    public void dismissLoading() {
        LoadingDialog loadingDialog;
        try {
            if (isDestroyed() || isFinishing() || (loadingDialog = this.loadingDialog) == null) {
                return;
            }
            loadingDialog.dismiss();
        } catch (Exception unused) {
        }
    }

    @Deprecated(message = "替换方法", replaceWith = @ReplaceWith(expression = "dismissLoading", imports = {}))
    public void dismissProgressDialog() {
        dismissLoading();
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "已弃用")
    @NotNull
    public GetRequest get(@Nullable String str) {
        GetRequest c10 = new GetRequest().O(this).P(this).Q(str).c(BaseFaceCastRequest.d.b().c(true));
        this.lastRequest = c10;
        Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.request.GetRequest");
        return c10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public <T extends GCCoreActivity> T getActivity() {
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type T of com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity.getActivity");
        return this;
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

    @Deprecated(level = DeprecationLevel.WARNING, message = "已弃用")
    @Nullable
    public com.guochao.faceshow.aaspring.base.http.client.a getHttpClient() {
        return FaceCastHttpClientImpl.h(getApplicationContext());
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

    @Nullable
    protected final Unbinder getMUnbinder() {
        return this.mUnbinder;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public CoroutineDispatcher getMainDispatcher() {
        return ICoroutineEvent.DefaultImpls.getMainDispatcher(this);
    }

    @Nullable
    public final OnBackButtonPressedHandler getOnBackButtonPressedHandler() {
        return this.onBackButtonPressedHandler;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    @NotNull
    public Resources getResources() {
        Resources resources = super.getResources();
        if (resources != null) {
            if (!(resources.getConfiguration().fontScale == 1.0f)) {
                Configuration configuration = resources.getConfiguration();
                configuration.fontScale = 1.0f;
                resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            }
        }
        Intrinsics.checkNotNullExpressionValue(resources, "resources");
        return resources;
    }

    @Nullable
    public final GCTitleBar getTitleBarController() {
        return this.titleBarController;
    }

    public abstract void initView(@Nullable Bundle bundle);

    public boolean isProgressLoading() {
        LoadingDialog loadingDialog = this.loadingDialog;
        if (loadingDialog != null) {
            return loadingDialog.isShowing();
        }
        return false;
    }

    @Nullable
    public BaseFaceCastRequest<?> lastRequest() {
        return this.lastRequest;
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

    @NotNull
    public final GCNavigator navigate(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return new ARouterNavigator(this, path);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        Toolbar toolbar = (Toolbar) findViewById(R$id.gc_tool_bar);
        if (toolbar != null) {
            setSupportActionBar(toolbar);
            ViewParent parent = toolbar.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            this.titleBarController = new ToolbarTitleBar(this, (ViewGroup) parent, this, toolbar, this);
        }
        this.mUnbinder = ButterKnife.a(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        o.a.c().e(this);
        try {
            ActivityExtendsKt.fixOrientation(this);
        } catch (Exception unused) {
        }
        ActivityExtendsKt.setStatusBar(this);
        super.onCreate(bundle);
        ActivityExtendsKt.findViewBindingAndSet(this, bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        try {
            super.onDestroy();
        } catch (Exception unused) {
        }
        this.onBackButtonPressedHandler = null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, @Nullable KeyEvent keyEvent) {
        OnBackButtonPressedHandler onBackButtonPressedHandler;
        if (i9 == 4 && (onBackButtonPressedHandler = this.onBackButtonPressedHandler) != null) {
            Intrinsics.checkNotNull(onBackButtonPressedHandler);
            if (onBackButtonPressedHandler.onBack()) {
                return true;
            }
        }
        return super.onKeyDown(i9, keyEvent);
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar.MenuCallback
    public void onMenuClicked(@Nullable MenuItem menuItem, @NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
    public boolean onMenuItemClick(@Nullable MenuItem menuItem) {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar.TitleBarCallback
    public void onNavigationButtonClicked(@NotNull GCTitleBar titleBar, @NotNull View view) {
        Intrinsics.checkNotNullParameter(titleBar, "titleBar");
        Intrinsics.checkNotNullParameter(view, "view");
        finish();
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "已弃用")
    @NotNull
    public PostRequest post(@Nullable String str) {
        PostRequest c10 = new PostRequest().O(this).P(this).Q(str).c(BaseFaceCastRequest.d.b().c(true));
        this.lastRequest = c10;
        Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.request.PostRequest");
        return c10;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "已弃用", replaceWith = @ReplaceWith(expression = "setStatusBarTextBlack", imports = {}))
    public void setLightStatusBar(boolean z10) {
        Window window = getWindow();
        Intrinsics.checkNotNullExpressionValue(window, "window");
        StatusBarHelper.setLightStatusBar$default(this, window, z10, 0, 8, null);
    }

    protected final void setMUnbinder(@Nullable Unbinder unbinder) {
        this.mUnbinder = unbinder;
    }

    public final void setOnBackButtonPressedHandler(@Nullable OnBackButtonPressedHandler onBackButtonPressedHandler) {
        this.onBackButtonPressedHandler = onBackButtonPressedHandler;
    }

    public void setStatusBarTextBlack(boolean z10) {
        setLightStatusBar(z10);
    }

    @Override // android.app.Activity
    public void setTitle(@Nullable CharSequence charSequence) {
        super.setTitle(charSequence);
        GCTitleBar gCTitleBar = this.titleBarController;
        if (gCTitleBar != null) {
            gCTitleBar.setTitle(charSequence);
        }
    }

    public final void setTitleBarController(@Nullable GCTitleBar gCTitleBar) {
        this.titleBarController = gCTitleBar;
    }

    public boolean shouldShowLiveFloatWindow() {
        return true;
    }

    @JvmOverloads
    public final void showLoading() {
        showLoading$default(this, null, 1, null);
    }

    @JvmOverloads
    public void showLoading(@Nullable CharSequence charSequence) {
        try {
            if (!isDestroyed() && !isFinishing()) {
                LoadingDialog loadingDialog = this.loadingDialog;
                if (loadingDialog == null) {
                    loadingDialog = new LoadingDialog(this);
                    this.loadingDialog = loadingDialog;
                }
                loadingDialog.show();
            }
        } catch (Exception unused) {
        }
    }

    public final void showNetErrorView(@NotNull ViewGroup view, @Nullable View.OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        View inflate = LayoutInflater.from(this).inflate(R$layout.layout_net_error, (ViewGroup) null);
        if (onClickListener != null) {
            inflate.setOnClickListener(onClickListener);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.topMargin = StatusBarHelper.getActionBarHeight(this);
        inflate.setLayoutParams(layoutParams);
        view.addView(inflate);
    }

    @Deprecated(message = "替换方法", replaceWith = @ReplaceWith(expression = "showLoading", imports = {}))
    public void showProgressDialog(@Nullable CharSequence charSequence) {
        showLoading(charSequence);
    }

    public void showToast(@Nullable CharSequence charSequence) {
        if (getActivity().isDestroyed() || getActivity().isFinishing() || charSequence == null) {
            return;
        }
        ToastUtils.showToast$default(getActivity(), charSequence, 0, 0, 12, null);
    }

    public boolean useBlackTextStatusBar() {
        return true;
    }

    public boolean useImmersiveStatusBar() {
        return true;
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

    @Override // android.app.Activity
    public void setTitle(int i9) {
        super.setTitle(i9);
        GCTitleBar gCTitleBar = this.titleBarController;
        if (gCTitleBar != null) {
            gCTitleBar.setTitle(i9);
        }
    }

    public void showToast(int i9) {
        if (getActivity().isDestroyed() || getActivity().isFinishing()) {
            return;
        }
        ToastUtils.showToast$default(getActivity(), i9, 0, 4, null);
    }
}
