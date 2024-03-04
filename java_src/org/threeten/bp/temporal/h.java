package org.threeten.bp.temporal;

import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalTime;
import org.threeten.bp.ZoneId;
import org.threeten.bp.ZoneOffset;
/* loaded from: classes7.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static final i<ZoneId> f56660a = new a();

    /* renamed from: b  reason: collision with root package name */
    static final i<org.threeten.bp.chrono.i> f56661b = new b();

    /* renamed from: c  reason: collision with root package name */
    static final i<j> f56662c = new c();

    /* renamed from: d  reason: collision with root package name */
    static final i<ZoneId> f56663d = new d();

    /* renamed from: e  reason: collision with root package name */
    static final i<ZoneOffset> f56664e = new e();

    /* renamed from: f  reason: collision with root package name */
    static final i<LocalDate> f56665f = new f();

    /* renamed from: g  reason: collision with root package name */
    static final i<LocalTime> f56666g = new g();

    /* loaded from: classes7.dex */
    class a implements i<ZoneId> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public ZoneId a(org.threeten.bp.temporal.c cVar) {
            return (ZoneId) cVar.query(this);
        }
    }

    /* loaded from: classes7.dex */
    class b implements i<org.threeten.bp.chrono.i> {
        b() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public org.threeten.bp.chrono.i a(org.threeten.bp.temporal.c cVar) {
            return (org.threeten.bp.chrono.i) cVar.query(this);
        }
    }

    /* loaded from: classes7.dex */
    class c implements i<j> {
        c() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public j a(org.threeten.bp.temporal.c cVar) {
            return (j) cVar.query(this);
        }
    }

    /* loaded from: classes7.dex */
    class d implements i<ZoneId> {
        d() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public ZoneId a(org.threeten.bp.temporal.c cVar) {
            ZoneId zoneId = (ZoneId) cVar.query(h.f56660a);
            return zoneId != null ? zoneId : (ZoneId) cVar.query(h.f56664e);
        }
    }

    /* loaded from: classes7.dex */
    class e implements i<ZoneOffset> {
        e() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public ZoneOffset a(org.threeten.bp.temporal.c cVar) {
            ChronoField chronoField = ChronoField.OFFSET_SECONDS;
            if (cVar.isSupported(chronoField)) {
                return ZoneOffset.ofTotalSeconds(cVar.get(chronoField));
            }
            return null;
        }
    }

    /* loaded from: classes7.dex */
    class f implements i<LocalDate> {
        f() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public LocalDate a(org.threeten.bp.temporal.c cVar) {
            ChronoField chronoField = ChronoField.EPOCH_DAY;
            if (cVar.isSupported(chronoField)) {
                return LocalDate.ofEpochDay(cVar.getLong(chronoField));
            }
            return null;
        }
    }

    /* loaded from: classes7.dex */
    class g implements i<LocalTime> {
        g() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public LocalTime a(org.threeten.bp.temporal.c cVar) {
            ChronoField chronoField = ChronoField.NANO_OF_DAY;
            if (cVar.isSupported(chronoField)) {
                return LocalTime.ofNanoOfDay(cVar.getLong(chronoField));
            }
            return null;
        }
    }

    public static final i<org.threeten.bp.chrono.i> a() {
        return f56661b;
    }

    public static final i<LocalDate> b() {
        return f56665f;
    }

    public static final i<LocalTime> c() {
        return f56666g;
    }

    public static final i<ZoneOffset> d() {
        return f56664e;
    }

    public static final i<j> e() {
        return f56662c;
    }

    public static final i<ZoneId> f() {
        return f56663d;
    }

    public static final i<ZoneId> g() {
        return f56660a;
    }
}
