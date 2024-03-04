package com.vk.api.sdk.internal;

import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.VK;
import com.vk.api.sdk.VkResult;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a+\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\b\b\u0000\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007"}, d2 = {"await", ExifInterface.GPS_DIRECTION_TRUE, "", "Lcom/vk/api/sdk/internal/ApiCommand;", "(Lcom/vk/api/sdk/internal/ApiCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitResult", "Lcom/vk/api/sdk/VkResult;", "core_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ApiCommandKt {
    @Nullable
    public static final <T> Object await(@NotNull ApiCommand<T> apiCommand, @NotNull Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        SafeContinuation safeContinuation = new SafeContinuation(intercepted);
        try {
            Object executeSync = VK.executeSync(apiCommand);
            Result.Companion companion = Result.Companion;
            safeContinuation.resumeWith(Result.m1657constructorimpl(executeSync));
        } catch (VKApiExecutionException e10) {
            if (e10.isInvalidCredentialsError()) {
                VK.INSTANCE.handleTokenExpired$core_release();
            }
            Result.Companion companion2 = Result.Companion;
            safeContinuation.resumeWith(Result.m1657constructorimpl(ResultKt.createFailure(e10)));
        }
        Object orThrow = safeContinuation.getOrThrow();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (orThrow == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    @Nullable
    public static final <T> Object awaitResult(@NotNull ApiCommand<T> apiCommand, @NotNull Continuation<? super VkResult<? extends T>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        SafeContinuation safeContinuation = new SafeContinuation(intercepted);
        try {
            VkResult.Success success = new VkResult.Success(VK.executeSync(apiCommand));
            Result.Companion companion = Result.Companion;
            safeContinuation.resumeWith(Result.m1657constructorimpl(success));
        } catch (VKApiExecutionException e10) {
            if (e10.isInvalidCredentialsError()) {
                VK.INSTANCE.handleTokenExpired$core_release();
            }
            VkResult.Failure failure = new VkResult.Failure(e10);
            Result.Companion companion2 = Result.Companion;
            safeContinuation.resumeWith(Result.m1657constructorimpl(failure));
        }
        Object orThrow = safeContinuation.getOrThrow();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (orThrow == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }
}
