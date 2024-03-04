package org.threeten.bp.format;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.Instant;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalTime;
import org.threeten.bp.Period;
import org.threeten.bp.ZoneId;
import org.threeten.bp.ZoneOffset;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.chrono.i;
import org.threeten.bp.temporal.ChronoField;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class a extends jl.c implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    final Map<org.threeten.bp.temporal.g, Long> f56508a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    i f56509b;

    /* renamed from: c  reason: collision with root package name */
    ZoneId f56510c;

    /* renamed from: d  reason: collision with root package name */
    org.threeten.bp.chrono.b f56511d;

    /* renamed from: e  reason: collision with root package name */
    LocalTime f56512e;

    /* renamed from: f  reason: collision with root package name */
    boolean f56513f;

    /* renamed from: g  reason: collision with root package name */
    Period f56514g;

    private void f(LocalDate localDate) {
        if (localDate != null) {
            d(localDate);
            for (org.threeten.bp.temporal.g gVar : this.f56508a.keySet()) {
                if ((gVar instanceof ChronoField) && gVar.isDateBased()) {
                    try {
                        long j10 = localDate.getLong(gVar);
                        Long l10 = this.f56508a.get(gVar);
                        if (j10 != l10.longValue()) {
                            throw new DateTimeException("Conflict found: Field " + gVar + " " + j10 + " differs from " + gVar + " " + l10 + " derived from " + localDate);
                        }
                    } catch (DateTimeException unused) {
                    }
                }
            }
        }
    }

    private void g() {
        LocalTime localTime;
        if (this.f56508a.size() > 0) {
            org.threeten.bp.chrono.b bVar = this.f56511d;
            if (bVar != null && (localTime = this.f56512e) != null) {
                h(bVar.atTime(localTime));
            } else if (bVar != null) {
                h(bVar);
            } else {
                org.threeten.bp.temporal.c cVar = this.f56512e;
                if (cVar != null) {
                    h(cVar);
                }
            }
        }
    }

    private void h(org.threeten.bp.temporal.c cVar) {
        Iterator<Map.Entry<org.threeten.bp.temporal.g, Long>> it = this.f56508a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<org.threeten.bp.temporal.g, Long> next = it.next();
            org.threeten.bp.temporal.g key = next.getKey();
            long longValue = next.getValue().longValue();
            if (cVar.isSupported(key)) {
                try {
                    long j10 = cVar.getLong(key);
                    if (j10 == longValue) {
                        it.remove();
                    } else {
                        throw new DateTimeException("Cross check failed: " + key + " " + j10 + " vs " + key + " " + longValue);
                    }
                } catch (RuntimeException unused) {
                }
            }
        }
    }

    private Long i(org.threeten.bp.temporal.g gVar) {
        return this.f56508a.get(gVar);
    }

    private void j(ResolverStyle resolverStyle) {
        if (this.f56509b instanceof IsoChronology) {
            f(IsoChronology.INSTANCE.resolveDate(this.f56508a, resolverStyle));
            return;
        }
        Map<org.threeten.bp.temporal.g, Long> map = this.f56508a;
        ChronoField chronoField = ChronoField.EPOCH_DAY;
        if (map.containsKey(chronoField)) {
            f(LocalDate.ofEpochDay(this.f56508a.remove(chronoField).longValue()));
        }
    }

    private void k() {
        if (this.f56508a.containsKey(ChronoField.INSTANT_SECONDS)) {
            ZoneId zoneId = this.f56510c;
            if (zoneId != null) {
                l(zoneId);
                return;
            }
            Long l10 = this.f56508a.get(ChronoField.OFFSET_SECONDS);
            if (l10 != null) {
                l(ZoneOffset.ofTotalSeconds(l10.intValue()));
            }
        }
    }

    private void l(ZoneId zoneId) {
        Map<org.threeten.bp.temporal.g, Long> map = this.f56508a;
        ChronoField chronoField = ChronoField.INSTANT_SECONDS;
        org.threeten.bp.chrono.g<?> zonedDateTime = this.f56509b.zonedDateTime(Instant.ofEpochSecond(map.remove(chronoField).longValue()), zoneId);
        if (this.f56511d == null) {
            d(zonedDateTime.toLocalDate());
        } else {
            u(chronoField, zonedDateTime.toLocalDate());
        }
        a(ChronoField.SECOND_OF_DAY, zonedDateTime.toLocalTime().toSecondOfDay());
    }

    private void m(ResolverStyle resolverStyle) {
        Map<org.threeten.bp.temporal.g, Long> map = this.f56508a;
        ChronoField chronoField = ChronoField.CLOCK_HOUR_OF_DAY;
        if (map.containsKey(chronoField)) {
            long longValue = this.f56508a.remove(chronoField).longValue();
            if (resolverStyle != ResolverStyle.LENIENT && (resolverStyle != ResolverStyle.SMART || longValue != 0)) {
                chronoField.checkValidValue(longValue);
            }
            ChronoField chronoField2 = ChronoField.HOUR_OF_DAY;
            if (longValue == 24) {
                longValue = 0;
            }
            a(chronoField2, longValue);
        }
        Map<org.threeten.bp.temporal.g, Long> map2 = this.f56508a;
        ChronoField chronoField3 = ChronoField.CLOCK_HOUR_OF_AMPM;
        if (map2.containsKey(chronoField3)) {
            long longValue2 = this.f56508a.remove(chronoField3).longValue();
            if (resolverStyle != ResolverStyle.LENIENT && (resolverStyle != ResolverStyle.SMART || longValue2 != 0)) {
                chronoField3.checkValidValue(longValue2);
            }
            a(ChronoField.HOUR_OF_AMPM, longValue2 != 12 ? longValue2 : 0L);
        }
        ResolverStyle resolverStyle2 = ResolverStyle.LENIENT;
        if (resolverStyle != resolverStyle2) {
            Map<org.threeten.bp.temporal.g, Long> map3 = this.f56508a;
            ChronoField chronoField4 = ChronoField.AMPM_OF_DAY;
            if (map3.containsKey(chronoField4)) {
                chronoField4.checkValidValue(this.f56508a.get(chronoField4).longValue());
            }
            Map<org.threeten.bp.temporal.g, Long> map4 = this.f56508a;
            ChronoField chronoField5 = ChronoField.HOUR_OF_AMPM;
            if (map4.containsKey(chronoField5)) {
                chronoField5.checkValidValue(this.f56508a.get(chronoField5).longValue());
            }
        }
        Map<org.threeten.bp.temporal.g, Long> map5 = this.f56508a;
        ChronoField chronoField6 = ChronoField.AMPM_OF_DAY;
        if (map5.containsKey(chronoField6)) {
            Map<org.threeten.bp.temporal.g, Long> map6 = this.f56508a;
            ChronoField chronoField7 = ChronoField.HOUR_OF_AMPM;
            if (map6.containsKey(chronoField7)) {
                a(ChronoField.HOUR_OF_DAY, (this.f56508a.remove(chronoField6).longValue() * 12) + this.f56508a.remove(chronoField7).longValue());
            }
        }
        Map<org.threeten.bp.temporal.g, Long> map7 = this.f56508a;
        ChronoField chronoField8 = ChronoField.NANO_OF_DAY;
        if (map7.containsKey(chronoField8)) {
            long longValue3 = this.f56508a.remove(chronoField8).longValue();
            if (resolverStyle != resolverStyle2) {
                chronoField8.checkValidValue(longValue3);
            }
            a(ChronoField.SECOND_OF_DAY, longValue3 / 1000000000);
            a(ChronoField.NANO_OF_SECOND, longValue3 % 1000000000);
        }
        Map<org.threeten.bp.temporal.g, Long> map8 = this.f56508a;
        ChronoField chronoField9 = ChronoField.MICRO_OF_DAY;
        if (map8.containsKey(chronoField9)) {
            long longValue4 = this.f56508a.remove(chronoField9).longValue();
            if (resolverStyle != resolverStyle2) {
                chronoField9.checkValidValue(longValue4);
            }
            a(ChronoField.SECOND_OF_DAY, longValue4 / 1000000);
            a(ChronoField.MICRO_OF_SECOND, longValue4 % 1000000);
        }
        Map<org.threeten.bp.temporal.g, Long> map9 = this.f56508a;
        ChronoField chronoField10 = ChronoField.MILLI_OF_DAY;
        if (map9.containsKey(chronoField10)) {
            long longValue5 = this.f56508a.remove(chronoField10).longValue();
            if (resolverStyle != resolverStyle2) {
                chronoField10.checkValidValue(longValue5);
            }
            a(ChronoField.SECOND_OF_DAY, longValue5 / 1000);
            a(ChronoField.MILLI_OF_SECOND, longValue5 % 1000);
        }
        Map<org.threeten.bp.temporal.g, Long> map10 = this.f56508a;
        ChronoField chronoField11 = ChronoField.SECOND_OF_DAY;
        if (map10.containsKey(chronoField11)) {
            long longValue6 = this.f56508a.remove(chronoField11).longValue();
            if (resolverStyle != resolverStyle2) {
                chronoField11.checkValidValue(longValue6);
            }
            a(ChronoField.HOUR_OF_DAY, longValue6 / 3600);
            a(ChronoField.MINUTE_OF_HOUR, (longValue6 / 60) % 60);
            a(ChronoField.SECOND_OF_MINUTE, longValue6 % 60);
        }
        Map<org.threeten.bp.temporal.g, Long> map11 = this.f56508a;
        ChronoField chronoField12 = ChronoField.MINUTE_OF_DAY;
        if (map11.containsKey(chronoField12)) {
            long longValue7 = this.f56508a.remove(chronoField12).longValue();
            if (resolverStyle != resolverStyle2) {
                chronoField12.checkValidValue(longValue7);
            }
            a(ChronoField.HOUR_OF_DAY, longValue7 / 60);
            a(ChronoField.MINUTE_OF_HOUR, longValue7 % 60);
        }
        if (resolverStyle != resolverStyle2) {
            Map<org.threeten.bp.temporal.g, Long> map12 = this.f56508a;
            ChronoField chronoField13 = ChronoField.MILLI_OF_SECOND;
            if (map12.containsKey(chronoField13)) {
                chronoField13.checkValidValue(this.f56508a.get(chronoField13).longValue());
            }
            Map<org.threeten.bp.temporal.g, Long> map13 = this.f56508a;
            ChronoField chronoField14 = ChronoField.MICRO_OF_SECOND;
            if (map13.containsKey(chronoField14)) {
                chronoField14.checkValidValue(this.f56508a.get(chronoField14).longValue());
            }
        }
        Map<org.threeten.bp.temporal.g, Long> map14 = this.f56508a;
        ChronoField chronoField15 = ChronoField.MILLI_OF_SECOND;
        if (map14.containsKey(chronoField15)) {
            Map<org.threeten.bp.temporal.g, Long> map15 = this.f56508a;
            ChronoField chronoField16 = ChronoField.MICRO_OF_SECOND;
            if (map15.containsKey(chronoField16)) {
                a(chronoField16, (this.f56508a.remove(chronoField15).longValue() * 1000) + (this.f56508a.get(chronoField16).longValue() % 1000));
            }
        }
        Map<org.threeten.bp.temporal.g, Long> map16 = this.f56508a;
        ChronoField chronoField17 = ChronoField.MICRO_OF_SECOND;
        if (map16.containsKey(chronoField17)) {
            Map<org.threeten.bp.temporal.g, Long> map17 = this.f56508a;
            ChronoField chronoField18 = ChronoField.NANO_OF_SECOND;
            if (map17.containsKey(chronoField18)) {
                a(chronoField17, this.f56508a.get(chronoField18).longValue() / 1000);
                this.f56508a.remove(chronoField17);
            }
        }
        if (this.f56508a.containsKey(chronoField15)) {
            Map<org.threeten.bp.temporal.g, Long> map18 = this.f56508a;
            ChronoField chronoField19 = ChronoField.NANO_OF_SECOND;
            if (map18.containsKey(chronoField19)) {
                a(chronoField15, this.f56508a.get(chronoField19).longValue() / 1000000);
                this.f56508a.remove(chronoField15);
            }
        }
        if (this.f56508a.containsKey(chronoField17)) {
            a(ChronoField.NANO_OF_SECOND, this.f56508a.remove(chronoField17).longValue() * 1000);
        } else if (this.f56508a.containsKey(chronoField15)) {
            a(ChronoField.NANO_OF_SECOND, this.f56508a.remove(chronoField15).longValue() * 1000000);
        }
    }

    private a o(org.threeten.bp.temporal.g gVar, long j10) {
        this.f56508a.put(gVar, Long.valueOf(j10));
        return this;
    }

    private boolean q(ResolverStyle resolverStyle) {
        int i9 = 0;
        loop0: while (i9 < 100) {
            for (Map.Entry<org.threeten.bp.temporal.g, Long> entry : this.f56508a.entrySet()) {
                org.threeten.bp.temporal.g key = entry.getKey();
                org.threeten.bp.temporal.c resolve = key.resolve(this.f56508a, this, resolverStyle);
                if (resolve != null) {
                    if (resolve instanceof org.threeten.bp.chrono.g) {
                        org.threeten.bp.chrono.g gVar = (org.threeten.bp.chrono.g) resolve;
                        ZoneId zoneId = this.f56510c;
                        if (zoneId == null) {
                            this.f56510c = gVar.getZone();
                        } else if (!zoneId.equals(gVar.getZone())) {
                            throw new DateTimeException("ChronoZonedDateTime must use the effective parsed zone: " + this.f56510c);
                        }
                        resolve = gVar.toLocalDateTime();
                    }
                    if (resolve instanceof org.threeten.bp.chrono.b) {
                        u(key, (org.threeten.bp.chrono.b) resolve);
                    } else if (resolve instanceof LocalTime) {
                        t(key, (LocalTime) resolve);
                    } else if (resolve instanceof org.threeten.bp.chrono.c) {
                        org.threeten.bp.chrono.c cVar = (org.threeten.bp.chrono.c) resolve;
                        u(key, cVar.toLocalDate());
                        t(key, cVar.toLocalTime());
                    } else {
                        throw new DateTimeException("Unknown type: " + resolve.getClass().getName());
                    }
                } else if (!this.f56508a.containsKey(key)) {
                    break;
                }
                i9++;
            }
        }
        if (i9 != 100) {
            return i9 > 0;
        }
        throw new DateTimeException("Badly written field");
    }

    private void r() {
        if (this.f56512e == null) {
            if (this.f56508a.containsKey(ChronoField.INSTANT_SECONDS) || this.f56508a.containsKey(ChronoField.SECOND_OF_DAY) || this.f56508a.containsKey(ChronoField.SECOND_OF_MINUTE)) {
                Map<org.threeten.bp.temporal.g, Long> map = this.f56508a;
                ChronoField chronoField = ChronoField.NANO_OF_SECOND;
                if (map.containsKey(chronoField)) {
                    long longValue = this.f56508a.get(chronoField).longValue();
                    this.f56508a.put(ChronoField.MICRO_OF_SECOND, Long.valueOf(longValue / 1000));
                    this.f56508a.put(ChronoField.MILLI_OF_SECOND, Long.valueOf(longValue / 1000000));
                    return;
                }
                this.f56508a.put(chronoField, 0L);
                this.f56508a.put(ChronoField.MICRO_OF_SECOND, 0L);
                this.f56508a.put(ChronoField.MILLI_OF_SECOND, 0L);
            }
        }
    }

    private void s() {
        if (this.f56511d == null || this.f56512e == null) {
            return;
        }
        Long l10 = this.f56508a.get(ChronoField.OFFSET_SECONDS);
        if (l10 != null) {
            org.threeten.bp.chrono.g<?> atZone = this.f56511d.atTime(this.f56512e).atZone(ZoneOffset.ofTotalSeconds(l10.intValue()));
            ChronoField chronoField = ChronoField.INSTANT_SECONDS;
            this.f56508a.put(chronoField, Long.valueOf(atZone.getLong(chronoField)));
        } else if (this.f56510c != null) {
            org.threeten.bp.chrono.g<?> atZone2 = this.f56511d.atTime(this.f56512e).atZone(this.f56510c);
            ChronoField chronoField2 = ChronoField.INSTANT_SECONDS;
            this.f56508a.put(chronoField2, Long.valueOf(atZone2.getLong(chronoField2)));
        }
    }

    private void t(org.threeten.bp.temporal.g gVar, LocalTime localTime) {
        long nanoOfDay = localTime.toNanoOfDay();
        Long put = this.f56508a.put(ChronoField.NANO_OF_DAY, Long.valueOf(nanoOfDay));
        if (put == null || put.longValue() == nanoOfDay) {
            return;
        }
        throw new DateTimeException("Conflict found: " + LocalTime.ofNanoOfDay(put.longValue()) + " differs from " + localTime + " while resolving  " + gVar);
    }

    private void u(org.threeten.bp.temporal.g gVar, org.threeten.bp.chrono.b bVar) {
        if (this.f56509b.equals(bVar.getChronology())) {
            long epochDay = bVar.toEpochDay();
            Long put = this.f56508a.put(ChronoField.EPOCH_DAY, Long.valueOf(epochDay));
            if (put == null || put.longValue() == epochDay) {
                return;
            }
            throw new DateTimeException("Conflict found: " + LocalDate.ofEpochDay(put.longValue()) + " differs from " + LocalDate.ofEpochDay(epochDay) + " while resolving  " + gVar);
        }
        throw new DateTimeException("ChronoLocalDate must use the effective parsed chronology: " + this.f56509b);
    }

    private void v(ResolverStyle resolverStyle) {
        Map<org.threeten.bp.temporal.g, Long> map = this.f56508a;
        ChronoField chronoField = ChronoField.HOUR_OF_DAY;
        Long l10 = map.get(chronoField);
        Map<org.threeten.bp.temporal.g, Long> map2 = this.f56508a;
        ChronoField chronoField2 = ChronoField.MINUTE_OF_HOUR;
        Long l11 = map2.get(chronoField2);
        Map<org.threeten.bp.temporal.g, Long> map3 = this.f56508a;
        ChronoField chronoField3 = ChronoField.SECOND_OF_MINUTE;
        Long l12 = map3.get(chronoField3);
        Map<org.threeten.bp.temporal.g, Long> map4 = this.f56508a;
        ChronoField chronoField4 = ChronoField.NANO_OF_SECOND;
        Long l13 = map4.get(chronoField4);
        if (l10 == null) {
            return;
        }
        if (l11 != null || (l12 == null && l13 == null)) {
            if (l11 == null || l12 != null || l13 == null) {
                if (resolverStyle != ResolverStyle.LENIENT) {
                    if (resolverStyle == ResolverStyle.SMART && l10.longValue() == 24 && ((l11 == null || l11.longValue() == 0) && ((l12 == null || l12.longValue() == 0) && (l13 == null || l13.longValue() == 0)))) {
                        l10 = 0L;
                        this.f56514g = Period.ofDays(1);
                    }
                    int checkValidIntValue = chronoField.checkValidIntValue(l10.longValue());
                    if (l11 != null) {
                        int checkValidIntValue2 = chronoField2.checkValidIntValue(l11.longValue());
                        if (l12 != null) {
                            int checkValidIntValue3 = chronoField3.checkValidIntValue(l12.longValue());
                            if (l13 != null) {
                                b(LocalTime.of(checkValidIntValue, checkValidIntValue2, checkValidIntValue3, chronoField4.checkValidIntValue(l13.longValue())));
                            } else {
                                b(LocalTime.of(checkValidIntValue, checkValidIntValue2, checkValidIntValue3));
                            }
                        } else if (l13 == null) {
                            b(LocalTime.of(checkValidIntValue, checkValidIntValue2));
                        }
                    } else if (l12 == null && l13 == null) {
                        b(LocalTime.of(checkValidIntValue, 0));
                    }
                } else {
                    long longValue = l10.longValue();
                    if (l11 == null) {
                        int q10 = jl.d.q(jl.d.e(longValue, 24L));
                        b(LocalTime.of(jl.d.g(longValue, 24), 0));
                        this.f56514g = Period.ofDays(q10);
                    } else if (l12 != null) {
                        if (l13 == null) {
                            l13 = 0L;
                        }
                        long k10 = jl.d.k(jl.d.k(jl.d.k(jl.d.n(longValue, 3600000000000L), jl.d.n(l11.longValue(), 60000000000L)), jl.d.n(l12.longValue(), 1000000000L)), l13.longValue());
                        b(LocalTime.ofNanoOfDay(jl.d.h(k10, 86400000000000L)));
                        this.f56514g = Period.ofDays((int) jl.d.e(k10, 86400000000000L));
                    } else {
                        long k11 = jl.d.k(jl.d.n(longValue, 3600L), jl.d.n(l11.longValue(), 60L));
                        b(LocalTime.ofSecondOfDay(jl.d.h(k11, 86400L)));
                        this.f56514g = Period.ofDays((int) jl.d.e(k11, 86400L));
                    }
                }
                this.f56508a.remove(chronoField);
                this.f56508a.remove(chronoField2);
                this.f56508a.remove(chronoField3);
                this.f56508a.remove(chronoField4);
            }
        }
    }

    a a(org.threeten.bp.temporal.g gVar, long j10) {
        jl.d.i(gVar, "field");
        Long i9 = i(gVar);
        if (i9 != null && i9.longValue() != j10) {
            throw new DateTimeException("Conflict found: " + gVar + " " + i9 + " differs from " + gVar + " " + j10 + ": " + this);
        }
        return o(gVar, j10);
    }

    void b(LocalTime localTime) {
        this.f56512e = localTime;
    }

    void d(org.threeten.bp.chrono.b bVar) {
        this.f56511d = bVar;
    }

    public <R> R e(org.threeten.bp.temporal.i<R> iVar) {
        return iVar.a(this);
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(org.threeten.bp.temporal.g gVar) {
        jl.d.i(gVar, "field");
        Long i9 = i(gVar);
        if (i9 == null) {
            org.threeten.bp.chrono.b bVar = this.f56511d;
            if (bVar != null && bVar.isSupported(gVar)) {
                return this.f56511d.getLong(gVar);
            }
            LocalTime localTime = this.f56512e;
            if (localTime != null && localTime.isSupported(gVar)) {
                return this.f56512e.getLong(gVar);
            }
            throw new DateTimeException("Field not found: " + gVar);
        }
        return i9.longValue();
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(org.threeten.bp.temporal.g gVar) {
        org.threeten.bp.chrono.b bVar;
        LocalTime localTime;
        if (gVar == null) {
            return false;
        }
        return this.f56508a.containsKey(gVar) || ((bVar = this.f56511d) != null && bVar.isSupported(gVar)) || ((localTime = this.f56512e) != null && localTime.isSupported(gVar));
    }

    public a p(ResolverStyle resolverStyle, Set<org.threeten.bp.temporal.g> set) {
        org.threeten.bp.chrono.b bVar;
        if (set != null) {
            this.f56508a.keySet().retainAll(set);
        }
        k();
        j(resolverStyle);
        m(resolverStyle);
        if (q(resolverStyle)) {
            k();
            j(resolverStyle);
            m(resolverStyle);
        }
        v(resolverStyle);
        g();
        Period period = this.f56514g;
        if (period != null && !period.isZero() && (bVar = this.f56511d) != null && this.f56512e != null) {
            this.f56511d = bVar.plus((org.threeten.bp.temporal.f) this.f56514g);
            this.f56514g = Period.ZERO;
        }
        r();
        s();
        return this;
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(org.threeten.bp.temporal.i<R> iVar) {
        if (iVar == org.threeten.bp.temporal.h.g()) {
            return (R) this.f56510c;
        }
        if (iVar == org.threeten.bp.temporal.h.a()) {
            return (R) this.f56509b;
        }
        if (iVar == org.threeten.bp.temporal.h.b()) {
            org.threeten.bp.chrono.b bVar = this.f56511d;
            if (bVar != null) {
                return (R) LocalDate.from((org.threeten.bp.temporal.c) bVar);
            }
            return null;
        } else if (iVar == org.threeten.bp.temporal.h.c()) {
            return (R) this.f56512e;
        } else {
            if (iVar != org.threeten.bp.temporal.h.f() && iVar != org.threeten.bp.temporal.h.d()) {
                if (iVar == org.threeten.bp.temporal.h.e()) {
                    return null;
                }
                return iVar.a(this);
            }
            return iVar.a(this);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("DateTimeBuilder[");
        if (this.f56508a.size() > 0) {
            sb2.append("fields=");
            sb2.append(this.f56508a);
        }
        sb2.append(", ");
        sb2.append(this.f56509b);
        sb2.append(", ");
        sb2.append(this.f56510c);
        sb2.append(", ");
        sb2.append(this.f56511d);
        sb2.append(", ");
        sb2.append(this.f56512e);
        sb2.append(']');
        return sb2.toString();
    }
}
