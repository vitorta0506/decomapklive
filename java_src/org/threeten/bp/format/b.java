package org.threeten.bp.format;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.io.IOException;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Locale;
import java.util.Set;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.Period;
import org.threeten.bp.ZoneId;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.format.c;
import org.threeten.bp.format.d;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.i;
/* loaded from: classes7.dex */
public final class b {

    /* renamed from: h  reason: collision with root package name */
    public static final b f56515h;

    /* renamed from: i  reason: collision with root package name */
    public static final b f56516i;

    /* renamed from: j  reason: collision with root package name */
    public static final b f56517j;

    /* renamed from: k  reason: collision with root package name */
    public static final b f56518k;

    /* renamed from: l  reason: collision with root package name */
    public static final b f56519l;

    /* renamed from: m  reason: collision with root package name */
    public static final b f56520m;

    /* renamed from: n  reason: collision with root package name */
    public static final b f56521n;

    /* renamed from: o  reason: collision with root package name */
    public static final b f56522o;

    /* renamed from: p  reason: collision with root package name */
    public static final b f56523p;

    /* renamed from: q  reason: collision with root package name */
    public static final b f56524q;

    /* renamed from: r  reason: collision with root package name */
    public static final b f56525r;

    /* renamed from: s  reason: collision with root package name */
    public static final b f56526s;

    /* renamed from: t  reason: collision with root package name */
    public static final b f56527t;

    /* renamed from: u  reason: collision with root package name */
    public static final b f56528u;

    /* renamed from: v  reason: collision with root package name */
    public static final b f56529v;

    /* renamed from: w  reason: collision with root package name */
    private static final i<Period> f56530w;

    /* renamed from: x  reason: collision with root package name */
    private static final i<Boolean> f56531x;

    /* renamed from: a  reason: collision with root package name */
    private final c.g f56532a;

    /* renamed from: b  reason: collision with root package name */
    private final Locale f56533b;

    /* renamed from: c  reason: collision with root package name */
    private final g f56534c;

    /* renamed from: d  reason: collision with root package name */
    private final ResolverStyle f56535d;

    /* renamed from: e  reason: collision with root package name */
    private final Set<org.threeten.bp.temporal.g> f56536e;

    /* renamed from: f  reason: collision with root package name */
    private final org.threeten.bp.chrono.i f56537f;

    /* renamed from: g  reason: collision with root package name */
    private final ZoneId f56538g;

