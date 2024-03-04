package kotlinx.coroutines.flow;

import com.huawei.hms.opendevice.i;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__CountKt", f = "Count.kt", i = {0}, l = {30}, m = AnimatedPasterJsonConfig.CONFIG_COUNT, n = {i.TAG}, s = {"L$0"})
/* loaded from: classes7.dex */
public final class FlowKt__CountKt$count$3<T> extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__CountKt$count$3(Continuation<? super FlowKt__CountKt$count$3> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FlowKt.count(null, null, this);
    }
}
