package com.guochao.faceshow.aaspring.base.mvvm.repository;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u0002H\u0004\"\u0004\b\u0000\u0010\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H\u00040\u0006¢\u0006\u0002\b\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/repository/BaseRepository;", "", "()V", "launchRequest", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function1;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class BaseRepository {
    @Nullable
    public final <T> Object launchRequest(@NotNull Function1<? super CoroutineScope, ? extends T> function1, @NotNull Continuation<? super T> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new BaseRepository$launchRequest$2(function1, null), continuation);
    }
}
