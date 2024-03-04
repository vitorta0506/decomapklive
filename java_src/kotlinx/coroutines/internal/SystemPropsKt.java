package kotlinx.coroutines.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"kotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt", "kotlinx/coroutines/internal/SystemPropsKt__SystemProps_commonKt"}, k = 4, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class SystemPropsKt {
    public static final int getAVAILABLE_PROCESSORS() {
        return SystemPropsKt__SystemPropsKt.getAVAILABLE_PROCESSORS();
    }

    public static final int systemProp(@NotNull String str, int i9, int i10, int i11) {
        return SystemPropsKt__SystemProps_commonKt.systemProp(str, i9, i10, i11);
    }

    public static /* synthetic */ int systemProp$default(String str, int i9, int i10, int i11, int i12, Object obj) {
        return SystemPropsKt__SystemProps_commonKt.systemProp$default(str, i9, i10, i11, i12, obj);
    }

    public static final long systemProp(@NotNull String str, long j10, long j11, long j12) {
        return SystemPropsKt__SystemProps_commonKt.systemProp(str, j10, j11, j12);
    }

    public static /* synthetic */ long systemProp$default(String str, long j10, long j11, long j12, int i9, Object obj) {
        return SystemPropsKt__SystemProps_commonKt.systemProp$default(str, j10, j11, j12, i9, obj);
    }

    @Nullable
    public static final String systemProp(@NotNull String str) {
        return SystemPropsKt__SystemPropsKt.systemProp(str);
    }

    public static final boolean systemProp(@NotNull String str, boolean z10) {
        return SystemPropsKt__SystemProps_commonKt.systemProp(str, z10);
    }
}
