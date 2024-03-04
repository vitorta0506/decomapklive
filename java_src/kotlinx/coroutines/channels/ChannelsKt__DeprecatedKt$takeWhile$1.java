package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.huawei.hms.push.e;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {269, 270, 271}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", e.f27721a, "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
/* loaded from: classes7.dex */
final class ChannelsKt__DeprecatedKt$takeWhile$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function2 $predicate;
    final /* synthetic */ ReceiveChannel $this_takeWhile;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__DeprecatedKt$takeWhile$1(ReceiveChannel receiveChannel, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$this_takeWhile = receiveChannel;
        this.$predicate = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$takeWhile$1 channelsKt__DeprecatedKt$takeWhile$1 = new ChannelsKt__DeprecatedKt$takeWhile$1(this.$this_takeWhile, this.$predicate, continuation);
        channelsKt__DeprecatedKt$takeWhile$1.L$0 = obj;
        return channelsKt__DeprecatedKt$takeWhile$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke */
    public final Object mo1invoke(@NotNull ProducerScope producerScope, @Nullable Continuation continuation) {
        return ((ChannelsKt__DeprecatedKt$takeWhile$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ac  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a7 -> B:14:0x0057). Please submit an issue!!! */
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
            if (r1 == 0) goto L48
            if (r1 == r4) goto L38
            if (r1 == r3) goto L25
            if (r1 != r2) goto L1d
            java.lang.Object r1 = r9.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
            kotlin.ResultKt.throwOnFailure(r10)
            goto L56
        L1d:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L25:
            java.lang.Object r1 = r9.L$2
            java.lang.Object r5 = r9.L$1
            kotlinx.coroutines.channels.ChannelIterator r5 = (kotlinx.coroutines.channels.ChannelIterator) r5
            java.lang.Object r6 = r9.L$0
            kotlinx.coroutines.channels.ProducerScope r6 = (kotlinx.coroutines.channels.ProducerScope) r6
            kotlin.ResultKt.throwOnFailure(r10)
            r7 = r6
            r6 = r5
            r5 = r1
            r1 = r0
            r0 = r9
            goto L8c
        L38:
            java.lang.Object r1 = r9.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
            kotlin.ResultKt.throwOnFailure(r10)
            r6 = r5
            r5 = r1
            r1 = r0
            r0 = r9
            goto L6a
        L48:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            kotlinx.coroutines.channels.ProducerScope r10 = (kotlinx.coroutines.channels.ProducerScope) r10
            kotlinx.coroutines.channels.ReceiveChannel r1 = r9.$this_takeWhile
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
            r5 = r10
        L56:
            r10 = r9
        L57:
            r10.L$0 = r5
            r10.L$1 = r1
            r10.label = r4
            java.lang.Object r6 = r1.hasNext(r10)
            if (r6 != r0) goto L64
            return r0
        L64:
            r8 = r0
            r0 = r10
            r10 = r6
            r6 = r5
            r5 = r1
            r1 = r8
        L6a:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto Lac
            java.lang.Object r10 = r5.next()
            kotlin.jvm.functions.Function2 r7 = r0.$predicate
            r0.L$0 = r6
            r0.L$1 = r5
            r0.L$2 = r10
            r0.label = r3
            java.lang.Object r7 = r7.mo1invoke(r10, r0)
            if (r7 != r1) goto L87
            return r1
        L87:
            r8 = r5
            r5 = r10
            r10 = r7
            r7 = r6
            r6 = r8
        L8c:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 != 0) goto L97
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        L97:
            r0.L$0 = r7
            r0.L$1 = r6
            r10 = 0
            r0.L$2 = r10
            r0.label = r2
            java.lang.Object r10 = r7.send(r5, r0)
            if (r10 != r1) goto La7
            return r1
        La7:
            r10 = r0
            r0 = r1
            r1 = r6
            r5 = r7
            goto L57
        Lac:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
