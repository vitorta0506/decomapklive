package mg;

import java.nio.channels.SelectionKey;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class g extends AbstractSet<SelectionKey> {

    /* renamed from: a  reason: collision with root package name */
    SelectionKey[] f55101a = new SelectionKey[1024];

    /* renamed from: b  reason: collision with root package name */
    int f55102b;

    /* loaded from: classes5.dex */
    class a implements Iterator<SelectionKey> {

        /* renamed from: a  reason: collision with root package name */
        private int f55103a;

        a() {
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public SelectionKey next() {
            if (hasNext()) {
                SelectionKey[] selectionKeyArr = g.this.f55101a;
                int i9 = this.f55103a;
                this.f55103a = i9 + 1;
                return selectionKeyArr[i9];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f55103a < g.this.f55102b;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private void d() {
        SelectionKey[] selectionKeyArr = this.f55101a;
        SelectionKey[] selectionKeyArr2 = new SelectionKey[selectionKeyArr.length << 1];
        System.arraycopy(selectionKeyArr, 0, selectionKeyArr2, 0, this.f55102b);
        this.f55101a = selectionKeyArr2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* renamed from: c */
    public boolean add(SelectionKey selectionKey) {
        if (selectionKey == null) {
            return false;
        }
        SelectionKey[] selectionKeyArr = this.f55101a;
        int i9 = this.f55102b;
        int i10 = i9 + 1;
        this.f55102b = i10;
        selectionKeyArr[i9] = selectionKey;
        if (i10 == selectionKeyArr.length) {
            d();
            return true;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        g(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(int i9) {
        Arrays.fill(this.f55101a, i9, this.f55102b, (Object) null);
        this.f55102b = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<SelectionKey> iterator() {
        return new a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f55102b;
    }
}
