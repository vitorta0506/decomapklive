package vg;

import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes5.dex */
public class m<E> extends q<E> {
    public m(int i9) {
        super(i9);
    }

    @Override // vg.h, vg.j.a
    public /* bridge */ /* synthetic */ int c() {
        return super.c();
    }

    @Override // vg.h, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // vg.h, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // vg.h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    @Override // java.util.Queue
    public boolean offer(E e10) {
        long d10;
        Objects.requireNonNull(e10);
        long j10 = this.f59163a;
        long m10 = m();
        do {
            d10 = d();
            if (d10 >= m10) {
                m10 = f() + j10 + 1;
                if (d10 >= m10) {
                    return false;
                }
                n(m10);
            }
        } while (!g(d10, 1 + d10));
        wg.d.e(this.f59164b, wg.d.b(d10, j10), e10);
        return true;
    }

    @Override // java.util.Queue
    public E peek() {
        E[] eArr = this.f59164b;
        long u10 = u();
        long b10 = wg.d.b(u10, this.f59163a);
        E e10 = (E) wg.d.d(eArr, b10);
        if (e10 != null) {
            return e10;
        }
        if (u10 != d()) {
            do {
                e10 = (E) wg.d.d(eArr, b10);
            } while (e10 == null);
            return e10;
        }
        return null;
    }

    @Override // java.util.Queue, vg.l
    public E poll() {
        long u10 = u();
        long b10 = wg.d.b(u10, this.f59163a);
        E[] eArr = this.f59164b;
        E e10 = (E) wg.d.d(eArr, b10);
        if (e10 == null) {
            if (u10 != d()) {
                do {
                    e10 = (E) wg.d.d(eArr, b10);
                } while (e10 == null);
                wg.d.f(eArr, b10, null);
                x(u10 + 1);
                return e10;
            }
            return null;
        }
        wg.d.f(eArr, b10, null);
        x(u10 + 1);
        return e10;
    }

    @Override // vg.h, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // vg.h, java.util.AbstractCollection
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
