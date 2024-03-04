package com.guochao.faceshow.aaspring.base.mvvm.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Observer;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.model.LoadingStateModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u00052\b\u0012\u0004\u0012\u0002H\u00010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0012\u0010\u000f\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001b\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00140\u0013\"\n\b\u0002\u0010\u0014\u0018\u0001*\u00020\u0015H\u0084\bR\u0014\u0010\b\u001a\u0004\u0018\u00018\u0001X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "M", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "VM", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel$ModelUpdateObserver;", "()V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onLoadingStateChanged", "loadingStateModel", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;", "viewBindingByActivity", "Lkotlin/Lazy;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/viewbinding/ViewBinding;", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class GCBaseMvvmActivity<M extends BaseModel, VM extends BaseViewModel<M>> extends GCCoreActivity implements BaseViewModel.ModelUpdateObserver<M> {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-1$lambda-0  reason: not valid java name */
    public static final void m334onCreate$lambda1$lambda0(GCBaseMvvmActivity this$0, BaseModel baseModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onModelUpdate(baseModel);
    }

    @Nullable
    public abstract VM getViewModel();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        VM viewModel = getViewModel();
        if (viewModel != null) {
            viewModel.bind(this, new Observer() { // from class: com.guochao.faceshow.aaspring.base.mvvm.activity.a
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    GCBaseMvvmActivity.m334onCreate$lambda1$lambda0(GCBaseMvvmActivity.this, (BaseModel) obj);
                }
            });
            viewModel.bindLoading(this, new Observer<LoadingStateModel>(this) { // from class: com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity$onCreate$1$2
                final /* synthetic */ GCBaseMvvmActivity<M, VM> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.this$0 = this;
                }

                @Override // androidx.lifecycle.Observer
                public void onChanged(@Nullable LoadingStateModel loadingStateModel) {
                    this.this$0.onLoadingStateChanged(loadingStateModel);
                }
            });
        }
    }

    public void onLoadingStateChanged(@Nullable LoadingStateModel loadingStateModel) {
        if (loadingStateModel != null) {
            if (loadingStateModel instanceof LoadingStateModel.StartLoadingModel) {
                showLoading(((LoadingStateModel.StartLoadingModel) loadingStateModel).getMsg());
            } else if (loadingStateModel instanceof LoadingStateModel.LoadingSuccessModel) {
                dismissLoading();
            } else if (loadingStateModel instanceof LoadingStateModel.LoadingCancelModel) {
                dismissLoading();
            } else if (loadingStateModel instanceof LoadingStateModel.LoadingFailModel) {
                dismissLoading();
            }
        }
    }

    protected final /* synthetic */ <T extends ViewBinding> Lazy<T> viewBindingByActivity() {
        Lazy<T> lazy;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<T>(this) { // from class: com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity$viewBindingByActivity$1
            final /* synthetic */ GCBaseMvvmActivity<M, VM> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewBinding invoke() {
                Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
                Object invoke = ViewBinding.class.getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, this.this$0.getLayoutInflater(), this.this$0.findViewById(16908290), Boolean.FALSE);
                Intrinsics.reifiedOperationMarker(1, ExifInterface.GPS_DIRECTION_TRUE);
                return (ViewBinding) invoke;
            }
        });
        return lazy;
    }
}
