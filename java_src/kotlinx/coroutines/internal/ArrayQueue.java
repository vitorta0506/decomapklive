package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0010\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0013\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000¢\u0006\u0002\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u000eJ\b\u0010\u0012\u001a\u00020\u000eH\u0002J\r\u0010\u0013\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u0014R\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u000e\u0010\f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/internal/ArrayQueue;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "elements", "", "[Ljava/lang/Object;", "head", "", "isEmpty", "", "()Z", "tail", "addLast", "", "element", "(Ljava/lang/Object;)V", "clear", "ensureCapacity", "removeFirstOrNull", "()Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public class ArrayQueue<T> {
    @NotNull
    private Object[] elements = new Object[16];
    private int head;
    private int tail;

    private final void ensureCapacity() {
        Object[] objArr = this.elements;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        ArraysKt___ArraysJvmKt.copyInto$default(objArr, objArr2, 0, this.head, 0, 10, (Object) null);
        Object[] objArr3 = this.elements;
        int length2 = objArr3.length;
        int i9 = this.head;
        ArraysKt___ArraysJvmKt.copyInto$default(objArr3, objArr2, length2 - i9, 0, i9, 4, (Object) null);
        this.elements = objArr2;
        this.head = 0;
        this.tail = length;
    }

    public final void addLast(@NotNull T t10) {
        Object[] objArr = this.elements;
        int i9 = this.tail;
        objArr[i9] = t10;
        int length = (objArr.length - 1) & (i9 + 1);
        this.tail = length;
        if (length == this.head) {
            ensureCapacity();
        }
    }

    public final void clear() {
        this.head = 0;
        this.tail = 0;
        this.elements = new Object[this.elements.length];
    }

    public final boolean isEmpty() {
        return this.head == this.tail;
    }

    @Nullable
    public final T removeFirstOrNull() {
        int i9 = this.head;
        if (i9 == this.tail) {
            return null;
        }
        Object[] objArr = this.elements;
        T t10 = (T) objArr[i9];
        objArr[i9] = null;
        this.head = (i9 + 1) & (objArr.length - 1);
        Objects.requireNonNull(t10, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue");
        return t10;
    }
}
