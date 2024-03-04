package pg;

import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.util.AbstractList;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class c extends AbstractList<Object> implements RandomAccess {

    /* renamed from: e  reason: collision with root package name */
    private static final InterfaceC0618c f56819e = new a();

    /* renamed from: f  reason: collision with root package name */
    private static final ug.n<d> f56820f = new b();

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0618c f56821a;

    /* renamed from: b  reason: collision with root package name */
    private int f56822b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f56823c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f56824d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a implements InterfaceC0618c {
        a() {
        }

        @Override // pg.c.InterfaceC0618c
        public void a(c cVar) {
        }
    }

    /* loaded from: classes5.dex */
    static class b extends ug.n<d> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.n
        /* renamed from: o */
        public d e() throws Exception {
            return new d(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pg.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0618c {
        void a(c cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d implements InterfaceC0618c {

        /* renamed from: a  reason: collision with root package name */
        private final c[] f56825a;

        /* renamed from: b  reason: collision with root package name */
        private final int f56826b;

        /* renamed from: c  reason: collision with root package name */
        private int f56827c;

        /* renamed from: d  reason: collision with root package name */
        private int f56828d;

        d(int i9) {
            this.f56825a = new c[io.grpc.netty.shaded.io.netty.util.internal.o.d(i9)];
            int i10 = 0;
            while (true) {
                c[] cVarArr = this.f56825a;
                if (i10 < cVarArr.length) {
                    cVarArr[i10] = new c(this, 16, null);
                    i10++;
                } else {
                    this.f56828d = cVarArr.length;
                    this.f56827c = cVarArr.length;
                    this.f56826b = cVarArr.length - 1;
                    return;
                }
            }
        }

        @Override // pg.c.InterfaceC0618c
        public void a(c cVar) {
            int i9 = this.f56827c;
            this.f56825a[i9] = cVar;
            this.f56827c = this.f56826b & (i9 + 1);
            this.f56828d++;
        }

        public c b() {
            int i9 = this.f56828d;
            if (i9 == 0) {
                return new c(c.f56819e, 4, null);
            }
            this.f56828d = i9 - 1;
            int i10 = (this.f56827c - 1) & this.f56826b;
            c cVar = this.f56825a[i10];
            this.f56827c = i10;
            return cVar;
        }
    }

    /* synthetic */ c(InterfaceC0618c interfaceC0618c, int i9, a aVar) {
        this(interfaceC0618c, i9);
    }

    private void d(int i9) {
        if (i9 < this.f56822b) {
            return;
        }
        throw new IndexOutOfBoundsException("expected: index < (" + this.f56822b + "),but actual is (" + this.f56822b + ")");
    }

    private void f() {
        Object[] objArr = this.f56823c;
        int length = objArr.length << 1;
        if (length >= 0) {
            Object[] objArr2 = new Object[length];
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
            this.f56823c = objArr2;
            return;
        }
        throw new OutOfMemoryError();
    }

    private void m(int i9, Object obj) {
        this.f56823c[i9] = obj;
        this.f56824d = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c u() {
        return f56820f.b().b();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        s.h(obj, "element");
        try {
            m(this.f56822b, obj);
        } catch (IndexOutOfBoundsException unused) {
            f();
            m(this.f56822b, obj);
        }
        this.f56822b++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.f56822b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object g(int i9) {
        return this.f56823c[i9];
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i9) {
        d(i9);
        return this.f56823c[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n() {
        return this.f56824d;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i9) {
        d(i9);
        Object[] objArr = this.f56823c;
        Object obj = objArr[i9];
        int i10 = (this.f56822b - i9) - 1;
        if (i10 > 0) {
            System.arraycopy(objArr, i9 + 1, objArr, i9, i10);
        }
        Object[] objArr2 = this.f56823c;
        int i11 = this.f56822b - 1;
        this.f56822b = i11;
        objArr2[i11] = null;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i9, Object obj) {
        s.h(obj, "element");
        d(i9);
        Object obj2 = this.f56823c[i9];
        m(i9, obj);
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f56822b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x() {
        for (int i9 = 0; i9 < this.f56822b; i9++) {
            this.f56823c[i9] = null;
        }
        this.f56822b = 0;
        this.f56824d = false;
        this.f56821a.a(this);
    }

    private c(InterfaceC0618c interfaceC0618c, int i9) {
        this.f56821a = interfaceC0618c;
        this.f56823c = new Object[i9];
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i9, Object obj) {
        s.h(obj, "element");
        d(i9);
        if (this.f56822b == this.f56823c.length) {
            f();
        }
        int i10 = this.f56822b;
        if (i9 != i10) {
            Object[] objArr = this.f56823c;
            System.arraycopy(objArr, i9, objArr, i9 + 1, i10 - i9);
        }
        m(i9, obj);
        this.f56822b++;
    }
}
