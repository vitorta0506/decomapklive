package kotlin.collections;

import java.util.Map;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"kotlin/collections/MapsKt__MapWithDefaultKt", "kotlin/collections/MapsKt__MapsJVMKt", "kotlin/collections/MapsKt__MapsKt", "kotlin/collections/MapsKt___MapsJvmKt", "kotlin/collections/MapsKt___MapsKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes7.dex */
public final class MapsKt extends MapsKt___MapsKt {
    private MapsKt() {
    }

    @PublishedApi
    public static /* bridge */ /* synthetic */ int mapCapacity(int i9) {
        return MapsKt__MapsJVMKt.mapCapacity(i9);
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static /* bridge */ /* synthetic */ Map toMutableMap(@NotNull Map map) {
        return MapsKt__MapsKt.toMutableMap(map);
    }
}
