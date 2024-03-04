package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.internal.NativeProtocol;
import java.util.Iterator;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.LongIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010(\n\u0000\u001a!\u0010\u0006\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u0086\n\u001aQ\u0010\n\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000326\u0010\f\u001a2\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\b\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u000b0\rH\u0086\b\u001a.\u0010\u0011\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0012\u001a\u0002H\u0002H\u0086\b¢\u0006\u0002\u0010\u0013\u001a4\u0010\u0014\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0015H\u0086\b¢\u0006\u0002\u0010\u0016\u001a\u0019\u0010\u0017\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086\b\u001a\u0016\u0010\u0018\u001a\u00020\u0019\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003\u001a-\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086\u0002\u001a-\u0010\u001c\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0010\u001a\u0002H\u0002H\u0007¢\u0006\u0002\u0010\u001d\u001a.\u0010\u001e\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0010\u001a\u0002H\u0002H\u0086\n¢\u0006\u0002\u0010\u001f\u001a\u001c\u0010 \u001a\b\u0012\u0004\u0012\u0002H\u00020!\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\"\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\""}, d2 = {"size", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/collection/LongSparseArray;", "getSize", "(Landroidx/collection/LongSparseArray;)I", "contains", "", "key", "", "forEach", "", NativeProtocol.WEB_DIALOG_ACTION, "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "value", "getOrDefault", "defaultValue", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Ljava/lang/Object;", "getOrElse", "Lkotlin/Function0;", "(Landroidx/collection/LongSparseArray;JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "isNotEmpty", "keyIterator", "Lkotlin/collections/LongIterator;", "plus", "other", "remove", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Z", "set", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)V", "valueIterator", "", "collection-ktx"}, k = 2, mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class LongSparseArrayKt {
    public static final <T> boolean contains(@NotNull LongSparseArray<T> longSparseArray, long j10) {
        return longSparseArray.containsKey(j10);
    }

    public static final <T> void forEach(@NotNull LongSparseArray<T> longSparseArray, @NotNull Function2<? super Long, ? super T, Unit> function2) {
        int size = longSparseArray.size();
        for (int i9 = 0; i9 < size; i9++) {
            function2.mo1invoke(Long.valueOf(longSparseArray.keyAt(i9)), longSparseArray.valueAt(i9));
        }
    }

    public static final <T> T getOrDefault(@NotNull LongSparseArray<T> longSparseArray, long j10, T t10) {
        return longSparseArray.get(j10, t10);
    }

    public static final <T> T getOrElse(@NotNull LongSparseArray<T> longSparseArray, long j10, @NotNull Function0<? extends T> function0) {
        T t10 = longSparseArray.get(j10);
        return t10 != null ? t10 : function0.invoke();
    }

    public static final <T> int getSize(@NotNull LongSparseArray<T> longSparseArray) {
        return longSparseArray.size();
    }

    public static final <T> boolean isNotEmpty(@NotNull LongSparseArray<T> longSparseArray) {
        return !longSparseArray.isEmpty();
    }

    @NotNull
    public static final <T> LongIterator keyIterator(@NotNull final LongSparseArray<T> longSparseArray) {
        return new LongIterator() { // from class: androidx.collection.LongSparseArrayKt$keyIterator$1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < longSparseArray.size();
            }

            @Override // kotlin.collections.LongIterator
            public long nextLong() {
                LongSparseArray longSparseArray2 = longSparseArray;
                int i9 = this.index;
                this.index = i9 + 1;
                return longSparseArray2.keyAt(i9);
            }

            public final void setIndex(int i9) {
                this.index = i9;
            }
        };
    }

    @NotNull
    public static final <T> LongSparseArray<T> plus(@NotNull LongSparseArray<T> longSparseArray, @NotNull LongSparseArray<T> longSparseArray2) {
        LongSparseArray<T> longSparseArray3 = new LongSparseArray<>(longSparseArray.size() + longSparseArray2.size());
        longSparseArray3.putAll(longSparseArray);
        longSparseArray3.putAll(longSparseArray2);
        return longSparseArray3;
    }

    @Deprecated(message = "Replaced with member function. Remove extension import!")
    public static final <T> boolean remove(@NotNull LongSparseArray<T> longSparseArray, long j10, T t10) {
        return longSparseArray.remove(j10, t10);
    }

    public static final <T> void set(@NotNull LongSparseArray<T> longSparseArray, long j10, T t10) {
        longSparseArray.put(j10, t10);
    }

    @NotNull
    public static final <T> Iterator<T> valueIterator(@NotNull LongSparseArray<T> longSparseArray) {
        return new LongSparseArrayKt$valueIterator$1(longSparseArray);
    }
}