    /* loaded from: classes7.dex */
    class a implements i<Period> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public Period a(org.threeten.bp.temporal.c cVar) {
            if (cVar instanceof org.threeten.bp.format.a) {
                return ((org.threeten.bp.format.a) cVar).f56514g;
            }
            return Period.ZERO;
        }
    }

    /* renamed from: org.threeten.bp.format.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    class C0606b implements i<Boolean> {
        C0606b() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public Boolean a(org.threeten.bp.temporal.c cVar) {
            if (cVar instanceof org.threeten.bp.format.a) {
                return Boolean.valueOf(((org.threeten.bp.format.a) cVar).f56513f);
            }
            return Boolean.FALSE;
        }
    }

    static {
        c cVar = new c();
        ChronoField chronoField = ChronoField.YEAR;
        SignStyle signStyle = SignStyle.EXCEEDS_PAD;
        c f10 = cVar.n(chronoField, 4, 10, signStyle).f('-');
        ChronoField chronoField2 = ChronoField.MONTH_OF_YEAR;
        c f11 = f10.m(chronoField2, 2).f('-');
        ChronoField chronoField3 = ChronoField.DAY_OF_MONTH;
        c m10 = f11.m(chronoField3, 2);
        ResolverStyle resolverStyle = ResolverStyle.STRICT;
        b x10 = m10.x(resolverStyle);
        IsoChronology isoChronology = IsoChronology.INSTANCE;
        b l10 = x10.l(isoChronology);
        f56515h = l10;
        f56516i = new c().s().a(l10).i().x(resolverStyle).l(isoChronology);
        f56517j = new c().s().a(l10).r().i().x(resolverStyle).l(isoChronology);
        c cVar2 = new c();
        ChronoField chronoField4 = ChronoField.HOUR_OF_DAY;
        c f12 = cVar2.m(chronoField4, 2).f(':');
        ChronoField chronoField5 = ChronoField.MINUTE_OF_HOUR;
        c f13 = f12.m(chronoField5, 2).r().f(':');
        ChronoField chronoField6 = ChronoField.SECOND_OF_MINUTE;
        b x11 = f13.m(chronoField6, 2).r().c(ChronoField.NANO_OF_SECOND, 0, 9, true).x(resolverStyle);
        f56518k = x11;
        f56519l = new c().s().a(x11).i().x(resolverStyle);
        f56520m = new c().s().a(x11).r().i().x(resolverStyle);
        b l11 = new c().s().a(l10).f('T').a(x11).x(resolverStyle).l(isoChronology);
        f56521n = l11;
        b l12 = new c().s().a(l11).i().x(resolverStyle).l(isoChronology);
        f56522o = l12;
        f56523p = new c().a(l12).r().f('[').t().o().f(']').x(resolverStyle).l(isoChronology);
        f56524q = new c().a(l11).r().i().r().f('[').t().o().f(']').x(resolverStyle).l(isoChronology);
        f56525r = new c().s().n(chronoField, 4, 10, signStyle).f('-').m(ChronoField.DAY_OF_YEAR, 3).r().i().x(resolverStyle).l(isoChronology);
        c f14 = new c().s().n(org.threeten.bp.temporal.a.f56643d, 4, 10, signStyle).g("-W").m(org.threeten.bp.temporal.a.f56642c, 2).f('-');
        ChronoField chronoField7 = ChronoField.DAY_OF_WEEK;
        f56526s = f14.m(chronoField7, 1).r().i().x(resolverStyle).l(isoChronology);
        f56527t = new c().s().d().x(resolverStyle);
        f56528u = new c().s().m(chronoField, 4).m(chronoField2, 2).m(chronoField3, 2).r().h("+HHMMss", "Z").x(resolverStyle).l(isoChronology);
        HashMap hashMap = new HashMap();
        hashMap.put(1L, "Mon");
        hashMap.put(2L, "Tue");
        hashMap.put(3L, "Wed");
        hashMap.put(4L, "Thu");
        hashMap.put(5L, "Fri");
        hashMap.put(6L, "Sat");
        hashMap.put(7L, "Sun");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(1L, "Jan");
        hashMap2.put(2L, "Feb");
        hashMap2.put(3L, "Mar");
        hashMap2.put(4L, "Apr");
        hashMap2.put(5L, "May");
        hashMap2.put(6L, "Jun");
        hashMap2.put(7L, "Jul");
        hashMap2.put(8L, "Aug");
        hashMap2.put(9L, "Sep");
        hashMap2.put(10L, "Oct");
        hashMap2.put(11L, "Nov");
        hashMap2.put(12L, "Dec");
        f56529v = new c().s().u().r().j(chronoField7, hashMap).g(", ").q().n(chronoField3, 1, 2, SignStyle.NOT_NEGATIVE).f(' ').j(chronoField2, hashMap2).f(' ').m(chronoField, 4).f(' ').m(chronoField4, 2).f(':').m(chronoField5, 2).r().f(':').m(chronoField6, 2).q().f(' ').h("+HHMM", "GMT").x(ResolverStyle.SMART).l(isoChronology);
        f56530w = new a();
        f56531x = new C0606b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(c.g gVar, Locale locale, g gVar2, ResolverStyle resolverStyle, Set<org.threeten.bp.temporal.g> set, org.threeten.bp.chrono.i iVar, ZoneId zoneId) {
        this.f56532a = (c.g) jl.d.i(gVar, "printerParser");
        this.f56533b = (Locale) jl.d.i(locale, "locale");
        this.f56534c = (g) jl.d.i(gVar2, "decimalStyle");
        this.f56535d = (ResolverStyle) jl.d.i(resolverStyle, "resolverStyle");
        this.f56536e = set;
        this.f56537f = iVar;
        this.f56538g = zoneId;
    }

    private DateTimeParseException a(CharSequence charSequence, RuntimeException runtimeException) {
        String charSequence2;
        if (charSequence.length() > 64) {
            charSequence2 = charSequence.subSequence(0, 64).toString() + "...";
        } else {
            charSequence2 = charSequence.toString();
        }
        return new DateTimeParseException("Text '" + charSequence2 + "' could not be parsed: " + runtimeException.getMessage(), charSequence, 0, runtimeException);
    }

    private org.threeten.bp.format.a i(CharSequence charSequence, ParsePosition parsePosition) {
        String charSequence2;
        ParsePosition parsePosition2 = parsePosition != null ? parsePosition : new ParsePosition(0);
        d.b j10 = j(charSequence, parsePosition2);
        if (j10 != null && parsePosition2.getErrorIndex() < 0 && (parsePosition != null || parsePosition2.getIndex() >= charSequence.length())) {
            return j10.b();
        }
        if (charSequence.length() > 64) {
            charSequence2 = charSequence.subSequence(0, 64).toString() + "...";
        } else {
            charSequence2 = charSequence.toString();
        }
        if (parsePosition2.getErrorIndex() >= 0) {
            throw new DateTimeParseException("Text '" + charSequence2 + "' could not be parsed at index " + parsePosition2.getErrorIndex(), charSequence, parsePosition2.getErrorIndex());
        }
        throw new DateTimeParseException("Text '" + charSequence2 + "' could not be parsed, unparsed text found at index " + parsePosition2.getIndex(), charSequence, parsePosition2.getIndex());
    }

    private d.b j(CharSequence charSequence, ParsePosition parsePosition) {
        jl.d.i(charSequence, ViewHierarchyConstants.TEXT_KEY);
        jl.d.i(parsePosition, "position");
        d dVar = new d(this);
        int a10 = this.f56532a.a(dVar, charSequence, parsePosition.getIndex());
        if (a10 < 0) {
            parsePosition.setErrorIndex(~a10);
            return null;
        }
        parsePosition.setIndex(a10);
        return dVar.v();
    }

    public String b(org.threeten.bp.temporal.c cVar) {
        StringBuilder sb2 = new StringBuilder(32);
        c(cVar, sb2);
        return sb2.toString();
    }

    public void c(org.threeten.bp.temporal.c cVar, Appendable appendable) {
        jl.d.i(cVar, "temporal");
        jl.d.i(appendable, "appendable");
        try {
            e eVar = new e(cVar, this);
            if (appendable instanceof StringBuilder) {
                this.f56532a.b(eVar, (StringBuilder) appendable);
                return;
            }
            StringBuilder sb2 = new StringBuilder(32);
            this.f56532a.b(eVar, sb2);
            appendable.append(sb2);
        } catch (IOException e10) {
            throw new DateTimeException(e10.getMessage(), e10);
        }
    }

    public org.threeten.bp.chrono.i d() {
        return this.f56537f;
    }

    public g e() {
        return this.f56534c;
    }

    public Locale f() {
        return this.f56533b;
    }

    public ZoneId g() {
        return this.f56538g;
    }

    public <T> T h(CharSequence charSequence, i<T> iVar) {
        jl.d.i(charSequence, ViewHierarchyConstants.TEXT_KEY);
        jl.d.i(iVar, "type");
        try {
            return (T) i(charSequence, null).p(this.f56535d, this.f56536e).e(iVar);
        } catch (DateTimeParseException e10) {
            throw e10;
        } catch (RuntimeException e11) {
            throw a(charSequence, e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c.g k(boolean z10) {
        return this.f56532a.c(z10);
    }

    public b l(org.threeten.bp.chrono.i iVar) {
        return jl.d.c(this.f56537f, iVar) ? this : new b(this.f56532a, this.f56533b, this.f56534c, this.f56535d, this.f56536e, iVar, this.f56538g);
    }

    public b m(ResolverStyle resolverStyle) {
        jl.d.i(resolverStyle, "resolverStyle");
        return jl.d.c(this.f56535d, resolverStyle) ? this : new b(this.f56532a, this.f56533b, this.f56534c, resolverStyle, this.f56536e, this.f56537f, this.f56538g);
    }

    public String toString() {
        String gVar = this.f56532a.toString();
        return gVar.startsWith("[") ? gVar : gVar.substring(1, gVar.length() - 1);
    }
}
