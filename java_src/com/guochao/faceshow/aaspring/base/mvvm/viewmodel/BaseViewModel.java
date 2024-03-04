package com.guochao.faceshow.aaspring.base.mvvm.viewmodel;

import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.model.LoadingStateModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.GCViewModel;
import java.lang.reflect.Field;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s7.a;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u0005:\u0001#B\u0005¢\u0006\u0002\u0010\u0006J\"\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001aH\u0016J\u001e\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\r0\u001aH\u0016J\u000f\u0010\u001c\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u001dJ\b\u0010\u001e\u001a\u00020\u0016H\u0002J\b\u0010\u001f\u001a\u00020\u0016H\u0014J\u0010\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\rH\u0016J\u0018\u0010\"\u001a\u00020\u00162\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001aH\u0016R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR#\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\f8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0013\u0010\u000f¨\u0006$"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "M", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Landroidx/lifecycle/ViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;", "()V", "lifecycleSupportedScope", "Lkotlinx/coroutines/CoroutineScope;", "getLifecycleSupportedScope", "()Lkotlinx/coroutines/CoroutineScope;", "loadingStateLiveData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;", "getLoadingStateLiveData", "()Landroidx/lifecycle/MutableLiveData;", "loadingStateLiveData$delegate", "Lkotlin/Lazy;", "modelLiveData", "getModelLiveData", "modelLiveData$delegate", "bind", "", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "observer", "Landroidx/lifecycle/Observer;", "bindLoading", "current", "()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "inject", "onCleared", "publishingLoadingState", "loadingStateModel", "unbind", "ModelUpdateObserver", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class BaseViewModel<M extends BaseModel> extends ViewModel implements GCViewModel<M>, ICoroutineEvent {
    @NotNull
    private final Lazy loadingStateLiveData$delegate;
    @NotNull
    private final Lazy modelLiveData$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\u00020\u0003J\u0017\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00018\u0001H&¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel$ModelUpdateObserver;", "M", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "", "onModelUpdate", "", DeviceRequestsHelper.DEVICE_INFO_MODEL, "(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface ModelUpdateObserver<M extends BaseModel> {
        void onModelUpdate(@Nullable M m10);
    }

    public BaseViewModel() {
        inject();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.modelLiveData$delegate = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<MutableLiveData<M>>(this) { // from class: com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel$modelLiveData$2
            final /* synthetic */ BaseViewModel<M> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MutableLiveData<M> invoke() {
                return this.this$0.obtainLiveData();
            }
        });
        this.loadingStateLiveData$delegate = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<MutableLiveData<LoadingStateModel>>() { // from class: com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel$loadingStateLiveData$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MutableLiveData<LoadingStateModel> invoke() {
                return new MutableLiveData<>();
            }
        });
    }

    private final void inject() {
        Field[] fields = getClass().getFields();
        Intrinsics.checkNotNullExpressionValue(fields, "this.javaClass.fields");
        ArrayList<Field> arrayList = new ArrayList();
        int length = fields.length;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                break;
            }
            Field field = fields[i9];
            if (field.getAnnotation(a.class) != null) {
                arrayList.add(field);
            }
            i9++;
        }
        for (Field field2 : arrayList) {
            field2.setAccessible(true);
            field2.set(this, field2.getType().newInstance());
        }
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

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.GCViewModel
    public void bind(@Nullable LifecycleOwner lifecycleOwner, @NotNull Observer<M> observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (lifecycleOwner == null) {
            getModelLiveData().observeForever(observer);
        } else {
            getModelLiveData().observe(lifecycleOwner, observer);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.GCViewModel
    public void bindLoading(@NotNull LifecycleOwner lifecycleOwner, @NotNull Observer<LoadingStateModel> observer) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(observer, "observer");
        getLoadingStateLiveData().observe(lifecycleOwner, observer);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.GCViewModel
    @Nullable
    public M current() {
        return getModelLiveData().getValue();
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

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public CoroutineDispatcher getIoDispatcher() {
        return ICoroutineEvent.DefaultImpls.getIoDispatcher(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public CoroutineScope getLifecycleSupportedScope() {
        return ViewModelKt.getViewModelScope(this);
    }

    @NotNull
    protected final MutableLiveData<LoadingStateModel> getLoadingStateLiveData() {
        return (MutableLiveData) this.loadingStateLiveData$delegate.getValue();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.coroutine.ICoroutineEvent
    @NotNull
    public CoroutineDispatcher getMainDispatcher() {
        return ICoroutineEvent.DefaultImpls.getMainDispatcher(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final MutableLiveData<M> getModelLiveData() {
        return (MutableLiveData) this.modelLiveData$delegate.getValue();
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

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.GCViewModel
    public void loadData(@Nullable Object obj) {
        GCViewModel.DefaultImpls.loadData(this, obj);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.GCViewModel
    @NotNull
    public MutableLiveData<M> obtainLiveData() {
        return GCViewModel.DefaultImpls.obtainLiveData(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        getLoadingStateLiveData().setValue(null);
        getModelLiveData().setValue(null);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.GCViewModel
    public void publishingLoadingState(@NotNull LoadingStateModel loadingStateModel) {
        Intrinsics.checkNotNullParameter(loadingStateModel, "loadingStateModel");
        getLoadingStateLiveData().setValue(loadingStateModel);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.GCViewModel
    public void unbind(@NotNull Observer<M> observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        getModelLiveData().removeObserver(observer);
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
}
