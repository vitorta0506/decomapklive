package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Add missing generic type declarations: [R] */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes7.dex */
/* synthetic */ class SequencesKt___SequencesKt$flatMapIndexed$2<R> extends FunctionReferenceImpl implements Function1<Sequence<? extends R>, Iterator<? extends R>> {
    public static final SequencesKt___SequencesKt$flatMapIndexed$2 INSTANCE = new SequencesKt___SequencesKt$flatMapIndexed$2();

    SequencesKt___SequencesKt$flatMapIndexed$2() {
        super(1, Sequence.class, "iterator", "iterator()Ljava/util/Iterator;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((Sequence) ((Sequence) obj));
    }

    @NotNull
    public final Iterator<R> invoke(@NotNull Sequence<? extends R> p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        return (Iterator<? extends R>) p02.iterator();
    }
}
