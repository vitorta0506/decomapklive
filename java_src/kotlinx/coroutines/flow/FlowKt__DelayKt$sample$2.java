package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.selects.SelectBuilderImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "Lkotlinx/coroutines/flow/FlowCollector;", "downstream", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", f = "Delay.kt", i = {0, 0, 0, 0}, l = {352}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", RemoteMessageConst.Notification.TICKER}, s = {"L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes7.dex */
public final class FlowKt__DelayKt$sample$2<T> extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<? super T>, Continuation<? super Unit>, Object> {
    final /* synthetic */ long $periodMillis;
    final /* synthetic */ Flow<T> $this_sample;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$sample$2(long j10, Flow<? extends T> flow, Continuation<? super FlowKt__DelayKt$sample$2> continuation) {
        super(3, continuation);
        this.$periodMillis = j10;
        this.$this_sample = flow;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Object obj, Continuation<? super Unit> continuation) {
        return invoke(coroutineScope, (FlowCollector) ((FlowCollector) obj), continuation);
    }

    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @NotNull FlowCollector<? super T> flowCollector, @Nullable Continuation<? super Unit> continuation) {
        FlowKt__DelayKt$sample$2 flowKt__DelayKt$sample$2 = new FlowKt__DelayKt$sample$2(this.$periodMillis, this.$this_sample, continuation);
        flowKt__DelayKt$sample$2.L$0 = coroutineScope;
        flowKt__DelayKt$sample$2.L$1 = flowCollector;
        return flowKt__DelayKt$sample$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        ReceiveChannel fixedPeriodTicker$default;
        FlowCollector flowCollector;
        ReceiveChannel receiveChannel;
        Ref.ObjectRef objectRef;
        ReceiveChannel receiveChannel2;
        Object coroutine_suspended2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            ReceiveChannel produce$default = ProduceKt.produce$default(coroutineScope, null, -1, new FlowKt__DelayKt$sample$2$values$1(this.$this_sample, null), 1, null);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            fixedPeriodTicker$default = FlowKt__DelayKt.fixedPeriodTicker$default(coroutineScope, this.$periodMillis, 0L, 2, null);
            flowCollector = (FlowCollector) this.L$1;
            receiveChannel = produce$default;
            objectRef = objectRef2;
            receiveChannel2 = fixedPeriodTicker$default;
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            receiveChannel2 = (ReceiveChannel) this.L$3;
            objectRef = (Ref.ObjectRef) this.L$2;
            receiveChannel = (ReceiveChannel) this.L$1;
            flowCollector = (FlowCollector) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (objectRef.element != NullSurrogateKt.DONE) {
            this.L$0 = flowCollector;
            this.L$1 = receiveChannel;
            this.L$2 = objectRef;
            this.L$3 = receiveChannel2;
            this.label = 1;
            SelectBuilderImpl selectBuilderImpl = new SelectBuilderImpl(this);
            try {
                selectBuilderImpl.invoke(receiveChannel.getOnReceiveCatching(), new FlowKt__DelayKt$sample$2$1$1(objectRef, receiveChannel2, null));
                selectBuilderImpl.invoke(receiveChannel2.getOnReceive(), new FlowKt__DelayKt$sample$2$1$2(objectRef, flowCollector, null));
            } catch (Throwable th2) {
                selectBuilderImpl.handleBuilderException(th2);
            }
            Object result = selectBuilderImpl.getResult();
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (result == coroutine_suspended2) {
                DebugProbesKt.probeCoroutineSuspended(this);
                continue;
            }
            if (result == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
