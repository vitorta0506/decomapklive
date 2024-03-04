package kotlin.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\t\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000¢\u0006\u0002\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0004H\u0004J\u001d\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00028\u0000H\u0004¢\u0006\u0002\u0010\u0016J\u0011\u0010\u0017\u001a\u00020\u0004*\u00028\u0000H$¢\u0006\u0002\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u0004X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000bX\u0082\u0004¢\u0006\n\n\u0002\u0010\u000e\u0012\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lkotlin/jvm/internal/PrimitiveSpreadBuilder;", ExifInterface.GPS_DIRECTION_TRUE, "", "size", "", "(I)V", "position", "getPosition", "()I", "setPosition", "spreads", "", "getSpreads$annotations", "()V", "[Ljava/lang/Object;", "addSpread", "", "spreadArgument", "(Ljava/lang/Object;)V", "toArray", "values", "result", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "getSize", "(Ljava/lang/Object;)I", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes7.dex */
public abstract class PrimitiveSpreadBuilder<T> {
    private int position;
    private final int size;
    @NotNull
    private final T[] spreads;

    public PrimitiveSpreadBuilder(int i9) {
        this.size = i9;
        this.spreads = (T[]) new Object[i9];
    }

    private static /* synthetic */ void getSpreads$annotations() {
    }

    public final void addSpread(@NotNull T spreadArgument) {
        Intrinsics.checkNotNullParameter(spreadArgument, "spreadArgument");
        T[] tArr = this.spreads;
        int i9 = this.position;
        this.position = i9 + 1;
        tArr[i9] = spreadArgument;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getPosition() {
        return this.position;
    }

    protected abstract int getSize(@NotNull T t10);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setPosition(int i9) {
        this.position = i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    public final int size() {
        int i9 = 0;
        ?? it = new IntRange(0, this.size - 1).iterator();
        while (it.hasNext()) {
            T t10 = this.spreads[it.nextInt()];
            i9 += t10 != null ? getSize(t10) : 1;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v3, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    @NotNull
    public final T toArray(@NotNull T values, @NotNull T result) {
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(result, "result");
        ?? it = new IntRange(0, this.size - 1).iterator();
        int i9 = 0;
        int i10 = 0;
        while (it.hasNext()) {
            int nextInt = it.nextInt();
            T t10 = this.spreads[nextInt];
            if (t10 != null) {
                if (i9 < nextInt) {
                    int i11 = nextInt - i9;
                    System.arraycopy(values, i9, result, i10, i11);
                    i10 += i11;
                }
                int size = getSize(t10);
                System.arraycopy(t10, 0, result, i10, size);
                i10 += size;
                i9 = nextInt + 1;
            }
        }
        int i12 = this.size;
        if (i9 < i12) {
            System.arraycopy(values, i9, result, i10, i12 - i9);
        }
        return result;
    }
}
