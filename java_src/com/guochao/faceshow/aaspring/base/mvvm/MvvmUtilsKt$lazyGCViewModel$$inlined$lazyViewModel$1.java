package com.guochao.faceshow.aaspring.base.mvvm;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Add missing generic type declarations: [T] */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001\u0018\u0001*\u0006\u0012\u0002\b\u00030\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "invoke", "()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "com/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyViewModel$1"}, k = 3, mv = {1, 7, 1}, xi = 176)
/* loaded from: classes3.dex */
public final class MvvmUtilsKt$lazyGCViewModel$$inlined$lazyViewModel$1<T> extends Lambda implements Function0<T> {
    final /* synthetic */ ViewModelProvider.Factory $factory;
    final /* synthetic */ String $key;
    final /* synthetic */ ViewModelStoreOwner $this_lazyViewModel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvvmUtilsKt$lazyGCViewModel$$inlined$lazyViewModel$1(ViewModelStoreOwner viewModelStoreOwner, String str, ViewModelProvider.Factory factory) {
        super(0);
        this.$this_lazyViewModel = viewModelStoreOwner;
        this.$key = str;
        this.$factory = factory;
    }

    /* JADX WARN: Incorrect return type in method signature: ()TT; */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final BaseViewModel invoke() {
        BaseViewModel baseViewModel;
        ViewModelStoreOwner viewModelStoreOwner = this.$this_lazyViewModel;
        String str = this.$key;
        ViewModelProvider.Factory factory = this.$factory;
        ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
        if (str != null) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            baseViewModel = (BaseViewModel) viewModelProvider.get(str, BaseViewModel.class);
        } else {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            baseViewModel = (BaseViewModel) viewModelProvider.get(BaseViewModel.class);
        }
        Intrinsics.reifiedOperationMarker(1, ExifInterface.GPS_DIRECTION_TRUE);
        return baseViewModel;
    }
}
