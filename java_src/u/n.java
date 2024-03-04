package u;

import androidx.annotation.IntRange;
/* loaded from: classes.dex */
class n extends b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public n(@IntRange(from = 0) int i9) {
        super(i9);
    }

    @Override // java.util.Iterator
    /* renamed from: b */
    public Integer next() {
        if (hasNext()) {
            int i9 = this.f58259a;
            this.f58259a = i9 + 1;
            return Integer.valueOf(i9);
        }
        throw new IllegalStateException("position out of bounds reached");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f58259a < this.f58260b;
    }
}
