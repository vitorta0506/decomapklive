package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.tencent.xmagic.BuildConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/ProducerScope;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1", f = "Deprecated.kt", i = {0, 1, 2}, l = {321, BuildConfig.VERSION_CODE, BuildConfig.VERSION_CODE}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
/* loaded from: classes7.dex */
final class ChannelsKt__DeprecatedKt$flatMap$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ ReceiveChannel $this_flatMap;
    final /* synthetic */ Function2 $transform;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__DeprecatedKt$flatMap$1(ReceiveChannel receiveChannel, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$this_flatMap = receiveChannel;
        this.$transform = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$flatMap$1 channelsKt__DeprecatedKt$flatMap$1 = new ChannelsKt__DeprecatedKt$flatMap$1(this.$this_flatMap, this.$transform, continuation);
        channelsKt__DeprecatedKt$flatMap$1.L$0 = obj;
        return channelsKt__DeprecatedKt$flatMap$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke */
    public final Object mo1invoke(@NotNull ProducerScope producerScope, @Nullable Continuation continuation) {
        return ((ChannelsKt__DeprecatedKt$flatMap$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0090 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0096  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0091 -> B:14:0x0054). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L45
            if (r1 == r4) goto L35
            if (r1 == r3) goto L25
            if (r1 != r2) goto L1d
            java.lang.Object r1 = r9.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
            kotlin.ResultKt.throwOnFailure(r10)
            goto L53
        L1d:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L25:
            java.lang.Object r1 = r9.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
            kotlin.ResultKt.throwOnFailure(r10)
            r6 = r5
            r5 = r1
            r1 = r0
            r0 = r9
            goto L82
        L35:
            java.lang.Object r1 = r9.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
            kotlin.ResultKt.throwOnFailure(r10)
            r6 = r5
            r5 = r1
            r1 = r0
            r0 = r9
            goto L67
        L45:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            kotlinx.coroutines.channels.ProducerScope r10 = (kotlinx.coroutines.channels.ProducerScope) r10
            kotlinx.coroutines.channels.ReceiveChannel r1 = r9.$this_flatMap
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
            r5 = r10
        L53:
            r10 = r9
        L54:
            r10.L$0 = r5
            r10.L$1 = r1
            r10.label = r4
            java.lang.Object r6 = r1.hasNext(r10)
            if (r6 != r0) goto L61
            return r0
        L61:
            r8 = r0
            r0 = r10
            r10 = r6
            r6 = r5
            r5 = r1
            r1 = r8
        L67:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L96
            java.lang.Object r10 = r5.next()
            kotlin.jvm.functions.Function2 r7 = r0.$transform
            r0.L$0 = r6
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r10 = r7.mo1invoke(r10, r0)
            if (r10 != r1) goto L82
            return r1
        L82:
            kotlinx.coroutines.channels.ReceiveChannel r10 = (kotlinx.coroutines.channels.ReceiveChannel) r10
            r0.L$0 = r6
            r0.L$1 = r5
            r0.label = r2
            java.lang.Object r10 = kotlinx.coroutines.channels.ChannelsKt.toChannel(r10, r6, r0)
            if (r10 != r1) goto L91
            return r1
        L91:
            r10 = r0
            r0 = r1
            r1 = r5
            r5 = r6
            goto L54
        L96:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
