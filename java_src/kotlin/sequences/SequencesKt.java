package kotlin.sequences;

import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"kotlin/sequences/SequencesKt__SequenceBuilderKt", "kotlin/sequences/SequencesKt__SequencesJVMKt", "kotlin/sequences/SequencesKt__SequencesKt", "kotlin/sequences/SequencesKt___SequencesJvmKt", "kotlin/sequences/SequencesKt___SequencesKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes7.dex */
public final class SequencesKt extends SequencesKt___SequencesKt {
    private SequencesKt() {
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Iterable asIterable(@NotNull Sequence sequence) {
        return SequencesKt___SequencesKt.asIterable(sequence);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Sequence filter(@NotNull Sequence sequence, @NotNull Function1 function1) {
        return SequencesKt___SequencesKt.filter(sequence, function1);
    }

    public static /* bridge */ /* synthetic */ String joinToString$default(Sequence sequence, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i9, CharSequence charSequence4, Function1 function1, int i10, Object obj) {
        return SequencesKt___SequencesKt.joinToString$default(sequence, charSequence, charSequence2, charSequence3, i9, charSequence4, function1, i10, obj);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Sequence map(@NotNull Sequence sequence, @NotNull Function1 function1) {
        return SequencesKt___SequencesKt.map(sequence, function1);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Sequence mapNotNull(@NotNull Sequence sequence, @NotNull Function1 function1) {
        return SequencesKt___SequencesKt.mapNotNull(sequence, function1);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Sequence sortedWith(@NotNull Sequence sequence, @NotNull Comparator comparator) {
        return SequencesKt___SequencesKt.sortedWith(sequence, comparator);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List toList(@NotNull Sequence sequence) {
        return SequencesKt___SequencesKt.toList(sequence);
    }
}
