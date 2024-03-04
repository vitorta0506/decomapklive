package si;

import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes7.dex */
public class e implements org.apache.http.e {

    /* renamed from: a  reason: collision with root package name */
    protected final List<org.apache.http.c> f57933a;

    /* renamed from: b  reason: collision with root package name */
    protected int f57934b = b(-1);

    /* renamed from: c  reason: collision with root package name */
    protected int f57935c = -1;

    /* renamed from: d  reason: collision with root package name */
    protected String f57936d;

    public e(List<org.apache.http.c> list, String str) {
        this.f57933a = (List) vi.a.g(list, "Header list");
        this.f57936d = str;
    }

    protected boolean a(int i9) {
        if (this.f57936d == null) {
            return true;
        }
        return this.f57936d.equalsIgnoreCase(this.f57933a.get(i9).getName());
    }

    protected int b(int i9) {
        if (i9 < -1) {
            return -1;
        }
        int size = this.f57933a.size() - 1;
        boolean z10 = false;
        while (!z10 && i9 < size) {
            i9++;
            z10 = a(i9);
        }
        if (z10) {
            return i9;
        }
        return -1;
    }

    public org.apache.http.c c() throws NoSuchElementException {
        int i9 = this.f57934b;
        if (i9 >= 0) {
            this.f57935c = i9;
            this.f57934b = b(i9);
            return this.f57933a.get(i9);
        }
        throw new NoSuchElementException("Iteration already finished.");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f57934b >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() throws NoSuchElementException {
        return c();
    }

    @Override // java.util.Iterator
    public void remove() throws UnsupportedOperationException {
        vi.b.a(this.f57935c >= 0, "No header to remove");
        this.f57933a.remove(this.f57935c);
        this.f57935c = -1;
        this.f57934b--;
    }
}
