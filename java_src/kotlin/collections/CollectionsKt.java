package kotlin.collections;

import java.util.Collection;
import java.util.Set;
import kotlin.Metadata;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"kotlin/collections/CollectionsKt__CollectionsJVMKt", "kotlin/collections/CollectionsKt__CollectionsKt", "kotlin/collections/CollectionsKt__IterablesKt", "kotlin/collections/CollectionsKt__IteratorsJVMKt", "kotlin/collections/CollectionsKt__IteratorsKt", "kotlin/collections/CollectionsKt__MutableCollectionsJVMKt", "kotlin/collections/CollectionsKt__MutableCollectionsKt", "kotlin/collections/CollectionsKt__ReversedViewsKt", "kotlin/collections/CollectionsKt___CollectionsJvmKt", "kotlin/collections/CollectionsKt___CollectionsKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes7.dex */
public final class CollectionsKt extends CollectionsKt___CollectionsKt {
    private CollectionsKt() {
    }

    public static /* bridge */ /* synthetic */ boolean addAll(@NotNull Collection collection, @NotNull Iterable iterable) {
        return CollectionsKt__MutableCollectionsKt.addAll(collection, iterable);
    }

    public static /* bridge */ /* synthetic */ boolean addAll(@NotNull Collection collection, @NotNull Sequence sequence) {
        return CollectionsKt__MutableCollectionsKt.addAll(collection, sequence);
    }

    public static /* bridge */ /* synthetic */ boolean addAll(@NotNull Collection collection, @NotNull Object[] objArr) {
        return CollectionsKt__MutableCollectionsKt.addAll(collection, objArr);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Set toSet(@NotNull Iterable iterable) {
        return CollectionsKt___CollectionsKt.toSet(iterable);
    }
}
