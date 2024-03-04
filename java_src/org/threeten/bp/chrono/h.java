package org.threeten.bp.chrono;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.List;
import org.threeten.bp.Instant;
import org.threeten.bp.LocalDateTime;
import org.threeten.bp.ZoneId;
import org.threeten.bp.ZoneOffset;
import org.threeten.bp.chrono.b;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.zone.ZoneOffsetTransition;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class h<D extends b> extends g<D> implements Serializable {
    private static final long serialVersionUID = -5261813987200935591L;

    /* renamed from: a  reason: collision with root package name */
    private final d<D> f56501a;

    /* renamed from: b  reason: collision with root package name */
    private final ZoneOffset f56502b;

    /* renamed from: c  reason: collision with root package name */
    private final ZoneId f56503c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56504a;

        static {
            int[] iArr = new int[ChronoField.values().length];
            f56504a = iArr;
            try {
                iArr[ChronoField.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56504a[ChronoField.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private h(d<D> dVar, ZoneOffset zoneOffset, ZoneId zoneId) {
        this.f56501a = (d) jl.d.i(dVar, "dateTime");
        this.f56502b = (ZoneOffset) jl.d.i(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        this.f56503c = (ZoneId) jl.d.i(zoneId, "zone");
    }

    private h<D> a(Instant instant, ZoneId zoneId) {
        return d(toLocalDate().getChronology(), instant, zoneId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R extends b> g<R> b(d<R> dVar, ZoneId zoneId, ZoneOffset zoneOffset) {
        jl.d.i(dVar, "localDateTime");
        jl.d.i(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new h(dVar, (ZoneOffset) zoneId, zoneId);
        }
        org.threeten.bp.zone.d rules = zoneId.getRules();
        LocalDateTime from = LocalDateTime.from((org.threeten.bp.temporal.c) dVar);
        List<ZoneOffset> c10 = rules.c(from);
        if (c10.size() == 1) {
            zoneOffset = c10.get(0);
        } else if (c10.size() == 0) {
            ZoneOffsetTransition b10 = rules.b(from);
            dVar = dVar.h(b10.getDuration().getSeconds());
            zoneOffset = b10.getOffsetAfter();
        } else if (zoneOffset == null || !c10.contains(zoneOffset)) {
            zoneOffset = c10.get(0);
        }
        jl.d.i(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        return new h(dVar, zoneOffset, zoneId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R extends b> h<R> d(i iVar, Instant instant, ZoneId zoneId) {
        ZoneOffset a10 = zoneId.getRules().a(instant);
        jl.d.i(a10, TypedValues.CycleType.S_WAVE_OFFSET);
        return new h<>((d) iVar.localDateTime(LocalDateTime.ofEpochSecond(instant.getEpochSecond(), instant.getNano(), a10)), a10, zoneId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g<?> e(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        return (g<D>) ((c) objectInput.readObject()).atZone((ZoneOffset) objectInput.readObject()).withZoneSameLocal((ZoneId) objectInput.readObject());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new k((byte) 13, this);
    }

    @Override // org.threeten.bp.chrono.g
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && compareTo((g) obj) == 0;
    }

    @Override // org.threeten.bp.chrono.g
    public ZoneOffset getOffset() {
        return this.f56502b;
    }

    @Override // org.threeten.bp.chrono.g
    public ZoneId getZone() {
        return this.f56503c;
    }

    @Override // org.threeten.bp.chrono.g
    public int hashCode() {
        return (toLocalDateTime().hashCode() ^ getOffset().hashCode()) ^ Integer.rotateLeft(getZone().hashCode(), 3);
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(org.threeten.bp.temporal.g gVar) {
        return (gVar instanceof ChronoField) || (gVar != null && gVar.isSupportedBy(this));
    }

    @Override // org.threeten.bp.chrono.g
    public c<D> toLocalDateTime() {
        return this.f56501a;
    }

    @Override // org.threeten.bp.chrono.g
    public String toString() {
        String str = toLocalDateTime().toString() + getOffset().toString();
        if (getOffset() != getZone()) {
            return str + '[' + getZone().toString() + ']';
        }
        return str;
    }

    @Override // org.threeten.bp.temporal.b
    public long until(org.threeten.bp.temporal.b bVar, org.threeten.bp.temporal.j jVar) {
        g<?> zonedDateTime = toLocalDate().getChronology().zonedDateTime(bVar);
        if (jVar instanceof ChronoUnit) {
            return this.f56501a.until(zonedDateTime.withZoneSameInstant(this.f56502b).toLocalDateTime(), jVar);
        }
        return jVar.between(this, zonedDateTime);
    }

    @Override // org.threeten.bp.chrono.g
    public g<D> withEarlierOffsetAtOverlap() {
        ZoneOffsetTransition b10 = getZone().getRules().b(LocalDateTime.from((org.threeten.bp.temporal.c) this));
        if (b10 != null && b10.isOverlap()) {
            ZoneOffset offsetBefore = b10.getOffsetBefore();
            if (!offsetBefore.equals(this.f56502b)) {
                return new h(this.f56501a, offsetBefore, this.f56503c);
            }
        }
        return this;
    }

    @Override // org.threeten.bp.chrono.g
    public g<D> withLaterOffsetAtOverlap() {
        ZoneOffsetTransition b10 = getZone().getRules().b(LocalDateTime.from((org.threeten.bp.temporal.c) this));
        if (b10 != null) {
            ZoneOffset offsetAfter = b10.getOffsetAfter();
            if (!offsetAfter.equals(getOffset())) {
                return new h(this.f56501a, offsetAfter, this.f56503c);
            }
        }
        return this;
    }

    @Override // org.threeten.bp.chrono.g
    public g<D> withZoneSameInstant(ZoneId zoneId) {
        jl.d.i(zoneId, "zone");
        return this.f56503c.equals(zoneId) ? this : a(this.f56501a.toInstant(this.f56502b), zoneId);
    }

    @Override // org.threeten.bp.chrono.g
    public g<D> withZoneSameLocal(ZoneId zoneId) {
        return b(this.f56501a, zoneId, this.f56502b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.f56501a);
        objectOutput.writeObject(this.f56502b);
        objectOutput.writeObject(this.f56503c);
    }

    @Override // org.threeten.bp.chrono.g, org.threeten.bp.temporal.b
    public g<D> plus(long j10, org.threeten.bp.temporal.j jVar) {
        if (jVar instanceof ChronoUnit) {
            return with((org.threeten.bp.temporal.d) this.f56501a.plus(j10, jVar));
        }
        return toLocalDate().getChronology().ensureChronoZonedDateTime(jVar.addTo(this, j10));
    }

    @Override // org.threeten.bp.chrono.g, org.threeten.bp.temporal.b
    public g<D> with(org.threeten.bp.temporal.g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) gVar;
            int i9 = a.f56504a[chronoField.ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    return b(this.f56501a.with(gVar, j10), this.f56503c, this.f56502b);
                }
                return a(this.f56501a.toInstant(ZoneOffset.ofTotalSeconds(chronoField.checkValidIntValue(j10))), this.f56503c);
            }
            return plus(j10 - toEpochSecond(), (org.threeten.bp.temporal.j) ChronoUnit.SECONDS);
        }
        return toLocalDate().getChronology().ensureChronoZonedDateTime(gVar.adjustInto(this, j10));
    }
}
