package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.AbstractSendChannel;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000BB9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012 \u0010\t\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\b¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\u00020\u00122\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00172\u0006\u0010\r\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010 \u001a\u00020\u00172\u0006\u0010\r\u001a\u00028\u00002\n\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\u001eH\u0014¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0012H\u0014¢\u0006\u0004\b#\u0010$J\u0011\u0010%\u001a\u0004\u0018\u00010\u0017H\u0014¢\u0006\u0004\b%\u0010&J\u001d\u0010'\u001a\u0004\u0018\u00010\u00172\n\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\u001eH\u0014¢\u0006\u0004\b'\u0010(J\u0019\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b*\u0010+R\u001e\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00102\u001a\u00020/8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00103R\u0016\u00104\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00103R\u0014\u00105\u001a\u00020\u00128DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b5\u00106R\u0014\u00107\u001a\u00020\u00128DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b7\u00106R\u0014\u00108\u001a\u00020\u00128DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b8\u00106R\u0014\u00109\u001a\u00020\u00128DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b9\u00106R\u0014\u0010:\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b:\u00106R\u0014\u0010;\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u00106R\u0018\u0010>\u001a\u00060<j\u0002`=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010@¨\u0006A"}, d2 = {"Lkotlinx/coroutines/channels/ArrayChannel;", ExifInterface.LONGITUDE_EAST, "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V", "currentSize", "element", "enqueueElement", "(ILjava/lang/Object;)V", "Lkotlinx/coroutines/channels/Receive;", "receive", "", "enqueueReceiveInternal", "(Lkotlinx/coroutines/channels/Receive;)Z", "Lkotlinx/coroutines/channels/Send;", "send", "", "enqueueSend", "(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;", "ensureCapacity", "(I)V", "offerInternal", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "offerSelectInternal", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "wasClosed", "onCancelIdempotent", "(Z)V", "pollInternal", "()Ljava/lang/Object;", "pollSelectInternal", "(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/Symbol;", "updateBufferSize", "(I)Lkotlinx/coroutines/internal/Symbol;", "", "buffer", "[Ljava/lang/Object;", "", "getBufferDebugString", "()Ljava/lang/String;", "bufferDebugString", "I", "head", "isBufferAlwaysEmpty", "()Z", "isBufferAlwaysFull", "isBufferEmpty", "isBufferFull", "isClosedForReceive", "isEmpty", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/channels/BufferOverflow;", "kotlinx-coroutines-core", "Lkotlinx/coroutines/channels/AbstractChannel;"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public class ArrayChannel<E> extends AbstractChannel<E> {
    @NotNull
    private Object[] buffer;
    private final int capacity;
    private int head;
    @NotNull
    private final ReentrantLock lock;
    @NotNull
    private final BufferOverflow onBufferOverflow;
    @NotNull
    private volatile /* synthetic */ int size;

    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ArrayChannel(int i9, @NotNull BufferOverflow bufferOverflow, @Nullable Function1<? super E, Unit> function1) {
        super(function1);
        this.capacity = i9;
        this.onBufferOverflow = bufferOverflow;
        if (i9 >= 1) {
            this.lock = new ReentrantLock();
            Object[] objArr = new Object[Math.min(i9, 8)];
            ArraysKt___ArraysJvmKt.fill$default(objArr, AbstractChannelKt.EMPTY, 0, 0, 6, (Object) null);
            this.buffer = objArr;
            this.size = 0;
            return;
        }
        throw new IllegalArgumentException(("ArrayChannel capacity must be at least 1, but " + i9 + " was specified").toString());
    }

    private final void enqueueElement(int i9, E e10) {
        if (i9 < this.capacity) {
            ensureCapacity(i9);
            Object[] objArr = this.buffer;
            objArr[(this.head + i9) % objArr.length] = e10;
            return;
        }
        Object[] objArr2 = this.buffer;
        int i10 = this.head;
        objArr2[i10 % objArr2.length] = null;
        objArr2[(i9 + i10) % objArr2.length] = e10;
        this.head = (i10 + 1) % objArr2.length;
    }

    private final void ensureCapacity(int i9) {
        Object[] objArr = this.buffer;
        if (i9 >= objArr.length) {
            int min = Math.min(objArr.length * 2, this.capacity);
            Object[] objArr2 = new Object[min];
            for (int i10 = 0; i10 < i9; i10++) {
                Object[] objArr3 = this.buffer;
                objArr2[i10] = objArr3[(this.head + i10) % objArr3.length];
            }
            ArraysKt___ArraysJvmKt.fill((Symbol[]) objArr2, AbstractChannelKt.EMPTY, i9, min);
            this.buffer = objArr2;
            this.head = 0;
        }
    }

    private final Symbol updateBufferSize(int i9) {
        if (i9 < this.capacity) {
            this.size = i9 + 1;
            return null;
        }
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.onBufferOverflow.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }
            return AbstractChannelKt.OFFER_SUCCESS;
        }
        return AbstractChannelKt.OFFER_FAILED;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    public boolean enqueueReceiveInternal(@NotNull Receive<? super E> receive) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return super.enqueueReceiveInternal(receive);
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @Nullable
    public Object enqueueSend(@NotNull Send send) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return super.enqueueSend(send);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    protected String getBufferDebugString() {
        return "(buffer:capacity=" + this.capacity + ",size=" + this.size + ')';
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected final boolean isBufferAlwaysEmpty() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    protected final boolean isBufferAlwaysFull() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    public final boolean isBufferEmpty() {
        return this.size == 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public final boolean isBufferFull() {
        return this.size == this.capacity && this.onBufferOverflow == BufferOverflow.SUSPEND;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel, kotlinx.coroutines.channels.ReceiveChannel
    public boolean isClosedForReceive() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return super.isClosedForReceive();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel, kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return isEmptyImpl();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    public Object offerInternal(E e10) {
        ReceiveOrClosed<E> takeFirstReceiveOrPeekClosed;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            int i9 = this.size;
            Closed<?> closedForSend = getClosedForSend();
            if (closedForSend != null) {
                return closedForSend;
            }
            Symbol updateBufferSize = updateBufferSize(i9);
            if (updateBufferSize != null) {
                return updateBufferSize;
            }
            if (i9 == 0) {
                do {
                    takeFirstReceiveOrPeekClosed = takeFirstReceiveOrPeekClosed();
                    if (takeFirstReceiveOrPeekClosed != null) {
                        if (takeFirstReceiveOrPeekClosed instanceof Closed) {
                            this.size = i9;
                            return takeFirstReceiveOrPeekClosed;
                        }
                        Intrinsics.checkNotNull(takeFirstReceiveOrPeekClosed);
                    }
                } while (takeFirstReceiveOrPeekClosed.tryResumeReceive(e10, null) == null);
                this.size = i9;
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                takeFirstReceiveOrPeekClosed.completeResumeReceive(e10);
                return takeFirstReceiveOrPeekClosed.getOfferResult();
            }
            enqueueElement(i9, e10);
            return AbstractChannelKt.OFFER_SUCCESS;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    public Object offerSelectInternal(E e10, @NotNull SelectInstance<?> selectInstance) {
        Object performAtomicTrySelect;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            int i9 = this.size;
            Closed<?> closedForSend = getClosedForSend();
            if (closedForSend != null) {
                return closedForSend;
            }
            Symbol updateBufferSize = updateBufferSize(i9);
            if (updateBufferSize != null) {
                return updateBufferSize;
            }
            if (i9 == 0) {
                do {
                    AbstractSendChannel.TryOfferDesc<E> describeTryOffer = describeTryOffer(e10);
                    performAtomicTrySelect = selectInstance.performAtomicTrySelect(describeTryOffer);
                    if (performAtomicTrySelect == null) {
                        this.size = i9;
                        ReceiveOrClosed<? super E> result = describeTryOffer.getResult();
                        Unit unit = Unit.INSTANCE;
                        reentrantLock.unlock();
                        Intrinsics.checkNotNull(result);
                        ReceiveOrClosed<? super E> receiveOrClosed = result;
                        receiveOrClosed.completeResumeReceive(e10);
                        return receiveOrClosed.getOfferResult();
                    } else if (performAtomicTrySelect != AbstractChannelKt.OFFER_FAILED) {
                    }
                } while (performAtomicTrySelect == AtomicKt.RETRY_ATOMIC);
                if (performAtomicTrySelect != SelectKt.getALREADY_SELECTED() && !(performAtomicTrySelect instanceof Closed)) {
                    throw new IllegalStateException(("performAtomicTrySelect(describeTryOffer) returned " + performAtomicTrySelect).toString());
                }
                this.size = i9;
                return performAtomicTrySelect;
            }
            if (!selectInstance.trySelect()) {
                this.size = i9;
                return SelectKt.getALREADY_SELECTED();
            }
            enqueueElement(i9, e10);
            return AbstractChannelKt.OFFER_SUCCESS;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    public void onCancelIdempotent(boolean z10) {
        Function1<E, Unit> function1 = this.onUndeliveredElement;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            int i9 = this.size;
            UndeliveredElementException undeliveredElementException = null;
            for (int i10 = 0; i10 < i9; i10++) {
                Object obj = this.buffer[this.head];
                if (function1 != null && obj != AbstractChannelKt.EMPTY) {
                    undeliveredElementException = OnUndeliveredElementKt.callUndeliveredElementCatchingException(function1, obj, undeliveredElementException);
                }
                Object[] objArr = this.buffer;
                int i11 = this.head;
                objArr[i11] = AbstractChannelKt.EMPTY;
                this.head = (i11 + 1) % objArr.length;
            }
            this.size = 0;
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            super.onCancelIdempotent(z10);
            if (undeliveredElementException != null) {
                throw undeliveredElementException;
            }
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    @Nullable
    protected Object pollInternal() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            int i9 = this.size;
            if (i9 == 0) {
                Object closedForSend = getClosedForSend();
                if (closedForSend == null) {
                    closedForSend = AbstractChannelKt.POLL_FAILED;
                }
                return closedForSend;
            }
            Object[] objArr = this.buffer;
            int i10 = this.head;
            Object obj = objArr[i10];
            Send send = null;
            objArr[i10] = null;
            this.size = i9 - 1;
            Object obj2 = AbstractChannelKt.POLL_FAILED;
            boolean z10 = false;
            if (i9 == this.capacity) {
                Send send2 = null;
                while (true) {
                    Send takeFirstSendOrPeekClosed = takeFirstSendOrPeekClosed();
                    if (takeFirstSendOrPeekClosed == null) {
                        send = send2;
                        break;
                    }
                    Intrinsics.checkNotNull(takeFirstSendOrPeekClosed);
                    if (takeFirstSendOrPeekClosed.tryResumeSend(null) != null) {
                        obj2 = takeFirstSendOrPeekClosed.getPollResult();
                        send = takeFirstSendOrPeekClosed;
                        z10 = true;
                        break;
                    }
                    takeFirstSendOrPeekClosed.undeliveredElement();
                    send2 = takeFirstSendOrPeekClosed;
                }
            }
            if (obj2 != AbstractChannelKt.POLL_FAILED && !(obj2 instanceof Closed)) {
                this.size = i9;
                Object[] objArr2 = this.buffer;
                objArr2[(this.head + i9) % objArr2.length] = obj2;
            }
            this.head = (this.head + 1) % this.buffer.length;
            Unit unit = Unit.INSTANCE;
            if (z10) {
                Intrinsics.checkNotNull(send);
                send.completeResumeSend();
            }
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x009a A[Catch: all -> 0x00c3, TRY_LEAVE, TryCatch #0 {all -> 0x00c3, blocks: (B:3:0x0005, B:5:0x0009, B:7:0x000f, B:10:0x0015, B:12:0x0029, B:14:0x0033, B:31:0x0080, B:33:0x0084, B:35:0x0088, B:41:0x00aa, B:36:0x0094, B:38:0x009a, B:16:0x0043, B:18:0x0047, B:20:0x004b, B:22:0x0051, B:25:0x005d, B:28:0x0064, B:29:0x007e), top: B:49:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ba  */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.Object pollSelectInternal(@org.jetbrains.annotations.NotNull kotlinx.coroutines.selects.SelectInstance<?> r9) {
        /*
            r8 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r8.lock
            r0.lock()
            int r1 = r8.size     // Catch: java.lang.Throwable -> Lc3
            if (r1 != 0) goto L15
            kotlinx.coroutines.channels.Closed r9 = r8.getClosedForSend()     // Catch: java.lang.Throwable -> Lc3
            if (r9 != 0) goto L11
            kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.channels.AbstractChannelKt.POLL_FAILED     // Catch: java.lang.Throwable -> Lc3
        L11:
            r0.unlock()
            return r9
        L15:
            java.lang.Object[] r2 = r8.buffer     // Catch: java.lang.Throwable -> Lc3
            int r3 = r8.head     // Catch: java.lang.Throwable -> Lc3
            r4 = r2[r3]     // Catch: java.lang.Throwable -> Lc3
            r5 = 0
            r2[r3] = r5     // Catch: java.lang.Throwable -> Lc3
            int r2 = r1 + (-1)
            r8.size = r2     // Catch: java.lang.Throwable -> Lc3
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.AbstractChannelKt.POLL_FAILED     // Catch: java.lang.Throwable -> Lc3
            int r3 = r8.capacity     // Catch: java.lang.Throwable -> Lc3
            r6 = 1
            if (r1 != r3) goto L7f
        L29:
            kotlinx.coroutines.channels.AbstractChannel$TryPollDesc r3 = r8.describeTryPoll()     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object r7 = r9.performAtomicTrySelect(r3)     // Catch: java.lang.Throwable -> Lc3
            if (r7 != 0) goto L43
            java.lang.Object r5 = r3.getResult()     // Catch: java.lang.Throwable -> Lc3
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)     // Catch: java.lang.Throwable -> Lc3
            r2 = r5
            kotlinx.coroutines.channels.Send r2 = (kotlinx.coroutines.channels.Send) r2     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object r2 = r2.getPollResult()     // Catch: java.lang.Throwable -> Lc3
        L41:
            r3 = 1
            goto L80
        L43:
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.channels.AbstractChannelKt.POLL_FAILED     // Catch: java.lang.Throwable -> Lc3
            if (r7 == r3) goto L7f
            java.lang.Object r3 = kotlinx.coroutines.internal.AtomicKt.RETRY_ATOMIC     // Catch: java.lang.Throwable -> Lc3
            if (r7 == r3) goto L29
            java.lang.Object r2 = kotlinx.coroutines.selects.SelectKt.getALREADY_SELECTED()     // Catch: java.lang.Throwable -> Lc3
            if (r7 != r2) goto L5d
            r8.size = r1     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object[] r9 = r8.buffer     // Catch: java.lang.Throwable -> Lc3
            int r1 = r8.head     // Catch: java.lang.Throwable -> Lc3
            r9[r1] = r4     // Catch: java.lang.Throwable -> Lc3
            r0.unlock()
            return r7
        L5d:
            boolean r2 = r7 instanceof kotlinx.coroutines.channels.Closed     // Catch: java.lang.Throwable -> Lc3
            if (r2 == 0) goto L64
            r2 = r7
            r5 = r2
            goto L41
        L64:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lc3
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc3
            r1.<init>()     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r2 = "performAtomicTrySelect(describeTryOffer) returned "
            r1.append(r2)     // Catch: java.lang.Throwable -> Lc3
            r1.append(r7)     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lc3
            r9.<init>(r1)     // Catch: java.lang.Throwable -> Lc3
            throw r9     // Catch: java.lang.Throwable -> Lc3
        L7f:
            r3 = 0
        L80:
            kotlinx.coroutines.internal.Symbol r7 = kotlinx.coroutines.channels.AbstractChannelKt.POLL_FAILED     // Catch: java.lang.Throwable -> Lc3
            if (r2 == r7) goto L94
            boolean r7 = r2 instanceof kotlinx.coroutines.channels.Closed     // Catch: java.lang.Throwable -> Lc3
            if (r7 != 0) goto L94
            r8.size = r1     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object[] r9 = r8.buffer     // Catch: java.lang.Throwable -> Lc3
            int r7 = r8.head     // Catch: java.lang.Throwable -> Lc3
            int r7 = r7 + r1
            int r1 = r9.length     // Catch: java.lang.Throwable -> Lc3
            int r7 = r7 % r1
            r9[r7] = r2     // Catch: java.lang.Throwable -> Lc3
            goto Laa
        L94:
            boolean r9 = r9.trySelect()     // Catch: java.lang.Throwable -> Lc3
            if (r9 != 0) goto Laa
            r8.size = r1     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object[] r9 = r8.buffer     // Catch: java.lang.Throwable -> Lc3
            int r1 = r8.head     // Catch: java.lang.Throwable -> Lc3
            r9[r1] = r4     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object r9 = kotlinx.coroutines.selects.SelectKt.getALREADY_SELECTED()     // Catch: java.lang.Throwable -> Lc3
            r0.unlock()
            return r9
        Laa:
            int r9 = r8.head     // Catch: java.lang.Throwable -> Lc3
            int r9 = r9 + r6
            java.lang.Object[] r1 = r8.buffer     // Catch: java.lang.Throwable -> Lc3
            int r1 = r1.length     // Catch: java.lang.Throwable -> Lc3
            int r9 = r9 % r1
            r8.head = r9     // Catch: java.lang.Throwable -> Lc3
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lc3
            r0.unlock()
            if (r3 == 0) goto Lc2
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            kotlinx.coroutines.channels.Send r5 = (kotlinx.coroutines.channels.Send) r5
            r5.completeResumeSend()
        Lc2:
            return r4
        Lc3:
            r9 = move-exception
            r0.unlock()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ArrayChannel.pollSelectInternal(kotlinx.coroutines.selects.SelectInstance):java.lang.Object");
    }
}
