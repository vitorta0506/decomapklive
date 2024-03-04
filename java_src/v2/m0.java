package v2;

import android.util.SparseArray;
/* loaded from: classes.dex */
final class m0<V> {

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h<V> f58904c;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<V> f58903b = new SparseArray<>();

    /* renamed from: a  reason: collision with root package name */
    private int f58902a = -1;

    public m0(com.google.android.exoplayer2.util.h<V> hVar) {
        this.f58904c = hVar;
    }

    public void a(int i9, V v10) {
        if (this.f58902a == -1) {
            com.google.android.exoplayer2.util.a.f(this.f58903b.size() == 0);
            this.f58902a = 0;
        }
        if (this.f58903b.size() > 0) {
            SparseArray<V> sparseArray = this.f58903b;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            com.google.android.exoplayer2.util.a.a(i9 >= keyAt);
            if (keyAt == i9) {
                SparseArray<V> sparseArray2 = this.f58903b;
                this.f58904c.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.f58903b.append(i9, v10);
    }

    public void b() {
        for (int i9 = 0; i9 < this.f58903b.size(); i9++) {
            this.f58904c.accept(this.f58903b.valueAt(i9));
        }
        this.f58902a = -1;
        this.f58903b.clear();
    }

    public void c(int i9) {
        for (int size = this.f58903b.size() - 1; size >= 0 && i9 < this.f58903b.keyAt(size); size--) {
            this.f58904c.accept(this.f58903b.valueAt(size));
            this.f58903b.removeAt(size);
        }
        this.f58902a = this.f58903b.size() > 0 ? Math.min(this.f58902a, this.f58903b.size() - 1) : -1;
    }

    public void d(int i9) {
        int i10 = 0;
        while (i10 < this.f58903b.size() - 1) {
            int i11 = i10 + 1;
            if (i9 < this.f58903b.keyAt(i11)) {
                return;
            }
            this.f58904c.accept(this.f58903b.valueAt(i10));
            this.f58903b.removeAt(i10);
            int i12 = this.f58902a;
            if (i12 > 0) {
                this.f58902a = i12 - 1;
            }
            i10 = i11;
        }
    }

    public V e(int i9) {
        if (this.f58902a == -1) {
            this.f58902a = 0;
        }
        while (true) {
            int i10 = this.f58902a;
            if (i10 <= 0 || i9 >= this.f58903b.keyAt(i10)) {
                break;
            }
            this.f58902a--;
        }
        while (this.f58902a < this.f58903b.size() - 1 && i9 >= this.f58903b.keyAt(this.f58902a + 1)) {
            this.f58902a++;
        }
        return this.f58903b.valueAt(this.f58902a);
    }

    public V f() {
        SparseArray<V> sparseArray = this.f58903b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public boolean g() {
        return this.f58903b.size() == 0;
    }
}
