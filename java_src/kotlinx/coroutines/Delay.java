package kotlinx.coroutines;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@InternalCoroutinesApi
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0097@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J$\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00052\n\u0010\n\u001a\u00060\u000bj\u0002`\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001e\u0010\u000f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011H&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/Delay;", "", "delay", "", CrashHianalyticsData.TIME, "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "context", "Lkotlin/coroutines/CoroutineContext;", "scheduleResumeAfterDelay", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public interface Delay {

    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
        @Nullable
        public static Object delay(@NotNull Delay delay, long j10, @NotNull Continuation<? super Unit> continuation) {
            Continuation intercepted;
            Object coroutine_suspended;
            Object coroutine_suspended2;
            if (j10 <= 0) {
                return Unit.INSTANCE;
            }
            intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
            cancellableContinuationImpl.initCancellability();
            delay.mo3204scheduleResumeAfterDelay(j10, cancellableContinuationImpl);
            Object result = cancellableContinuationImpl.getResult();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (result == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return result == coroutine_suspended2 ? result : Unit.INSTANCE;
        }

        @NotNull
        public static DisposableHandle invokeOnTimeout(@NotNull Delay delay, long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
            return DefaultExecutorKt.getDefaultDelay().invokeOnTimeout(j10, runnable, coroutineContext);
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    Object delay(long j10, @NotNull Continuation<? super Unit> continuation);

    @NotNull
    DisposableHandle invokeOnTimeout(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext);

    /* renamed from: scheduleResumeAfterDelay */
    void mo3204scheduleResumeAfterDelay(long j10, @NotNull CancellableContinuation<? super Unit> cancellableContinuation);
}
