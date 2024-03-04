package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u001fB!\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ,\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\fH\u0086\b¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00020\u0004H\u0086\b¢\u0006\u0004\b\u0012\u0010\u0013J$\u0010\u0014\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\fH\u0086\b¢\u0006\u0004\b\u0014\u0010\u0015J\"\u0010\u0016\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\fH\u0086\b¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreSegment;", "", "id", "prev", "", "pointers", "<init>", "(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V", "index", "", "cancel", "(I)V", "", "expected", "value", "", "cas", "(ILjava/lang/Object;Ljava/lang/Object;)Z", "get", "(I)Ljava/lang/Object;", "getAndSet", "(ILjava/lang/Object;)Ljava/lang/Object;", "set", "(ILjava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "getMaxSlots", "()I", "maxSlots", "kotlinx-coroutines-core", "Lkotlinx/coroutines/internal/Segment;"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class SemaphoreSegment extends Segment<SemaphoreSegment> {
    @NotNull
    /* synthetic */ AtomicReferenceArray acquirers;

    public SemaphoreSegment(long j10, @Nullable SemaphoreSegment semaphoreSegment, int i9) {
        super(j10, semaphoreSegment, i9);
        int i10;
        i10 = SemaphoreKt.SEGMENT_SIZE;
        this.acquirers = new AtomicReferenceArray(i10);
    }

    public final void cancel(int i9) {
        Symbol symbol;
        symbol = SemaphoreKt.CANCELLED;
        this.acquirers.set(i9, symbol);
        onSlotCleaned();
    }

    public final boolean cas(int i9, @Nullable Object obj, @Nullable Object obj2) {
        return this.acquirers.compareAndSet(i9, obj, obj2);
    }

    @Nullable
    public final Object get(int i9) {
        return this.acquirers.get(i9);
    }

    @Nullable
    public final Object getAndSet(int i9, @Nullable Object obj) {
        return this.acquirers.getAndSet(i9, obj);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public int getMaxSlots() {
        int i9;
        i9 = SemaphoreKt.SEGMENT_SIZE;
        return i9;
    }

    public final void set(int i9, @Nullable Object obj) {
        this.acquirers.set(i9, obj);
    }

    @NotNull
    public String toString() {
        return "SemaphoreSegment[id=" + getId() + ", hashCode=" + hashCode() + ']';
    }
}
