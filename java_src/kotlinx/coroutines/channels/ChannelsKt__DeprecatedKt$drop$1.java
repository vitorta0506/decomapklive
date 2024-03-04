package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1", f = "Deprecated.kt", i = {0, 0, 1, 2}, l = {164, 169, 170}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "$this$produce"}, s = {"L$0", "I$0", "L$0", "L$0"})
/* loaded from: classes7.dex */
final class ChannelsKt__DeprecatedKt$drop$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ int $n;
    final /* synthetic */ ReceiveChannel $this_drop;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__DeprecatedKt$drop$1(int i9, ReceiveChannel receiveChannel, Continuation continuation) {
        super(2, continuation);
        this.$n = i9;
        this.$this_drop = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$drop$1 channelsKt__DeprecatedKt$drop$1 = new ChannelsKt__DeprecatedKt$drop$1(this.$n, this.$this_drop, continuation);
        channelsKt__DeprecatedKt$drop$1.L$0 = obj;
        return channelsKt__DeprecatedKt$drop$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke */
    public final Object mo1invoke(@NotNull ProducerScope producerScope, @Nullable Continuation continuation) {
        return ((ChannelsKt__DeprecatedKt$drop$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0076 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ca  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0077 -> B:23:0x007e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00c8 -> B:32:0x009f). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
