package com.guochao.faceshow.aaspring.base.mvvm;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.vmstore.GCViewModelStoreOwner;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a7\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\b\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\b\u00030\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\b\u001a+\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\b\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\b\u00030\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0086\b\u001a7\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\b\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\b\u00030\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\b\u001a;\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\b\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\b\u00030\u0003*\u00020\n2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\b\u001a:\u0010\u000b\u001a\u0002H\u0002\"\u000e\b\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\b\u00030\u0003*\u00020\n2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\b¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"lazyGCViewModel", "Lkotlin/Lazy;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "key", "", "factory", "Landroidx/lifecycle/ViewModelProvider$Factory;", "lazyGlobalViewModel", "lazyViewModel", "Landroidx/lifecycle/ViewModelStoreOwner;", "viewModel", "(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "lib_core_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MvvmUtilsKt {
    public static final /* synthetic */ <T extends BaseViewModel<?>> Lazy<T> lazyGCViewModel(String str, ViewModelProvider.Factory factory) {
        Lazy<T> lazy;
        GCViewModelStoreOwner gCViewModelStoreOwner = GCViewModelStoreOwner.INSTANCE;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new MvvmUtilsKt$lazyGCViewModel$$inlined$lazyViewModel$1(gCViewModelStoreOwner, str, factory));
        return lazy;
    }

    public static /* synthetic */ Lazy lazyGCViewModel$default(String str, ViewModelProvider.Factory factory, int i9, Object obj) {
        Lazy lazy;
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            factory = null;
        }
        GCViewModelStoreOwner gCViewModelStoreOwner = GCViewModelStoreOwner.INSTANCE;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new MvvmUtilsKt$lazyGCViewModel$$inlined$lazyViewModel$1(gCViewModelStoreOwner, str, factory));
        return lazy;
    }

    public static final /* synthetic */ <T extends BaseViewModel<?>> Lazy<T> lazyGlobalViewModel(String str, ViewModelProvider.Factory factory) {
        Lazy<T> lazy;
        GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$1(app, str, factory));
        return lazy;
    }

    public static /* synthetic */ Lazy lazyGlobalViewModel$default(String str, ViewModelProvider.Factory factory, int i9, Object obj) {
        Lazy lazy;
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            factory = null;
        }
        GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$1(app, str, factory));
        return lazy;
    }

    public static final /* synthetic */ <T extends BaseViewModel<?>> Lazy<T> lazyViewModel(ViewModelStoreOwner viewModelStoreOwner, String str, ViewModelProvider.Factory factory) {
        Lazy<T> lazy;
        Intrinsics.checkNotNullParameter(viewModelStoreOwner, "<this>");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new MvvmUtilsKt$lazyViewModel$1(viewModelStoreOwner, str, factory));
        return lazy;
    }

    public static /* synthetic */ Lazy lazyViewModel$default(ViewModelStoreOwner viewModelStoreOwner, String str, ViewModelProvider.Factory factory, int i9, Object obj) {
        Lazy lazy;
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            factory = null;
        }
        Intrinsics.checkNotNullParameter(viewModelStoreOwner, "<this>");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new MvvmUtilsKt$lazyViewModel$1(viewModelStoreOwner, str, factory));
        return lazy;
    }

    public static final /* synthetic */ <T extends BaseViewModel<?>> T viewModel(ViewModelStoreOwner viewModelStoreOwner, String str, ViewModelProvider.Factory factory) {
        Intrinsics.checkNotNullParameter(viewModelStoreOwner, "<this>");
        ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
        if (str != null) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return (T) viewModelProvider.get(str, BaseViewModel.class);
        }
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) viewModelProvider.get(BaseViewModel.class);
    }

    public static /* synthetic */ BaseViewModel viewModel$default(ViewModelStoreOwner viewModelStoreOwner, String str, ViewModelProvider.Factory factory, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            factory = null;
        }
        Intrinsics.checkNotNullParameter(viewModelStoreOwner, "<this>");
        ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
        if (str != null) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return (BaseViewModel) viewModelProvider.get(str, BaseViewModel.class);
        }
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (BaseViewModel) viewModelProvider.get(BaseViewModel.class);
    }

    public static final /* synthetic */ <T extends BaseViewModel<?>> Lazy<T> lazyGlobalViewModel(String str) {
        Lazy<T> lazy;
        GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$default$1(app, str, null));
        return lazy;
    }

    public static /* synthetic */ Lazy lazyGlobalViewModel$default(String str, int i9, Object obj) {
        Lazy lazy;
        if ((i9 & 1) != 0) {
            str = null;
        }
        GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$default$1(app, str, null));
        return lazy;
    }
}
