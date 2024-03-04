package org.threeten.bp.format;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.threeten.bp.Period;
import org.threeten.bp.ZoneId;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.chrono.i;
import org.threeten.bp.format.c;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private Locale f56596a;

    /* renamed from: b  reason: collision with root package name */
    private g f56597b;

    /* renamed from: c  reason: collision with root package name */
    private i f56598c;

    /* renamed from: d  reason: collision with root package name */
    private ZoneId f56599d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f56600e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f56601f;

    /* renamed from: g  reason: collision with root package name */
    private final ArrayList<b> f56602g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public final class b extends jl.c {

        /* renamed from: a  reason: collision with root package name */
        i f56603a;

        /* renamed from: b  reason: collision with root package name */
        ZoneId f56604b;

        /* renamed from: c  reason: collision with root package name */
        final Map<org.threeten.bp.temporal.g, Long> f56605c;

        /* renamed from: d  reason: collision with root package name */
        boolean f56606d;

        /* renamed from: e  reason: collision with root package name */
        Period f56607e;

        /* renamed from: f  reason: collision with root package name */
        List<Object[]> f56608f;

        protected b a() {
            b bVar = new b();
            bVar.f56603a = this.f56603a;
            bVar.f56604b = this.f56604b;
            bVar.f56605c.putAll(this.f56605c);
            bVar.f56606d = this.f56606d;
            return bVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public org.threeten.bp.format.a b() {
            org.threeten.bp.format.a aVar = new org.threeten.bp.format.a();
            aVar.f56508a.putAll(this.f56605c);
            aVar.f56509b = d.this.h();
            ZoneId zoneId = this.f56604b;
            if (zoneId != null) {
                aVar.f56510c = zoneId;
            } else {
                aVar.f56510c = d.this.f56599d;
            }
            aVar.f56513f = this.f56606d;
            aVar.f56514g = this.f56607e;
            return aVar;
        }

        @Override // jl.c, org.threeten.bp.temporal.c
        public int get(org.threeten.bp.temporal.g gVar) {
            if (this.f56605c.containsKey(gVar)) {
                return jl.d.q(this.f56605c.get(gVar).longValue());
            }
            throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
        }

        @Override // org.threeten.bp.temporal.c
        public long getLong(org.threeten.bp.temporal.g gVar) {
            if (this.f56605c.containsKey(gVar)) {
                return this.f56605c.get(gVar).longValue();
            }
            throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
        }

        @Override // org.threeten.bp.temporal.c
        public boolean isSupported(org.threeten.bp.temporal.g gVar) {
            return this.f56605c.containsKey(gVar);
        }

        @Override // jl.c, org.threeten.bp.temporal.c
        public <R> R query(org.threeten.bp.temporal.i<R> iVar) {
            if (iVar == org.threeten.bp.temporal.h.a()) {
                return (R) this.f56603a;
            }
            if (iVar != org.threeten.bp.temporal.h.g() && iVar != org.threeten.bp.temporal.h.f()) {
                return (R) super.query(iVar);
            }
            return (R) this.f56604b;
        }

        public String toString() {
            return this.f56605c.toString() + "," + this.f56603a + "," + this.f56604b;
        }

        private b() {
            this.f56603a = null;
            this.f56604b = null;
            this.f56605c = new HashMap();
            this.f56607e = Period.ZERO;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(org.threeten.bp.format.b bVar) {
        this.f56600e = true;
        this.f56601f = true;
        ArrayList<b> arrayList = new ArrayList<>();
        this.f56602g = arrayList;
        this.f56596a = bVar.f();
        this.f56597b = bVar.e();
        this.f56598c = bVar.d();
        this.f56599d = bVar.g();
        arrayList.add(new b());
    }

    static boolean d(char c10, char c11) {
        return c10 == c11 || Character.toUpperCase(c10) == Character.toUpperCase(c11) || Character.toLowerCase(c10) == Character.toLowerCase(c11);
    }

    private b f() {
        ArrayList<b> arrayList = this.f56602g;
        return arrayList.get(arrayList.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(c.n nVar, long j10, int i9, int i10) {
        b f10 = f();
        if (f10.f56608f == null) {
            f10.f56608f = new ArrayList(2);
        }
        f10.f56608f.add(new Object[]{nVar, Long.valueOf(j10), Integer.valueOf(i9), Integer.valueOf(i10)});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(char c10, char c11) {
        if (l()) {
            return c10 == c11;
        }
        return d(c10, c11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d e() {
        return new d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(boolean z10) {
        if (z10) {
            ArrayList<b> arrayList = this.f56602g;
            arrayList.remove(arrayList.size() - 2);
            return;
        }
        ArrayList<b> arrayList2 = this.f56602g;
        arrayList2.remove(arrayList2.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i h() {
        i iVar = f().f56603a;
        if (iVar == null) {
            i iVar2 = this.f56598c;
            return iVar2 == null ? IsoChronology.INSTANCE : iVar2;
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Locale i() {
        return this.f56596a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long j(org.threeten.bp.temporal.g gVar) {
        return f().f56605c.get(gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g k() {
        return this.f56597b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l() {
        return this.f56600e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        return this.f56601f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(boolean z10) {
        this.f56600e = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(ZoneId zoneId) {
        jl.d.i(zoneId, "zone");
        f().f56604b = zoneId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(i iVar) {
        jl.d.i(iVar, "chrono");
        b f10 = f();
        f10.f56603a = iVar;
        if (f10.f56608f != null) {
            ArrayList<Object[]> arrayList = new ArrayList(f10.f56608f);
            f10.f56608f.clear();
            for (Object[] objArr : arrayList) {
                ((c.n) objArr[0]).e(this, ((Long) objArr[1]).longValue(), ((Integer) objArr[2]).intValue(), ((Integer) objArr[3]).intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int q(org.threeten.bp.temporal.g gVar, long j10, int i9, int i10) {
        jl.d.i(gVar, "field");
        Long put = f().f56605c.put(gVar, Long.valueOf(j10));
        return (put == null || put.longValue() == j10) ? i10 : ~i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        f().f56606d = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(boolean z10) {
        this.f56601f = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t() {
        this.f56602g.add(f().a());
    }

    public String toString() {
        return f().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean u(CharSequence charSequence, int i9, CharSequence charSequence2, int i10, int i11) {
        if (i9 + i11 > charSequence.length() || i10 + i11 > charSequence2.length()) {
            return false;
        }
        if (l()) {
            for (int i12 = 0; i12 < i11; i12++) {
                if (charSequence.charAt(i9 + i12) != charSequence2.charAt(i10 + i12)) {
                    return false;
                }
            }
            return true;
        }
        for (int i13 = 0; i13 < i11; i13++) {
            char charAt = charSequence.charAt(i9 + i13);
            char charAt2 = charSequence2.charAt(i10 + i13);
            if (charAt != charAt2 && Character.toUpperCase(charAt) != Character.toUpperCase(charAt2) && Character.toLowerCase(charAt) != Character.toLowerCase(charAt2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b v() {
        return f();
    }

    d(d dVar) {
        this.f56600e = true;
        this.f56601f = true;
        ArrayList<b> arrayList = new ArrayList<>();
        this.f56602g = arrayList;
        this.f56596a = dVar.f56596a;
        this.f56597b = dVar.f56597b;
        this.f56598c = dVar.f56598c;
        this.f56599d = dVar.f56599d;
        this.f56600e = dVar.f56600e;
        this.f56601f = dVar.f56601f;
        arrayList.add(new b());
    }
}
