package com.vk.api.sdk.utils;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0000¨\u0006\u0005"}, d2 = {"threadLocal", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", ExifInterface.GPS_DIRECTION_TRUE, "factory", "Lkotlin/Function0;", "core_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ThreadLocalDelegateKt {
    @NotNull
    public static final <T> ThreadLocalDelegate<T> threadLocal(@NotNull Function0<? extends T> factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        return new ThreadLocalDelegateImpl(factory);
    }
}
