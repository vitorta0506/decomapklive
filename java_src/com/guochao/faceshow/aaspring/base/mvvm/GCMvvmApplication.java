package com.guochao.faceshow.aaspring.base.mvvm;

import androidx.lifecycle.ViewModelStore;
import com.guochao.faceshow.aaspring.base.httpclient.GCCommonRequestHandler;
import com.guochao.faceshow.context.GCApplication;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0005H\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/GCMvvmApplication;", "Lcom/guochao/faceshow/context/GCApplication;", "Landroidx/lifecycle/ViewModelStoreOwner;", "()V", "store", "Landroidx/lifecycle/ViewModelStore;", "getStore", "()Landroidx/lifecycle/ViewModelStore;", "store$delegate", "Lkotlin/Lazy;", "getViewModelStore", "onCreate", "", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class GCMvvmApplication extends GCApplication {
    @NotNull
    private final Lazy store$delegate;

    public GCMvvmApplication() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ViewModelStore>() { // from class: com.guochao.faceshow.aaspring.base.mvvm.GCMvvmApplication$store$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStore invoke() {
                return new ViewModelStore();
            }
        });
        this.store$delegate = lazy;
    }

    @NotNull
    public final ViewModelStore getStore() {
        return (ViewModelStore) this.store$delegate.getValue();
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    @NotNull
    public ViewModelStore getViewModelStore() {
        return getStore();
    }

    @Override // com.guochao.faceshow.context.GCApplication, android.app.Application
    public void onCreate() {
        GCCommonRequestHandler.INSTANCE.init();
        super.onCreate();
    }
}
