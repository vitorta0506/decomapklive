package a2;

import a2.c;
import a2.r1;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i3;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import v2.q;
/* loaded from: classes.dex */
public final class p1 implements r1 {

    /* renamed from: h  reason: collision with root package name */
    public static final com.google.common.base.w<String> f488h = new com.google.common.base.w() { // from class: a2.o1
        @Override // com.google.common.base.w, java.util.function.Supplier
        public final Object get() {
            String k10;
            k10 = p1.k();
            return k10;
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private static final Random f489i = new Random();

    /* renamed from: a  reason: collision with root package name */
    private final i3.d f490a;

    /* renamed from: b  reason: collision with root package name */
    private final i3.b f491b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, a> f492c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.common.base.w<String> f493d;

    /* renamed from: e  reason: collision with root package name */
    private r1.a f494e;

    /* renamed from: f  reason: collision with root package name */
    private i3 f495f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f496g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f497a;

        /* renamed from: b  reason: collision with root package name */
        private int f498b;

        /* renamed from: c  reason: collision with root package name */
        private long f499c;

        /* renamed from: d  reason: collision with root package name */
        private q.b f500d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f501e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f502f;

        public a(String str, int i9, @Nullable q.b bVar) {
            this.f497a = str;
            this.f498b = i9;
            this.f499c = bVar == null ? -1L : bVar.f58909d;
            if (bVar == null || !bVar.b()) {
                return;
            }
            this.f500d = bVar;
        }

        private int l(i3 i3Var, i3 i3Var2, int i9) {
            if (i9 >= i3Var.t()) {
                if (i9 < i3Var2.t()) {
                    return i9;
                }
                return -1;
            }
            i3Var.r(i9, p1.this.f490a);
            for (int i10 = p1.this.f490a.f6055o; i10 <= p1.this.f490a.f6056p; i10++) {
                int f10 = i3Var2.f(i3Var.q(i10));
                if (f10 != -1) {
                    return i3Var2.j(f10, p1.this.f491b).f6028c;
                }
            }
            return -1;
        }

        public boolean i(int i9, @Nullable q.b bVar) {
            if (bVar == null) {
                return i9 == this.f498b;
            }
            q.b bVar2 = this.f500d;
            return bVar2 == null ? !bVar.b() && bVar.f58909d == this.f499c : bVar.f58909d == bVar2.f58909d && bVar.f58907b == bVar2.f58907b && bVar.f58908c == bVar2.f58908c;
        }

        public boolean j(c.a aVar) {
            long j10 = this.f499c;
            if (j10 == -1) {
                return false;
            }
            q.b bVar = aVar.f377d;
            if (bVar == null) {
                return this.f498b != aVar.f376c;
            } else if (bVar.f58909d > j10) {
                return true;
            } else {
                if (this.f500d == null) {
                    return false;
                }
                int f10 = aVar.f375b.f(bVar.f58906a);
                int f11 = aVar.f375b.f(this.f500d.f58906a);
                q.b bVar2 = aVar.f377d;
                if (bVar2.f58909d < this.f500d.f58909d || f10 < f11) {
                    return false;
                }
                if (f10 > f11) {
                    return true;
                }
                if (bVar2.b()) {
                    q.b bVar3 = aVar.f377d;
                    int i9 = bVar3.f58907b;
                    int i10 = bVar3.f58908c;
                    q.b bVar4 = this.f500d;
                    int i11 = bVar4.f58907b;
                    return i9 > i11 || (i9 == i11 && i10 > bVar4.f58908c);
                }
                int i12 = aVar.f377d.f58910e;
                return i12 == -1 || i12 > this.f500d.f58907b;
            }
        }

        public void k(int i9, @Nullable q.b bVar) {
            if (this.f499c == -1 && i9 == this.f498b && bVar != null) {
                this.f499c = bVar.f58909d;
            }
        }

        public boolean m(i3 i3Var, i3 i3Var2) {
            int l10 = l(i3Var, i3Var2, this.f498b);
            this.f498b = l10;
            if (l10 == -1) {
                return false;
            }
            q.b bVar = this.f500d;
            return bVar == null || i3Var2.f(bVar.f58906a) != -1;
        }
    }

    public p1() {
        this(f488h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String k() {
        byte[] bArr = new byte[12];
        f489i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private a l(int i9, @Nullable q.b bVar) {
        int i10;
        a aVar = null;
        long j10 = Long.MAX_VALUE;
        for (a aVar2 : this.f492c.values()) {
            aVar2.k(i9, bVar);
            if (aVar2.i(i9, bVar)) {
                long j11 = aVar2.f499c;
                if (j11 == -1 || j11 < j10) {
                    aVar = aVar2;
                    j10 = j11;
                } else if (i10 == 0 && ((a) com.google.android.exoplayer2.util.l0.j(aVar)).f500d != null && aVar2.f500d != null) {
                    aVar = aVar2;
                }
            }
        }
        if (aVar == null) {
            String str = this.f493d.get();
            a aVar3 = new a(str, i9, bVar);
            this.f492c.put(str, aVar3);
            return aVar3;
        }
        return aVar;
    }

    private void m(c.a aVar) {
        if (aVar.f375b.u()) {
            this.f496g = null;
            return;
        }
        a aVar2 = this.f492c.get(this.f496g);
        a l10 = l(aVar.f376c, aVar.f377d);
        this.f496g = l10.f497a;
        b(aVar);
        q.b bVar = aVar.f377d;
        if (bVar == null || !bVar.b()) {
            return;
        }
        if (aVar2 != null && aVar2.f499c == aVar.f377d.f58909d && aVar2.f500d != null && aVar2.f500d.f58907b == aVar.f377d.f58907b && aVar2.f500d.f58908c == aVar.f377d.f58908c) {
            return;
        }
        q.b bVar2 = aVar.f377d;
        this.f494e.q0(aVar, l(aVar.f376c, new q.b(bVar2.f58906a, bVar2.f58909d)).f497a, l10.f497a);
    }

    @Override // a2.r1
    @Nullable
    public synchronized String a() {
        return this.f496g;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00e1 A[Catch: all -> 0x0118, TryCatch #0 {, blocks: (B:4:0x0005, B:8:0x0014, B:11:0x0025, B:13:0x0030, B:16:0x003a, B:23:0x004b, B:25:0x0057, B:26:0x005d, B:28:0x0061, B:30:0x0067, B:32:0x0080, B:34:0x00db, B:36:0x00e1, B:38:0x00f7, B:40:0x0103, B:42:0x0109), top: B:48:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f3  */
    @Override // a2.r1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void b(a2.c.a r25) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.p1.b(a2.c$a):void");
    }

    @Override // a2.r1
    public synchronized String c(i3 i3Var, q.b bVar) {
        return l(i3Var.l(bVar.f58906a, this.f491b).f6028c, bVar).f497a;
    }

    @Override // a2.r1
    public synchronized void d(c.a aVar) {
        com.google.android.exoplayer2.util.a.e(this.f494e);
        i3 i3Var = this.f495f;
        this.f495f = aVar.f375b;
        Iterator<a> it = this.f492c.values().iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!next.m(i3Var, this.f495f) || next.j(aVar)) {
                it.remove();
                if (next.f501e) {
                    if (next.f497a.equals(this.f496g)) {
                        this.f496g = null;
                    }
                    this.f494e.l0(aVar, next.f497a, false);
                }
            }
        }
        m(aVar);
    }

    @Override // a2.r1
    public void e(r1.a aVar) {
        this.f494e = aVar;
    }

    @Override // a2.r1
    public synchronized void f(c.a aVar, int i9) {
        com.google.android.exoplayer2.util.a.e(this.f494e);
        boolean z10 = i9 == 0;
        Iterator<a> it = this.f492c.values().iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next.j(aVar)) {
                it.remove();
                if (next.f501e) {
                    boolean equals = next.f497a.equals(this.f496g);
                    boolean z11 = z10 && equals && next.f502f;
                    if (equals) {
                        this.f496g = null;
                    }
                    this.f494e.l0(aVar, next.f497a, z11);
                }
            }
        }
        m(aVar);
    }

    @Override // a2.r1
    public synchronized void g(c.a aVar) {
        r1.a aVar2;
        this.f496g = null;
        Iterator<a> it = this.f492c.values().iterator();
        while (it.hasNext()) {
            a next = it.next();
            it.remove();
            if (next.f501e && (aVar2 = this.f494e) != null) {
                aVar2.l0(aVar, next.f497a, false);
            }
        }
    }

    public p1(com.google.common.base.w<String> wVar) {
        this.f493d = wVar;
        this.f490a = new i3.d();
        this.f491b = new i3.b();
        this.f492c = new HashMap<>();
        this.f495f = i3.f6023a;
    }
}
