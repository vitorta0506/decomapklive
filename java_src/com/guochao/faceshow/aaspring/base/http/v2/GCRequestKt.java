package com.guochao.faceshow.aaspring.base.http.v2;

import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0007"}, d2 = {"requestFromViewModel", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;", "Landroidx/lifecycle/ViewModel;", "url", "", "requestOnLifecycle", "Landroidx/lifecycle/LifecycleOwner;", "lib_httpclient_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GCRequestKt {
    @NotNull
    public static final GCRequest requestFromViewModel(@NotNull ViewModel viewModel, @NotNull String url) {
        Intrinsics.checkNotNullParameter(viewModel, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        return new GCRequest(url).dispatchOn(ViewModelKt.getViewModelScope(viewModel));
    }

    @NotNull
    public static final GCRequest requestOnLifecycle(@NotNull LifecycleOwner lifecycleOwner, @NotNull String url) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        return new GCRequest(url).bindToLifecycle(lifecycleOwner);
    }
}
