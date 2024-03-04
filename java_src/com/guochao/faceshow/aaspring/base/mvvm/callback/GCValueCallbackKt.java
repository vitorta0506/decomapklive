package com.guochao.faceshow.aaspring.base.mvvm.callback;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0000\u001aJ\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00060\u00052\u001c\b\u0002\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00060\b¨\u0006\u000b"}, d2 = {"callbackOnLifecycle", "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/LifecycleOwner;", "value", "Lkotlin/Function1;", "", "error", "Lkotlin/Function2;", "", "", "lib_base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GCValueCallbackKt {
    @NotNull
    public static final <T> GCValueCallback<T> callbackOnLifecycle(@NotNull LifecycleOwner lifecycleOwner, @NotNull final Function1<? super T, Unit> value, @NotNull final Function2<? super Integer, ? super String, Unit> error) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(error, "error");
        final Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Intrinsics.checkNotNullExpressionValue(lifecycle, "lifecycle");
        return new GCValueCallback<T>() { // from class: com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallbackKt$callbackOnLifecycle$3
            @Override // com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback
            public void onError(int i9, @Nullable String str) {
                if (Lifecycle.this.getCurrentState() == Lifecycle.State.DESTROYED) {
                    return;
                }
                error.mo1invoke(Integer.valueOf(i9), str);
            }

            @Override // com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback
            public void onValue(T t10) {
                if (Lifecycle.this.getCurrentState() == Lifecycle.State.DESTROYED) {
                    return;
                }
                value.invoke(t10);
            }
        };
    }

    public static /* synthetic */ GCValueCallback callbackOnLifecycle$default(LifecycleOwner lifecycleOwner, Function1 function1, Function2 function2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            function1 = new Function1() { // from class: com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallbackKt$callbackOnLifecycle$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    m335invoke(obj2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m335invoke(Object obj2) {
                }
            };
        }
        if ((i9 & 2) != 0) {
            function2 = new Function2<Integer, String, Unit>() { // from class: com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallbackKt$callbackOnLifecycle$2
                @Override // kotlin.jvm.functions.Function2
                /* renamed from: invoke */
                public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                    invoke(num.intValue(), str);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i10, @Nullable String str) {
                }
            };
        }
        return callbackOnLifecycle(lifecycleOwner, function1, function2);
    }
}
