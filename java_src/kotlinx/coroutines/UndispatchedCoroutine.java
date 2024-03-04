package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.internal.ServerProtocol;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u0007J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000bH\u0014J\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u000bR\"\u0010\b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/UndispatchedCoroutine;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/ScopeCoroutine;", "context", "Lkotlin/coroutines/CoroutineContext;", "uCont", "Lkotlin/coroutines/Continuation;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "threadStateToRecover", "Ljava/lang/ThreadLocal;", "Lkotlin/Pair;", "", "afterResume", "", ServerProtocol.DIALOG_PARAM_STATE, "clearThreadContext", "", "saveThreadContext", "oldValue", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class UndispatchedCoroutine<T> extends ScopeCoroutine<T> {
    @NotNull
    private ThreadLocal<Pair<CoroutineContext, Object>> threadStateToRecover;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public UndispatchedCoroutine(@org.jetbrains.annotations.NotNull kotlin.coroutines.CoroutineContext r3, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super T> r4) {
        /*
            r2 = this;
            kotlinx.coroutines.UndispatchedMarker r0 = kotlinx.coroutines.UndispatchedMarker.INSTANCE
            kotlin.coroutines.CoroutineContext$Element r1 = r3.get(r0)
            if (r1 != 0) goto Ld
            kotlin.coroutines.CoroutineContext r0 = r3.plus(r0)
            goto Le
        Ld:
            r0 = r3
        Le:
            r2.<init>(r0, r4)
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal
            r0.<init>()
            r2.threadStateToRecover = r0
            kotlin.coroutines.CoroutineContext r4 = r4.getContext()
            kotlin.coroutines.ContinuationInterceptor$Key r0 = kotlin.coroutines.ContinuationInterceptor.Key
            kotlin.coroutines.CoroutineContext$Element r4 = r4.get(r0)
            boolean r4 = r4 instanceof kotlinx.coroutines.CoroutineDispatcher
            if (r4 != 0) goto L31
            r4 = 0
            java.lang.Object r4 = kotlinx.coroutines.internal.ThreadContextKt.updateThreadContext(r3, r4)
            kotlinx.coroutines.internal.ThreadContextKt.restoreThreadContext(r3, r4)
            r2.saveThreadContext(r3, r4)
        L31:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.UndispatchedCoroutine.<init>(kotlin.coroutines.CoroutineContext, kotlin.coroutines.Continuation):void");
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.AbstractCoroutine
    protected void afterResume(@Nullable Object obj) {
        Pair<CoroutineContext, Object> pair = this.threadStateToRecover.get();
        if (pair != null) {
            ThreadContextKt.restoreThreadContext(pair.component1(), pair.component2());
            this.threadStateToRecover.set(null);
        }
        Object recoverResult = CompletionStateKt.recoverResult(obj, this.uCont);
        Continuation<T> continuation = this.uCont;
        CoroutineContext context = continuation.getContext();
        Object updateThreadContext = ThreadContextKt.updateThreadContext(context, null);
        UndispatchedCoroutine<?> updateUndispatchedCompletion = updateThreadContext != ThreadContextKt.NO_THREAD_ELEMENTS ? CoroutineContextKt.updateUndispatchedCompletion(continuation, context, updateThreadContext) : null;
        try {
            this.uCont.resumeWith(recoverResult);
            Unit unit = Unit.INSTANCE;
        } finally {
            if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
            }
        }
    }

    public final boolean clearThreadContext() {
        if (this.threadStateToRecover.get() == null) {
            return false;
        }
        this.threadStateToRecover.set(null);
        return true;
    }

    public final void saveThreadContext(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        this.threadStateToRecover.set(TuplesKt.to(coroutineContext, obj));
    }
}
