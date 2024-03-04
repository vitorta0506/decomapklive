package com.guochao.faceshow.aaspring.base.mvvm.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.model.LoadingStateModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u00052\b\u0012\u0004\u0012\u0002H\u00010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u0014\u0010\b\u001a\u0004\u0018\u00018\u0001X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;", "M", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "VM", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel$ModelUpdateObserver;", "()V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "onLoadingStateChanged", "", "loadingStateModel", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;", "onViewCreated", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class GCBaseMvvmFragment<M extends BaseModel, VM extends BaseViewModel<M>> extends GCCoreFragment implements BaseViewModel.ModelUpdateObserver<M> {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-1$lambda-0  reason: not valid java name */
    public static final void m336onViewCreated$lambda1$lambda0(GCBaseMvvmFragment this$0, BaseModel baseModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onModelUpdate(baseModel);
    }

    @Nullable
    public abstract VM getViewModel();

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

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        VM viewModel = getViewModel();
        if (viewModel != null) {
            viewModel.bind(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.faceshow.aaspring.base.mvvm.fragment.a
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    GCBaseMvvmFragment.m336onViewCreated$lambda1$lambda0(GCBaseMvvmFragment.this, (BaseModel) obj);
                }
            });
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
            viewModel.bindLoading(viewLifecycleOwner, new Observer<LoadingStateModel>(this) { // from class: com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment$onViewCreated$1$2
                final /* synthetic */ GCBaseMvvmFragment<M, VM> this$0;

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
}
