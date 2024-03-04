package kotlinx.coroutines.sync;

import com.facebook.internal.NativeProtocol;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
@DebugMetadata(c = "kotlinx.coroutines.sync.MutexKt", f = "Mutex.kt", i = {0, 0, 0}, l = {112}, m = "withLock", n = {"$this$withLock", "owner", NativeProtocol.WEB_DIALOG_ACTION}, s = {"L$0", "L$1", "L$2"})
/* loaded from: classes7.dex */
public final class MutexKt$withLock$1<T> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MutexKt$withLock$1(Continuation<? super MutexKt$withLock$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return MutexKt.withLock(null, null, null, this);
    }
}
