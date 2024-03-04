package kotlinx.coroutines.internal;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000fJ\u001c\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0016J$\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000e2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u00152\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\fH\u0002J\u001e\u0010 \u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u000e2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0016J\b\u0010$\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006%"}, d2 = {"Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "Lkotlinx/coroutines/Delay;", "cause", "", "errorHint", "", "(Ljava/lang/Throwable;Ljava/lang/String;)V", "immediate", "getImmediate", "()Lkotlinx/coroutines/MainCoroutineDispatcher;", "delay", "", CrashHianalyticsData.TIME, "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dispatch", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "isDispatchNeeded", "", "limitedParallelism", "Lkotlinx/coroutines/CoroutineDispatcher;", "parallelism", "", "missing", "scheduleResumeAfterDelay", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "", "toString", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class MissingMainCoroutineDispatcher extends MainCoroutineDispatcher implements Delay {
    @Nullable
    private final Throwable cause;
    @Nullable
    private final String errorHint;

    public /* synthetic */ MissingMainCoroutineDispatcher(Throwable th2, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(th2, (i9 & 2) != 0 ? null : str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r1 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Void missing() {
        /*
            r4 = this;
            java.lang.Throwable r0 = r4.cause
            if (r0 == 0) goto L36
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Module with the Main dispatcher had failed to initialize"
            r0.append(r1)
            java.lang.String r1 = r4.errorHint
            if (r1 == 0) goto L25
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = ". "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            if (r1 != 0) goto L27
        L25:
            java.lang.String r1 = ""
        L27:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.Throwable r2 = r4.cause
            r1.<init>(r0, r2)
            throw r1
        L36:
            kotlinx.coroutines.internal.MainDispatchersKt.throwMissingMainDispatcherException()
            kotlin.KotlinNothingValueException r0 = new kotlin.KotlinNothingValueException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.MissingMainCoroutineDispatcher.missing():java.lang.Void");
    }

    @Override // kotlinx.coroutines.Delay
    @Nullable
    public Object delay(long j10, @NotNull Continuation<?> continuation) {
        missing();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher
    @NotNull
    public MainCoroutineDispatcher getImmediate() {
        return this;
    }

    @Override // kotlinx.coroutines.Delay
    @NotNull
    public DisposableHandle invokeOnTimeout(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        missing();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean isDispatchNeeded(@NotNull CoroutineContext coroutineContext) {
        missing();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public CoroutineDispatcher limitedParallelism(int i9) {
        missing();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.Delay
    /* renamed from: scheduleResumeAfterDelay  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ void mo3204scheduleResumeAfterDelay(long j10, CancellableContinuation cancellableContinuation) {
        scheduleResumeAfterDelay(j10, (CancellableContinuation<? super Unit>) cancellableContinuation);
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Dispatchers.Main[missing");
        if (this.cause != null) {
            str = ", cause=" + this.cause;
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append(']');
        return sb2.toString();
    }

    public MissingMainCoroutineDispatcher(@Nullable Throwable th2, @Nullable String str) {
        this.cause = th2;
        this.errorHint = str;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    /* renamed from: dispatch */
    public Void mo3203dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        missing();
        throw new KotlinNothingValueException();
    }

    @NotNull
    public Void scheduleResumeAfterDelay(long j10, @NotNull CancellableContinuation<? super Unit> cancellableContinuation) {
        missing();
        throw new KotlinNothingValueException();
    }
}
