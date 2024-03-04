package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import cn.jpush.android.api.InAppSlotParams;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u0000*\f\b\u0000\u0010\u0001*\u0006\u0012\u0002\b\u00030\u00022\u00060\u0003j\u0002`\u0004B\u0005¢\u0006\u0002\u0010\u0005J\r\u0010\u0018\u001a\u00028\u0000H\u0004¢\u0006\u0002\u0010\u0019J\r\u0010\u001a\u001a\u00028\u0000H$¢\u0006\u0002\u0010\u0019J\u001d\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000e2\u0006\u0010\u001c\u001a\u00020\tH$¢\u0006\u0002\u0010\u001dJ\u001d\u0010\u001e\u001a\u00020\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001f0!H\u0084\bJ\u0015\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00028\u0000H\u0004¢\u0006\u0002\u0010$R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t@BX\u0084\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R:\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u000e2\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u000e@BX\u0084\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u0012\u0004\b\u0010\u0010\u0005\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\u00158F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006%"}, d2 = {"Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", ExifInterface.LATITUDE_SOUTH, "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "()V", "_subscriptionCount", "Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;", "<set-?>", "", "nCollectors", "getNCollectors", "()I", "nextIndex", "", "slots", "getSlots$annotations", "getSlots", "()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "subscriptionCount", "Lkotlinx/coroutines/flow/StateFlow;", "getSubscriptionCount", "()Lkotlinx/coroutines/flow/StateFlow;", "allocateSlot", "()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "createSlot", "createSlotArray", "size", "(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "forEachSlotLocked", "", "block", "Lkotlin/Function1;", "freeSlot", InAppSlotParams.SLOT_KEY.SLOT, "(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public abstract class AbstractSharedFlow<S extends AbstractSharedFlowSlot<?>> {
    @Nullable
    private SubscriptionCountStateFlow _subscriptionCount;
    private int nCollectors;
    private int nextIndex;
    @Nullable
    private S[] slots;

    public static final /* synthetic */ int access$getNCollectors(AbstractSharedFlow abstractSharedFlow) {
        return abstractSharedFlow.nCollectors;
    }

    public static final /* synthetic */ AbstractSharedFlowSlot[] access$getSlots(AbstractSharedFlow abstractSharedFlow) {
        return abstractSharedFlow.slots;
    }

    protected static /* synthetic */ void getSlots$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final S allocateSlot() {
        S s10;
        SubscriptionCountStateFlow subscriptionCountStateFlow;
        synchronized (this) {
            S[] sArr = this.slots;
            if (sArr == null) {
                sArr = createSlotArray(2);
                this.slots = sArr;
            } else if (this.nCollectors >= sArr.length) {
                Object[] copyOf = Arrays.copyOf(sArr, sArr.length * 2);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                this.slots = (S[]) ((AbstractSharedFlowSlot[]) copyOf);
                sArr = (S[]) ((AbstractSharedFlowSlot[]) copyOf);
            }
            int i9 = this.nextIndex;
            do {
                s10 = sArr[i9];
                if (s10 == null) {
                    s10 = createSlot();
                    sArr[i9] = s10;
                }
                i9++;
                if (i9 >= sArr.length) {
                    i9 = 0;
                }
            } while (!s10.allocateLocked(this));
            this.nextIndex = i9;
            this.nCollectors++;
            subscriptionCountStateFlow = this._subscriptionCount;
        }
        if (subscriptionCountStateFlow != null) {
            subscriptionCountStateFlow.increment(1);
        }
        return s10;
    }

    @NotNull
    protected abstract S createSlot();

    @NotNull
    protected abstract S[] createSlotArray(int i9);

    protected final void forEachSlotLocked(@NotNull Function1<? super S, Unit> function1) {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        if (this.nCollectors == 0 || (abstractSharedFlowSlotArr = this.slots) == null) {
            return;
        }
        for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
            if (abstractSharedFlowSlot != null) {
                function1.invoke(abstractSharedFlowSlot);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void freeSlot(@NotNull S s10) {
        SubscriptionCountStateFlow subscriptionCountStateFlow;
        int i9;
        Continuation<Unit>[] freeLocked;
        synchronized (this) {
            int i10 = this.nCollectors - 1;
            this.nCollectors = i10;
            subscriptionCountStateFlow = this._subscriptionCount;
            if (i10 == 0) {
                this.nextIndex = 0;
            }
            freeLocked = s10.freeLocked(this);
        }
        for (Continuation<Unit> continuation : freeLocked) {
            if (continuation != null) {
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m1657constructorimpl(Unit.INSTANCE));
            }
        }
        if (subscriptionCountStateFlow != null) {
            subscriptionCountStateFlow.increment(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getNCollectors() {
        return this.nCollectors;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final S[] getSlots() {
        return this.slots;
    }

    @NotNull
    public final StateFlow<Integer> getSubscriptionCount() {
        SubscriptionCountStateFlow subscriptionCountStateFlow;
        synchronized (this) {
            subscriptionCountStateFlow = this._subscriptionCount;
            if (subscriptionCountStateFlow == null) {
                subscriptionCountStateFlow = new SubscriptionCountStateFlow(this.nCollectors);
                this._subscriptionCount = subscriptionCountStateFlow;
            }
        }
        return subscriptionCountStateFlow;
    }
}
