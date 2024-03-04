package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import com.huawei.hms.opendevice.i;
import java.lang.Comparable;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@InternalCoroutinesApi
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0002\u0018\u0002\b\u0017\u0018\u0000*\u0012\b\u0000\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u000605j\u0002`6B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0001¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000¢\u0006\u0004\b\n\u0010\tJ.\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00028\u00002\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\f0\u000bH\u0086\b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0005J2\u0010\u0015\u001a\u0004\u0018\u00018\u00002!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0017\u001a\u0004\u0018\u00018\u0000H\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0019\u0010\u0018J\u0017\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001aH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00028\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00028\u00002\u0006\u0010 \u001a\u00020\u001fH\u0001¢\u0006\u0004\b!\u0010\"J&\u0010#\u001a\u0004\u0018\u00018\u00002\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f0\u000bH\u0086\b¢\u0006\u0004\b#\u0010\u0016J\u000f\u0010$\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b$\u0010\u0018J\u0018\u0010&\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u001fH\u0082\u0010¢\u0006\u0004\b&\u0010'J\u0018\u0010(\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u001fH\u0082\u0010¢\u0006\u0004\b(\u0010'J\u001f\u0010*\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\u001fH\u0002¢\u0006\u0004\b*\u0010+R \u0010,\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0011\u0010.\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b.\u0010/R$\u00103\u001a\u00020\u001f2\u0006\u0010\u0013\u001a\u00020\u001f8F@BX\u0086\u000e¢\u0006\f\u001a\u0004\b0\u00101\"\u0004\b2\u0010'¨\u00064"}, d2 = {"Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "", ExifInterface.GPS_DIRECTION_TRUE, "<init>", "()V", "node", "", "addImpl", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V", "addLast", "Lkotlin/Function1;", "", "cond", "addLastIf", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z", "clear", "Lkotlin/ParameterName;", "name", "value", "predicate", "find", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "firstImpl", "()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "peek", "", "realloc", "()[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "remove", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z", "", "index", "removeAtImpl", "(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "removeFirstIf", "removeFirstOrNull", i.TAG, "siftDownFrom", "(I)V", "siftUpFrom", "j", "swap", "(II)V", "a", "[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "isEmpty", "()Z", "getSize", "()I", "setSize", "size", "kotlinx-coroutines-core", "", "Lkotlinx/coroutines/internal/SynchronizedObject;"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public class ThreadSafeHeap<T extends ThreadSafeHeapNode & Comparable<? super T>> {
    @NotNull
    private volatile /* synthetic */ int _size = 0;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private T[] f54041a;

    private final T[] realloc() {
        T[] tArr = this.f54041a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new ThreadSafeHeapNode[4];
            this.f54041a = tArr2;
            return tArr2;
        } else if (getSize() >= tArr.length) {
            Object[] copyOf = Arrays.copyOf(tArr, getSize() * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            T[] tArr3 = (T[]) ((ThreadSafeHeapNode[]) copyOf);
            this.f54041a = tArr3;
            return tArr3;
        } else {
            return tArr;
        }
    }

    private final void setSize(int i9) {
        this._size = i9;
    }

    private final void siftDownFrom(int i9) {
        while (true) {
            int i10 = (i9 * 2) + 1;
            if (i10 >= getSize()) {
                return;
            }
            T[] tArr = this.f54041a;
            Intrinsics.checkNotNull(tArr);
            int i11 = i10 + 1;
            if (i11 < getSize()) {
                T t10 = tArr[i11];
                Intrinsics.checkNotNull(t10);
                T t11 = tArr[i10];
                Intrinsics.checkNotNull(t11);
                if (((Comparable) t10).compareTo(t11) < 0) {
                    i10 = i11;
                }
            }
            T t12 = tArr[i9];
            Intrinsics.checkNotNull(t12);
            T t13 = tArr[i10];
            Intrinsics.checkNotNull(t13);
            if (((Comparable) t12).compareTo(t13) <= 0) {
                return;
            }
            swap(i9, i10);
            i9 = i10;
        }
    }

    private final void siftUpFrom(int i9) {
        while (i9 > 0) {
            T[] tArr = this.f54041a;
            Intrinsics.checkNotNull(tArr);
            int i10 = (i9 - 1) / 2;
            T t10 = tArr[i10];
            Intrinsics.checkNotNull(t10);
            T t11 = tArr[i9];
            Intrinsics.checkNotNull(t11);
            if (((Comparable) t10).compareTo(t11) <= 0) {
                return;
            }
            swap(i9, i10);
            i9 = i10;
        }
    }

    private final void swap(int i9, int i10) {
        T[] tArr = this.f54041a;
        Intrinsics.checkNotNull(tArr);
        T t10 = tArr[i10];
        Intrinsics.checkNotNull(t10);
        T t11 = tArr[i9];
        Intrinsics.checkNotNull(t11);
        tArr[i9] = t10;
        tArr[i10] = t11;
        t10.setIndex(i9);
        t11.setIndex(i10);
    }

    @PublishedApi
    public final void addImpl(@NotNull T t10) {
        t10.setHeap(this);
        T[] realloc = realloc();
        int size = getSize();
        setSize(size + 1);
        realloc[size] = t10;
        t10.setIndex(size);
        siftUpFrom(size);
    }

    public final void addLast(@NotNull T t10) {
        synchronized (this) {
            addImpl(t10);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean addLastIf(@NotNull T t10, @NotNull Function1<? super T, Boolean> function1) {
        boolean z10;
        synchronized (this) {
            try {
                if (function1.invoke(firstImpl()).booleanValue()) {
                    addImpl(t10);
                    z10 = true;
                } else {
                    z10 = false;
                }
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        return z10;
    }

    public final void clear() {
        synchronized (this) {
            T[] tArr = this.f54041a;
            if (tArr != null) {
                ArraysKt___ArraysJvmKt.fill$default(tArr, (Object) null, 0, 0, 6, (Object) null);
            }
            this._size = 0;
            Unit unit = Unit.INSTANCE;
        }
    }

    @Nullable
    public final T find(@NotNull Function1<? super T, Boolean> function1) {
        T t10;
        synchronized (this) {
            int i9 = 0;
            int size = getSize();
            while (true) {
                if (i9 >= size) {
                    break;
                }
                T[] tArr = this.f54041a;
                t10 = tArr != null ? tArr[i9] : null;
                Intrinsics.checkNotNull(t10);
                if (function1.invoke(t10).booleanValue()) {
                    break;
                }
                i9++;
            }
        }
        return t10;
    }

    @PublishedApi
    @Nullable
    public final T firstImpl() {
        T[] tArr = this.f54041a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final int getSize() {
        return this._size;
    }

    public final boolean isEmpty() {
        return getSize() == 0;
    }

    @Nullable
    public final T peek() {
        T firstImpl;
        synchronized (this) {
            firstImpl = firstImpl();
        }
        return firstImpl;
    }

    public final boolean remove(@NotNull T t10) {
        boolean z10;
        synchronized (this) {
            if (t10.getHeap() == null) {
                z10 = false;
            } else {
                removeAtImpl(t10.getIndex());
                z10 = true;
            }
        }
        return z10;
    }

    @PublishedApi
    @NotNull
    public final T removeAtImpl(int i9) {
        T[] tArr = this.f54041a;
        Intrinsics.checkNotNull(tArr);
        setSize(getSize() - 1);
        if (i9 < getSize()) {
            swap(i9, getSize());
            int i10 = (i9 - 1) / 2;
            if (i9 > 0) {
                T t10 = tArr[i9];
                Intrinsics.checkNotNull(t10);
                T t11 = tArr[i10];
                Intrinsics.checkNotNull(t11);
                if (((Comparable) t10).compareTo(t11) < 0) {
                    swap(i9, i10);
                    siftUpFrom(i10);
                }
            }
            siftDownFrom(i9);
        }
        T t12 = tArr[getSize()];
        Intrinsics.checkNotNull(t12);
        t12.setHeap(null);
        t12.setIndex(-1);
        tArr[getSize()] = null;
        return t12;
    }

    @Nullable
    public final T removeFirstIf(@NotNull Function1<? super T, Boolean> function1) {
        synchronized (this) {
            try {
                T firstImpl = firstImpl();
                if (firstImpl == null) {
                    InlineMarker.finallyStart(2);
                    InlineMarker.finallyEnd(2);
                    return null;
                }
                T removeAtImpl = function1.invoke(firstImpl).booleanValue() ? removeAtImpl(0) : null;
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                return removeAtImpl;
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
    }

    @Nullable
    public final T removeFirstOrNull() {
        T removeAtImpl;
        synchronized (this) {
            removeAtImpl = getSize() > 0 ? removeAtImpl(0) : null;
        }
        return removeAtImpl;
    }
}
