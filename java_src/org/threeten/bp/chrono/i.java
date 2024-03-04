package org.threeten.bp.chrono;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.Instant;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalTime;
import org.threeten.bp.ZoneId;
import org.threeten.bp.format.ResolverStyle;
import org.threeten.bp.format.TextStyle;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
/* loaded from: classes7.dex */
public abstract class i implements Comparable<i> {
    private static final Method LOCALE_METHOD;
    public static final org.threeten.bp.temporal.i<i> FROM = new a();
    private static final ConcurrentHashMap<String, i> CHRONOS_BY_ID = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, i> CHRONOS_BY_TYPE = new ConcurrentHashMap<>();

    /* loaded from: classes7.dex */
    class a implements org.threeten.bp.temporal.i<i> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public i a(org.threeten.bp.temporal.c cVar) {
            return i.from(cVar);
        }
    }

    /* loaded from: classes7.dex */
    class b extends jl.c {
        b() {
        }

        @Override // org.threeten.bp.temporal.c
        public long getLong(org.threeten.bp.temporal.g gVar) {
            throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
        }

        @Override // org.threeten.bp.temporal.c
        public boolean isSupported(org.threeten.bp.temporal.g gVar) {
            return false;
        }

        @Override // jl.c, org.threeten.bp.temporal.c
        public <R> R query(org.threeten.bp.temporal.i<R> iVar) {
            if (iVar == org.threeten.bp.temporal.h.a()) {
                return (R) i.this;
            }
            return (R) super.query(iVar);
        }
    }

    static {
        Method method;
        try {
            method = Locale.class.getMethod("getUnicodeLocaleType", String.class);
        } catch (Throwable unused) {
            method = null;
        }
        LOCALE_METHOD = method;
    }

    public static i from(org.threeten.bp.temporal.c cVar) {
        jl.d.i(cVar, "temporal");
        i iVar = (i) cVar.query(org.threeten.bp.temporal.h.a());
        return iVar != null ? iVar : IsoChronology.INSTANCE;
    }

    public static Set<i> getAvailableChronologies() {
        init();
        return new HashSet(CHRONOS_BY_ID.values());
    }

    private static void init() {
        ConcurrentHashMap<String, i> concurrentHashMap = CHRONOS_BY_ID;
        if (concurrentHashMap.isEmpty()) {
            register(IsoChronology.INSTANCE);
            register(ThaiBuddhistChronology.INSTANCE);
            register(MinguoChronology.INSTANCE);
            register(JapaneseChronology.INSTANCE);
            HijrahChronology hijrahChronology = HijrahChronology.INSTANCE;
            register(hijrahChronology);
            concurrentHashMap.putIfAbsent("Hijrah", hijrahChronology);
            CHRONOS_BY_TYPE.putIfAbsent("islamic", hijrahChronology);
            Iterator it = ServiceLoader.load(i.class, i.class.getClassLoader()).iterator();
            while (it.hasNext()) {
                i iVar = (i) it.next();
                CHRONOS_BY_ID.putIfAbsent(iVar.getId(), iVar);
                String calendarType = iVar.getCalendarType();
                if (calendarType != null) {
                    CHRONOS_BY_TYPE.putIfAbsent(calendarType, iVar);
                }
            }
        }
    }

    public static i of(String str) {
        init();
        i iVar = CHRONOS_BY_ID.get(str);
        if (iVar != null) {
            return iVar;
        }
        i iVar2 = CHRONOS_BY_TYPE.get(str);
        if (iVar2 != null) {
            return iVar2;
        }
        throw new DateTimeException("Unknown chronology: " + str);
    }

    public static i ofLocale(Locale locale) {
        String str;
        init();
        jl.d.i(locale, "locale");
        Method method = LOCALE_METHOD;
        if (method != null) {
            try {
                str = (String) method.invoke(locale, "ca");
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
        } else {
            if (locale.equals(JapaneseChronology.LOCALE)) {
                str = "japanese";
            }
            str = "iso";
        }
        if (str != null && !"iso".equals(str) && !"iso8601".equals(str)) {
            i iVar = CHRONOS_BY_TYPE.get(str);
            if (iVar != null) {
                return iVar;
            }
            throw new DateTimeException("Unknown calendar system: " + str);
        }
        return IsoChronology.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i readExternal(DataInput dataInput) throws IOException {
        return of(dataInput.readUTF());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private static void register(i iVar) {
        CHRONOS_BY_ID.putIfAbsent(iVar.getId(), iVar);
        String calendarType = iVar.getCalendarType();
        if (calendarType != null) {
            CHRONOS_BY_TYPE.putIfAbsent(calendarType, iVar);
        }
    }

    private Object writeReplace() {
        return new k((byte) 11, this);
    }

    public abstract org.threeten.bp.chrono.b date(int i9, int i10, int i11);

    public org.threeten.bp.chrono.b date(j jVar, int i9, int i10, int i11) {
        return date(prolepticYear(jVar, i9), i10, i11);
    }

    public abstract org.threeten.bp.chrono.b date(org.threeten.bp.temporal.c cVar);

    public abstract org.threeten.bp.chrono.b dateEpochDay(long j10);

    public org.threeten.bp.chrono.b dateNow() {
        return dateNow(org.threeten.bp.a.d());
    }

    public abstract org.threeten.bp.chrono.b dateYearDay(int i9, int i10);

    public org.threeten.bp.chrono.b dateYearDay(j jVar, int i9, int i10) {
        return dateYearDay(prolepticYear(jVar, i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <D extends org.threeten.bp.chrono.b> D ensureChronoLocalDate(org.threeten.bp.temporal.b bVar) {
        D d10 = (D) bVar;
        if (equals(d10.getChronology())) {
            return d10;
        }
        throw new ClassCastException("Chrono mismatch, expected: " + getId() + ", actual: " + d10.getChronology().getId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <D extends org.threeten.bp.chrono.b> d<D> ensureChronoLocalDateTime(org.threeten.bp.temporal.b bVar) {
        d<D> dVar = (d) bVar;
        if (equals(dVar.toLocalDate().getChronology())) {
            return dVar;
        }
        throw new ClassCastException("Chrono mismatch, required: " + getId() + ", supplied: " + dVar.toLocalDate().getChronology().getId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <D extends org.threeten.bp.chrono.b> h<D> ensureChronoZonedDateTime(org.threeten.bp.temporal.b bVar) {
        h<D> hVar = (h) bVar;
        if (equals(hVar.toLocalDate().getChronology())) {
            return hVar;
        }
        throw new ClassCastException("Chrono mismatch, required: " + getId() + ", supplied: " + hVar.toLocalDate().getChronology().getId());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && compareTo((i) obj) == 0;
    }

    public abstract j eraOf(int i9);

    public abstract List<j> eras();

    public abstract String getCalendarType();

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        return new org.threeten.bp.format.c().b(textStyle).w(locale).b(new b());
    }

    public abstract String getId();

    public int hashCode() {
        return getClass().hashCode() ^ getId().hashCode();
    }

    public abstract boolean isLeapYear(long j10);

    public c<?> localDateTime(org.threeten.bp.temporal.c cVar) {
        try {
            return date(cVar).atTime(LocalTime.from(cVar));
        } catch (DateTimeException e10) {
            throw new DateTimeException("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + cVar.getClass(), e10);
        }
    }

    public e period(int i9, int i10, int i11) {
        return new f(this, i9, i10, i11);
    }

    public abstract int prolepticYear(j jVar, int i9);

    public abstract ValueRange range(ChronoField chronoField);

    public abstract org.threeten.bp.chrono.b resolveDate(Map<org.threeten.bp.temporal.g, Long> map, ResolverStyle resolverStyle);

    public String toString() {
        return getId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateResolveMap(Map<org.threeten.bp.temporal.g, Long> map, ChronoField chronoField, long j10) {
        Long l10 = map.get(chronoField);
        if (l10 != null && l10.longValue() != j10) {
            throw new DateTimeException("Invalid state, field: " + chronoField + " " + l10 + " conflicts with " + chronoField + " " + j10);
        }
        map.put(chronoField, Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(getId());
    }

    public g<?> zonedDateTime(org.threeten.bp.temporal.c cVar) {
        try {
            ZoneId from = ZoneId.from(cVar);
            try {
                return zonedDateTime(Instant.from(cVar), from);
            } catch (DateTimeException unused) {
                return h.b(ensureChronoLocalDateTime(localDateTime(cVar)), from, null);
            }
        } catch (DateTimeException e10) {
            throw new DateTimeException("Unable to obtain ChronoZonedDateTime from TemporalAccessor: " + cVar.getClass(), e10);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(i iVar) {
        return getId().compareTo(iVar.getId());
    }

    public org.threeten.bp.chrono.b dateNow(ZoneId zoneId) {
        return dateNow(org.threeten.bp.a.c(zoneId));
    }

    public org.threeten.bp.chrono.b dateNow(org.threeten.bp.a aVar) {
        jl.d.i(aVar, "clock");
        return date(LocalDate.now(aVar));
    }

    public g<?> zonedDateTime(Instant instant, ZoneId zoneId) {
        return h.d(this, instant, zoneId);
    }
}
