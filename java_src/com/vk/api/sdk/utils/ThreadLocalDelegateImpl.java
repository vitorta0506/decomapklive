package com.vk.api.sdk.utils;

import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.utils.ThreadLocalDelegate;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\r\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u000bR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/vk/api/sdk/utils/ThreadLocalDelegateImpl;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "factory", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)V", "getFactory", "()Lkotlin/jvm/functions/Function0;", "value", "Ljava/lang/ThreadLocal;", "get", "()Ljava/lang/Object;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ThreadLocalDelegateImpl<T> implements ThreadLocalDelegate<T> {
    @NotNull
    private final Function0<T> factory;
    @NotNull
    private final ThreadLocal<T> value;

    /* JADX WARN: Multi-variable type inference failed */
    public ThreadLocalDelegateImpl(@NotNull Function0<? extends T> factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.factory = factory;
        this.value = new ThreadLocal<T>(this) { // from class: com.vk.api.sdk.utils.ThreadLocalDelegateImpl$value$1
            final /* synthetic */ ThreadLocalDelegateImpl<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            @Override // java.lang.ThreadLocal
            protected T initialValue() {
                return this.this$0.getFactory().invoke();
            }
        };
    }

    @Override // com.vk.api.sdk.utils.ThreadLocalDelegate
    public T get() {
        T t10 = this.value.get();
        Intrinsics.checkNotNull(t10);
        return t10;
    }

    @NotNull
    public final Function0<T> getFactory() {
        return this.factory;
    }

    @Override // com.vk.api.sdk.utils.ThreadLocalDelegate
    public T getValue(@Nullable Object obj, @NotNull KProperty<?> kProperty) {
        return (T) ThreadLocalDelegate.DefaultImpls.getValue(this, obj, kProperty);
    }
}
