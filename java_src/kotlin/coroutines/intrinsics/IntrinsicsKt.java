package kotlin.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt", "kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes7.dex */
public final class IntrinsicsKt extends IntrinsicsKt__IntrinsicsKt {
    private IntrinsicsKt() {
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Object getCOROUTINE_SUSPENDED() {
        return IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static /* bridge */ /* synthetic */ Continuation intercepted(@NotNull Continuation continuation) {
        return IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
    }
}
