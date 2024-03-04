package com.google.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.common.base.d f12386a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f12387b;

    /* renamed from: c  reason: collision with root package name */
    private final e f12388c;

    /* renamed from: d  reason: collision with root package name */
    private final int f12389d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.d f12390a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.base.t$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0102a extends d {
            C0102a(t tVar, CharSequence charSequence) {
                super(tVar, charSequence);
            }

            @Override // com.google.common.base.t.d
            int e(int i9) {
                return i9 + 1;
            }

            @Override // com.google.common.base.t.d
            int f(int i9) {
                return a.this.f12390a.g(this.f12396c, i9);
            }
        }

        a(com.google.common.base.d dVar) {
            this.f12390a = dVar;
        }

        @Override // com.google.common.base.t.e
        /* renamed from: b */
        public d a(t tVar, CharSequence charSequence) {
            return new C0102a(tVar, charSequence);
        }
    }

    /* loaded from: classes2.dex */
    class b implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f12392a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends d {
            a(t tVar, CharSequence charSequence) {
                super(tVar, charSequence);
            }

            @Override // com.google.common.base.t.d
            public int e(int i9) {
                return i9 + b.this.f12392a.length();
            }

            /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
                r6 = r6 + 1;
             */
            @Override // com.google.common.base.t.d
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public int f(int r6) {
                /*
                    r5 = this;
                    com.google.common.base.t$b r0 = com.google.common.base.t.b.this
                    java.lang.String r0 = r0.f12392a
                    int r0 = r0.length()
                    java.lang.CharSequence r1 = r5.f12396c
                    int r1 = r1.length()
                    int r1 = r1 - r0
                Lf:
                    if (r6 > r1) goto L2d
                    r2 = 0
                L12:
                    if (r2 >= r0) goto L2c
                    java.lang.CharSequence r3 = r5.f12396c
                    int r4 = r2 + r6
                    char r3 = r3.charAt(r4)
                    com.google.common.base.t$b r4 = com.google.common.base.t.b.this
                    java.lang.String r4 = r4.f12392a
                    char r4 = r4.charAt(r2)
                    if (r3 == r4) goto L29
                    int r6 = r6 + 1
                    goto Lf
                L29:
                    int r2 = r2 + 1
                    goto L12
                L2c:
                    return r6
                L2d:
                    r6 = -1
                    return r6
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.t.b.a.f(int):int");
            }
        }

        b(String str) {
            this.f12392a = str;
        }

        @Override // com.google.common.base.t.e
        /* renamed from: b */
        public d a(t tVar, CharSequence charSequence) {
            return new a(tVar, charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements Iterable<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CharSequence f12394a;

        c(CharSequence charSequence) {
            this.f12394a = charSequence;
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return t.this.k(this.f12394a);
        }

        public String toString() {
            i h10 = i.h(", ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append('[');
            StringBuilder b10 = h10.b(sb2, this);
            b10.append(']');
            return b10.toString();
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class d extends com.google.common.base.b<String> {

        /* renamed from: c  reason: collision with root package name */
        final CharSequence f12396c;

        /* renamed from: d  reason: collision with root package name */
        final com.google.common.base.d f12397d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f12398e;

        /* renamed from: f  reason: collision with root package name */
        int f12399f = 0;

        /* renamed from: g  reason: collision with root package name */
        int f12400g;

        protected d(t tVar, CharSequence charSequence) {
            this.f12397d = tVar.f12386a;
            this.f12398e = tVar.f12387b;
            this.f12400g = tVar.f12389d;
            this.f12396c = charSequence;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.b
        /* renamed from: d */
        public String a() {
            int f10;
            int i9 = this.f12399f;
            while (true) {
                int i10 = this.f12399f;
                if (i10 != -1) {
                    f10 = f(i10);
                    if (f10 == -1) {
                        f10 = this.f12396c.length();
                        this.f12399f = -1;
                    } else {
                        this.f12399f = e(f10);
                    }
                    int i11 = this.f12399f;
                    if (i11 == i9) {
                        int i12 = i11 + 1;
                        this.f12399f = i12;
                        if (i12 > this.f12396c.length()) {
                            this.f12399f = -1;
                        }
                    } else {
                        while (i9 < f10 && this.f12397d.j(this.f12396c.charAt(i9))) {
                            i9++;
                        }
                        while (f10 > i9 && this.f12397d.j(this.f12396c.charAt(f10 - 1))) {
                            f10--;
                        }
                        if (!this.f12398e || i9 != f10) {
                            break;
                        }
                        i9 = this.f12399f;
                    }
                } else {
                    return b();
                }
            }
            int i13 = this.f12400g;
            if (i13 == 1) {
                f10 = this.f12396c.length();
                this.f12399f = -1;
                while (f10 > i9 && this.f12397d.j(this.f12396c.charAt(f10 - 1))) {
                    f10--;
                }
            } else {
                this.f12400g = i13 - 1;
            }
            return this.f12396c.subSequence(i9, f10).toString();
        }

        abstract int e(int i9);

        abstract int f(int i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface e {
        Iterator<String> a(t tVar, CharSequence charSequence);
    }

    private t(e eVar) {
        this(eVar, false, com.google.common.base.d.n(), Integer.MAX_VALUE);
    }

    public static t f(char c10) {
        return g(com.google.common.base.d.h(c10));
    }

    public static t g(com.google.common.base.d dVar) {
        o.s(dVar);
        return new t(new a(dVar));
    }

    public static t h(String str) {
        o.e(str.length() != 0, "The separator may not be the empty string.");
        if (str.length() == 1) {
            return f(str.charAt(0));
        }
        return new t(new b(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Iterator<String> k(CharSequence charSequence) {
        return this.f12388c.a(this, charSequence);
    }

    public t e() {
        return new t(this.f12388c, true, this.f12386a, this.f12389d);
    }

    public Iterable<String> i(CharSequence charSequence) {
        o.s(charSequence);
        return new c(charSequence);
    }

    public List<String> j(CharSequence charSequence) {
        o.s(charSequence);
        Iterator<String> k10 = k(charSequence);
        ArrayList arrayList = new ArrayList();
        while (k10.hasNext()) {
            arrayList.add(k10.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public t l() {
        return m(com.google.common.base.d.p());
    }

    public t m(com.google.common.base.d dVar) {
        o.s(dVar);
        return new t(this.f12388c, this.f12387b, dVar, this.f12389d);
    }

    private t(e eVar, boolean z10, com.google.common.base.d dVar, int i9) {
        this.f12388c = eVar;
        this.f12387b = z10;
        this.f12386a = dVar;
        this.f12389d = i9;
    }
}
