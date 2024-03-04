package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\b\u0002\u0018\u00002\u00020\u001eB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0007\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\t\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\bJ\u001d\u0010\r\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\u00060\nH\u0002¢\u0006\u0004\b\u0014\u0010\u000eR\u0014\u0010\u0017\u001a\u00020\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00060\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreImpl;", "", "permits", "acquiredPermits", "<init>", "(II)V", "", "acquire", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireSlowPath", "Lkotlinx/coroutines/CancellableContinuation;", "cont", "", "addAcquireToQueue", "(Lkotlinx/coroutines/CancellableContinuation;)Z", "release", "()V", "tryAcquire", "()Z", "tryResumeNextFromQueue", "tryResumeAcquire", "getAvailablePermits", "()I", "availablePermits", "Lkotlin/Function1;", "", "onCancellationRelease", "Lkotlin/jvm/functions/Function1;", "I", "kotlinx-coroutines-core", "Lkotlinx/coroutines/sync/Semaphore;"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class SemaphoreImpl implements Semaphore {
    @NotNull
    volatile /* synthetic */ int _availablePermits;
    @NotNull
    private volatile /* synthetic */ long deqIdx = 0;
    @NotNull
    private volatile /* synthetic */ long enqIdx = 0;
    @NotNull
    private volatile /* synthetic */ Object head;
    @NotNull
    private final Function1<Throwable, Unit> onCancellationRelease;
    private final int permits;
    @NotNull
    private volatile /* synthetic */ Object tail;
    private static final /* synthetic */ AtomicReferenceFieldUpdater head$FU = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "head");
    private static final /* synthetic */ AtomicLongFieldUpdater deqIdx$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "deqIdx");
    private static final /* synthetic */ AtomicReferenceFieldUpdater tail$FU = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "tail");
    private static final /* synthetic */ AtomicLongFieldUpdater enqIdx$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "enqIdx");
    static final /* synthetic */ AtomicIntegerFieldUpdater _availablePermits$FU = AtomicIntegerFieldUpdater.newUpdater(SemaphoreImpl.class, "_availablePermits");

    public SemaphoreImpl(int i9, int i10) {
        this.permits = i9;
        boolean z10 = true;
        if (!(i9 > 0)) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i9).toString());
        }
        if ((i10 < 0 || i10 > i9) ? false : false) {
            SemaphoreSegment semaphoreSegment = new SemaphoreSegment(0L, null, 2);
            this.head = semaphoreSegment;
            this.tail = semaphoreSegment;
            this._availablePermits = i9 - i10;
            this.onCancellationRelease = new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.SemaphoreImpl$onCancellationRelease$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                    invoke2(th2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Throwable th2) {
                    SemaphoreImpl.this.release();
                }
            };
            return;
        }
        throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i9).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object acquireSlowPath(Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(intercepted);
        while (true) {
            if (!addAcquireToQueue(orCreateCancellableContinuation)) {
                if (_availablePermits$FU.getAndDecrement(this) > 0) {
                    orCreateCancellableContinuation.resume(Unit.INSTANCE, this.onCancellationRelease);
                    break;
                }
            } else {
                break;
            }
        }
        Object result = orCreateCancellableContinuation.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return result == coroutine_suspended2 ? result : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0074, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean addAcquireToQueue(kotlinx.coroutines.CancellableContinuation<? super kotlin.Unit> r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            java.lang.Object r2 = r0.tail
            kotlinx.coroutines.sync.SemaphoreSegment r2 = (kotlinx.coroutines.sync.SemaphoreSegment) r2
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = kotlinx.coroutines.sync.SemaphoreImpl.enqIdx$FU
            long r3 = r3.getAndIncrement(r0)
            int r5 = kotlinx.coroutines.sync.SemaphoreKt.access$getSEGMENT_SIZE$p()
            long r5 = (long) r5
            long r5 = r3 / r5
        L15:
            r7 = r2
        L16:
            long r8 = r7.getId()
            int r10 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r10 < 0) goto L2a
            boolean r8 = r7.getRemoved()
            if (r8 == 0) goto L25
            goto L2a
        L25:
            java.lang.Object r7 = kotlinx.coroutines.internal.SegmentOrClosed.m3206constructorimpl(r7)
            goto L3c
        L2a:
            java.lang.Object r8 = kotlinx.coroutines.internal.ConcurrentLinkedListNode.access$getNextOrClosed(r7)
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.internal.ConcurrentLinkedListKt.access$getCLOSED$p()
            if (r8 != r9) goto Lb9
            kotlinx.coroutines.internal.Symbol r7 = kotlinx.coroutines.internal.ConcurrentLinkedListKt.access$getCLOSED$p()
            java.lang.Object r7 = kotlinx.coroutines.internal.SegmentOrClosed.m3206constructorimpl(r7)
        L3c:
            boolean r8 = kotlinx.coroutines.internal.SegmentOrClosed.m3211isClosedimpl(r7)
            r9 = 0
            r10 = 1
            if (r8 != 0) goto L81
            kotlinx.coroutines.internal.Segment r8 = kotlinx.coroutines.internal.SegmentOrClosed.m3209getSegmentimpl(r7)
        L48:
            java.lang.Object r11 = r0.tail
            kotlinx.coroutines.internal.Segment r11 = (kotlinx.coroutines.internal.Segment) r11
            long r12 = r11.getId()
            long r14 = r8.getId()
            int r16 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r16 < 0) goto L5a
        L58:
            r8 = 1
            goto L74
        L5a:
            boolean r12 = r8.tryIncPointers$kotlinx_coroutines_core()
            if (r12 != 0) goto L62
            r8 = 0
            goto L74
        L62:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r12 = kotlinx.coroutines.sync.SemaphoreImpl.tail$FU
            boolean r12 = androidx.concurrent.futures.a.a(r12, r0, r11, r8)
            if (r12 == 0) goto L77
            boolean r8 = r11.decPointers$kotlinx_coroutines_core()
            if (r8 == 0) goto L58
            r11.remove()
            goto L58
        L74:
            if (r8 == 0) goto L15
            goto L81
        L77:
            boolean r11 = r8.decPointers$kotlinx_coroutines_core()
            if (r11 == 0) goto L48
            r8.remove()
            goto L48
        L81:
            kotlinx.coroutines.internal.Segment r2 = kotlinx.coroutines.internal.SegmentOrClosed.m3209getSegmentimpl(r7)
            kotlinx.coroutines.sync.SemaphoreSegment r2 = (kotlinx.coroutines.sync.SemaphoreSegment) r2
            int r5 = kotlinx.coroutines.sync.SemaphoreKt.access$getSEGMENT_SIZE$p()
            long r5 = (long) r5
            long r3 = r3 % r5
            int r4 = (int) r3
            r3 = 0
            java.util.concurrent.atomic.AtomicReferenceArray r5 = r2.acquirers
            boolean r3 = r5.compareAndSet(r4, r3, r1)
            if (r3 == 0) goto La0
            kotlinx.coroutines.sync.CancelSemaphoreAcquisitionHandler r3 = new kotlinx.coroutines.sync.CancelSemaphoreAcquisitionHandler
            r3.<init>(r2, r4)
            r1.invokeOnCancellation(r3)
            return r10
        La0:
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.sync.SemaphoreKt.access$getPERMIT$p()
            kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.sync.SemaphoreKt.access$getTAKEN$p()
            java.util.concurrent.atomic.AtomicReferenceArray r2 = r2.acquirers
            boolean r2 = r2.compareAndSet(r4, r3, r5)
            if (r2 == 0) goto Lb8
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            kotlin.jvm.functions.Function1<java.lang.Throwable, kotlin.Unit> r3 = r0.onCancellationRelease
            r1.resume(r2, r3)
            return r10
        Lb8:
            return r9
        Lb9:
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r8 = (kotlinx.coroutines.internal.ConcurrentLinkedListNode) r8
            kotlinx.coroutines.internal.Segment r8 = (kotlinx.coroutines.internal.Segment) r8
            if (r8 == 0) goto Lc2
        Lbf:
            r7 = r8
            goto L16
        Lc2:
            long r8 = r7.getId()
            r10 = 1
            long r8 = r8 + r10
            r10 = r7
            kotlinx.coroutines.sync.SemaphoreSegment r10 = (kotlinx.coroutines.sync.SemaphoreSegment) r10
            kotlinx.coroutines.sync.SemaphoreSegment r8 = kotlinx.coroutines.sync.SemaphoreKt.access$createSegment(r8, r10)
            boolean r9 = r7.trySetNext(r8)
            if (r9 == 0) goto L16
            boolean r9 = r7.getRemoved()
            if (r9 == 0) goto Lbf
            r7.remove()
            goto Lbf
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreImpl.addAcquireToQueue(kotlinx.coroutines.CancellableContinuation):boolean");
    }

    private final boolean tryResumeAcquire(CancellableContinuation<? super Unit> cancellableContinuation) {
        Object tryResume = cancellableContinuation.tryResume(Unit.INSTANCE, null, this.onCancellationRelease);
        if (tryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(tryResume);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0070, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean tryResumeNextFromQueue() {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreImpl.tryResumeNextFromQueue():boolean");
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    @Nullable
    public Object acquire(@NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (_availablePermits$FU.getAndDecrement(this) > 0) {
            return Unit.INSTANCE;
        }
        Object acquireSlowPath = acquireSlowPath(continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return acquireSlowPath == coroutine_suspended ? acquireSlowPath : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public int getAvailablePermits() {
        return Math.max(this._availablePermits, 0);
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public void release() {
        while (true) {
            int i9 = this._availablePermits;
            if (i9 < this.permits) {
                if (_availablePermits$FU.compareAndSet(this, i9, i9 + 1) && (i9 >= 0 || tryResumeNextFromQueue())) {
                    return;
                }
            } else {
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.permits).toString());
            }
        }
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public boolean tryAcquire() {
        int i9;
        do {
            i9 = this._availablePermits;
            if (i9 <= 0) {
                return false;
            }
        } while (!_availablePermits$FU.compareAndSet(this, i9, i9 - 1));
        return true;
    }
}
