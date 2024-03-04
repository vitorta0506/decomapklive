package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0000\u0010\b2\u0006\u0010\t\u001a\u0002H\b¢\u0006\u0002\u0010\n\u001a6\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\b0\f\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u001a2\u0010\u0014\u001a\u0002H\b\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u00072\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\b0\u0016H\u0086\b¢\u0006\u0002\u0010\u0017\u001a-\u0010\u0018\u001a\u00020\u0019\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u00072\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\b0\u0016H\u0086\b\u001a2\u0010\u001a\u001a\u0002H\b\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u00072\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\b0\u0016H\u0086\b¢\u0006\u0002\u0010\u0017\"\u0016\u0010\u0000\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0003¨\u0006\u001b"}, d2 = {"NONE", "Lkotlinx/coroutines/internal/Symbol;", "getNONE$annotations", "()V", "PENDING", "getPENDING$annotations", "MutableStateFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", ExifInterface.GPS_DIRECTION_TRUE, "value", "(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;", "fuseStateFlow", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/StateFlow;", "context", "Lkotlin/coroutines/CoroutineContext;", "capacity", "", "onBufferOverflow", "Lkotlinx/coroutines/channels/BufferOverflow;", "getAndUpdate", "function", "Lkotlin/Function1;", "(Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "update", "", "updateAndGet", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class StateFlowKt {
    @NotNull
    private static final Symbol NONE = new Symbol("NONE");
    @NotNull
    private static final Symbol PENDING = new Symbol("PENDING");

    @NotNull
    public static final <T> MutableStateFlow<T> MutableStateFlow(T t10) {
        if (t10 == null) {
            t10 = (T) NullSurrogateKt.NULL;
        }
        return new StateFlowImpl(t10);
    }

    @NotNull
    public static final <T> Flow<T> fuseStateFlow(@NotNull StateFlow<? extends T> stateFlow, @NotNull CoroutineContext coroutineContext, int i9, @NotNull BufferOverflow bufferOverflow) {
        boolean z10 = false;
        if (i9 >= 0 && i9 < 2) {
            z10 = true;
        }
        return ((z10 || i9 == -2) && bufferOverflow == BufferOverflow.DROP_OLDEST) ? stateFlow : SharedFlowKt.fuseSharedFlow(stateFlow, coroutineContext, i9, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [T, java.lang.Object] */
    public static final <T> T getAndUpdate(@NotNull MutableStateFlow<T> mutableStateFlow, @NotNull Function1<? super T, ? extends T> function1) {
        ?? r02;
        do {
            r02 = (Object) mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(r02, function1.invoke(r02)));
        return r02;
    }

    private static /* synthetic */ void getNONE$annotations() {
    }

    private static /* synthetic */ void getPENDING$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void update(@NotNull MutableStateFlow<T> mutableStateFlow, @NotNull Function1<? super T, ? extends T> function1) {
        Object obj;
        do {
            obj = (Object) mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(obj, function1.invoke(obj)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T updateAndGet(@NotNull MutableStateFlow<T> mutableStateFlow, @NotNull Function1<? super T, ? extends T> function1) {
        Object obj;
        T invoke;
        do {
            obj = (Object) mutableStateFlow.getValue();
            invoke = function1.invoke(obj);
        } while (!mutableStateFlow.compareAndSet(obj, invoke));
        return invoke;
    }
}
