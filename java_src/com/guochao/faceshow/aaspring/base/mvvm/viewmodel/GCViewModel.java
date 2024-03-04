package com.guochao.faceshow.aaspring.base.mvvm.viewmodel;

import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.model.LoadingStateModel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003J$\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\tH&J\u001e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u000b0\tH&J\u000f\u0010\f\u001a\u0004\u0018\u00018\u0000H&¢\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000bH&J\u0018\u0010\u0014\u001a\u00020\u00052\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\tH&¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;", "M", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "", "bind", "", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "observer", "Landroidx/lifecycle/Observer;", "bindLoading", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;", "current", "()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "loadData", "vararg", "obtainLiveData", "Landroidx/lifecycle/MutableLiveData;", "publishingLoadingState", "loadingStateModel", "unbind", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface GCViewModel<M extends BaseModel> {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void bind$default(GCViewModel gCViewModel, LifecycleOwner lifecycleOwner, Observer observer, int i9, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: bind");
            }
            if ((i9 & 1) != 0) {
                lifecycleOwner = null;
            }
            gCViewModel.bind(lifecycleOwner, observer);
        }

        public static <M extends BaseModel> void loadData(@NotNull GCViewModel<M> gCViewModel, @Nullable Object obj) {
        }

        public static /* synthetic */ void loadData$default(GCViewModel gCViewModel, Object obj, int i9, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadData");
            }
            if ((i9 & 1) != 0) {
                obj = null;
            }
            gCViewModel.loadData(obj);
        }

        @NotNull
        public static <M extends BaseModel> MutableLiveData<M> obtainLiveData(@NotNull GCViewModel<M> gCViewModel) {
            return new MutableLiveData<>();
        }
    }

    void bind(@Nullable LifecycleOwner lifecycleOwner, @NotNull Observer<M> observer);

    void bindLoading(@NotNull LifecycleOwner lifecycleOwner, @NotNull Observer<LoadingStateModel> observer);

    @Nullable
    M current();

    void loadData(@Nullable Object obj);

    @NotNull
    MutableLiveData<M> obtainLiveData();

    void publishingLoadingState(@NotNull LoadingStateModel loadingStateModel);

    void unbind(@NotNull Observer<M> observer);
}
