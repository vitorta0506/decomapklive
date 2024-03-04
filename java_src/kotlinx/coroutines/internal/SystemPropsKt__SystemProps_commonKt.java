package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0000\u001a,\u0010\u0000\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005H\u0000\u001a,\u0010\u0000\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\b2\b\b\u0002\u0010\u0006\u001a\u00020\b2\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0000¨\u0006\t"}, d2 = {"systemProp", "", "propertyName", "", "defaultValue", "", "minValue", "maxValue", "", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xi = 48, xs = "kotlinx/coroutines/internal/SystemPropsKt")
/* loaded from: classes7.dex */
public final /* synthetic */ class SystemPropsKt__SystemProps_commonKt {
    public static final boolean systemProp(@NotNull String str, boolean z10) {
        String systemProp = SystemPropsKt.systemProp(str);
        return systemProp != null ? Boolean.parseBoolean(systemProp) : z10;
    }

    public static /* synthetic */ int systemProp$default(String str, int i9, int i10, int i11, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i10 = 1;
        }
        if ((i12 & 8) != 0) {
            i11 = Integer.MAX_VALUE;
        }
        return SystemPropsKt.systemProp(str, i9, i10, i11);
    }

    public static final int systemProp(@NotNull String str, int i9, int i10, int i11) {
        return (int) SystemPropsKt.systemProp(str, i9, i10, i11);
    }

    public static /* synthetic */ long systemProp$default(String str, long j10, long j11, long j12, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            j11 = 1;
        }
        long j13 = j11;
        if ((i9 & 8) != 0) {
            j12 = Long.MAX_VALUE;
        }
        return SystemPropsKt.systemProp(str, j10, j13, j12);
    }

    public static final long systemProp(@NotNull String str, long j10, long j11, long j12) {
        Long longOrNull;
        String systemProp = SystemPropsKt.systemProp(str);
        if (systemProp == null) {
            return j10;
        }
        longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(systemProp);
        if (longOrNull == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + systemProp + '\'').toString());
        }
        long longValue = longOrNull.longValue();
        boolean z10 = false;
        if (j11 <= longValue && longValue <= j12) {
            z10 = true;
        }
        if (z10) {
            return longValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j11 + ".." + j12 + ", but is '" + longValue + '\'').toString());
    }
}
