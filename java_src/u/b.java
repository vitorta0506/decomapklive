package u;

import androidx.annotation.IntRange;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class b implements Iterator<Integer> {

    /* renamed from: a  reason: collision with root package name */
    int f58259a;

    /* renamed from: b  reason: collision with root package name */
    int f58260b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@IntRange(from = 0) int i9) {
        if (i9 >= 0) {
            this.f58260b = i9;
            return;
        }
        throw new IllegalArgumentException("item count couldn't be negative");
    }

    public void a(@IntRange(from = 0) int i9) {
        if (i9 >= this.f58260b) {
            throw new IllegalArgumentException("you can't move above of maxItemCount");
        }
        if (i9 >= 0) {
            this.f58259a = i9;
            return;
        }
        throw new IllegalArgumentException("can't move to negative position");
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("removing not supported in position iterator");
    }
}
