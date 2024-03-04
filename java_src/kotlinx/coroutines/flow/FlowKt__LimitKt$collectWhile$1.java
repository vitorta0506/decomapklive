package kotlinx.coroutines.flow;

import com.tencent.thumbplayer.api.TPOptionalID;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt", f = "Limit.kt", i = {0}, l = {TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE}, m = "collectWhile", n = {"collector"}, s = {"L$0"})
/* loaded from: classes7.dex */
public final class FlowKt__LimitKt$collectWhile$1<T> extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__LimitKt$collectWhile$1(Continuation<? super FlowKt__LimitKt$collectWhile$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FlowKt__LimitKt.collectWhile(null, null, this);
    }
}
