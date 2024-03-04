package org.threeten.bp.temporal;

import org.threeten.bp.Duration;
/* loaded from: classes7.dex */
public enum ChronoUnit implements j {
    NANOS("Nanos", Duration.ofNanos(1)),
    MICROS("Micros", Duration.ofNanos(1000)),
    MILLIS("Millis", Duration.ofNanos(1000000)),
    SECONDS("Seconds", Duration.ofSeconds(1)),
    MINUTES("Minutes", Duration.ofSeconds(60)),
    HOURS("Hours", Duration.ofSeconds(3600)),
    HALF_DAYS("HalfDays", Duration.ofSeconds(43200)),
    DAYS("Days", Duration.ofSeconds(86400)),
    WEEKS("Weeks", Duration.ofSeconds(604800)),
    MONTHS("Months", Duration.ofSeconds(2629746)),
    YEARS("Years", Duration.ofSeconds(31556952)),
    DECADES("Decades", Duration.ofSeconds(315569520)),
    CENTURIES("Centuries", Duration.ofSeconds(3155695200L)),
    MILLENNIA("Millennia", Duration.ofSeconds(31556952000L)),
    ERAS("Eras", Duration.ofSeconds(31556952000000000L)),
    FOREVER("Forever", Duration.ofSeconds(Long.MAX_VALUE, 999999999));
    
    private final Duration duration;
    private final String name;

    ChronoUnit(String str, Duration duration) {
        this.name = str;
        this.duration = duration;
    }

    @Override // org.threeten.bp.temporal.j
    public <R extends b> R addTo(R r10, long j10) {
        return (R) r10.plus(j10, this);
    }

    @Override // org.threeten.bp.temporal.j
    public long between(b bVar, b bVar2) {
        return bVar.until(bVar2, this);
    }

    @Override // org.threeten.bp.temporal.j
    public Duration getDuration() {
        return this.duration;
    }

    @Override // org.threeten.bp.temporal.j
    public boolean isDateBased() {
        return compareTo(DAYS) >= 0 && this != FOREVER;
    }

    @Override // org.threeten.bp.temporal.j
    public boolean isDurationEstimated() {
        return isDateBased() || this == FOREVER;
    }

    @Override // org.threeten.bp.temporal.j
    public boolean isSupportedBy(b bVar) {
        if (this == FOREVER) {
            return false;
        }
        if (bVar instanceof org.threeten.bp.chrono.b) {
            return isDateBased();
        }
        if ((bVar instanceof org.threeten.bp.chrono.c) || (bVar instanceof org.threeten.bp.chrono.g)) {
            return true;
        }
        try {
            bVar.plus(1L, this);
            return true;
        } catch (RuntimeException unused) {
            try {
                bVar.plus(-1L, this);
                return true;
            } catch (RuntimeException unused2) {
                return false;
            }
        }
    }

    @Override // org.threeten.bp.temporal.j
    public boolean isTimeBased() {
        return compareTo(DAYS) < 0;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
