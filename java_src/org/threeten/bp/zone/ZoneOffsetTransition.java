package org.threeten.bp.zone;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.threeten.bp.Duration;
import org.threeten.bp.Instant;
import org.threeten.bp.LocalDateTime;
import org.threeten.bp.ZoneOffset;
/* loaded from: classes7.dex */
public final class ZoneOffsetTransition implements Comparable<ZoneOffsetTransition>, Serializable {
    private static final long serialVersionUID = -6946044323557704546L;
    private final ZoneOffset offsetAfter;
    private final ZoneOffset offsetBefore;
    private final LocalDateTime transition;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZoneOffsetTransition(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.transition = localDateTime;
        this.offsetBefore = zoneOffset;
        this.offsetAfter = zoneOffset2;
    }

    private int getDurationSeconds() {
        return getOffsetAfter().getTotalSeconds() - getOffsetBefore().getTotalSeconds();
    }

    public static ZoneOffsetTransition of(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        jl.d.i(localDateTime, "transition");
        jl.d.i(zoneOffset, "offsetBefore");
        jl.d.i(zoneOffset2, "offsetAfter");
        if (!zoneOffset.equals(zoneOffset2)) {
            if (localDateTime.getNano() == 0) {
                return new ZoneOffsetTransition(localDateTime, zoneOffset, zoneOffset2);
            }
            throw new IllegalArgumentException("Nano-of-second must be zero");
        }
        throw new IllegalArgumentException("Offsets must not be equal");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ZoneOffsetTransition readExternal(DataInput dataInput) throws IOException {
        long b10 = a.b(dataInput);
        ZoneOffset d10 = a.d(dataInput);
        ZoneOffset d11 = a.d(dataInput);
        if (!d10.equals(d11)) {
            return new ZoneOffsetTransition(b10, d10, d11);
        }
        throw new IllegalArgumentException("Offsets must not be equal");
    }

    private Object writeReplace() {
        return new a((byte) 2, this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ZoneOffsetTransition) {
            ZoneOffsetTransition zoneOffsetTransition = (ZoneOffsetTransition) obj;
            return this.transition.equals(zoneOffsetTransition.transition) && this.offsetBefore.equals(zoneOffsetTransition.offsetBefore) && this.offsetAfter.equals(zoneOffsetTransition.offsetAfter);
        }
        return false;
    }

    public LocalDateTime getDateTimeAfter() {
        return this.transition.plusSeconds(getDurationSeconds());
    }

    public LocalDateTime getDateTimeBefore() {
        return this.transition;
    }

    public Duration getDuration() {
        return Duration.ofSeconds(getDurationSeconds());
    }

    public Instant getInstant() {
        return this.transition.toInstant(this.offsetBefore);
    }

    public ZoneOffset getOffsetAfter() {
        return this.offsetAfter;
    }

    public ZoneOffset getOffsetBefore() {
        return this.offsetBefore;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ZoneOffset> getValidOffsets() {
        return isGap() ? Collections.emptyList() : Arrays.asList(getOffsetBefore(), getOffsetAfter());
    }

    public int hashCode() {
        return (this.transition.hashCode() ^ this.offsetBefore.hashCode()) ^ Integer.rotateLeft(this.offsetAfter.hashCode(), 16);
    }

    public boolean isGap() {
        return getOffsetAfter().getTotalSeconds() > getOffsetBefore().getTotalSeconds();
    }

    public boolean isOverlap() {
        return getOffsetAfter().getTotalSeconds() < getOffsetBefore().getTotalSeconds();
    }

    public boolean isValidOffset(ZoneOffset zoneOffset) {
        if (isGap()) {
            return false;
        }
        return getOffsetBefore().equals(zoneOffset) || getOffsetAfter().equals(zoneOffset);
    }

    public long toEpochSecond() {
        return this.transition.toEpochSecond(this.offsetBefore);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Transition[");
        sb2.append(isGap() ? "Gap" : "Overlap");
        sb2.append(" at ");
        sb2.append(this.transition);
        sb2.append(this.offsetBefore);
        sb2.append(" to ");
        sb2.append(this.offsetAfter);
        sb2.append(']');
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        a.e(toEpochSecond(), dataOutput);
        a.g(this.offsetBefore, dataOutput);
        a.g(this.offsetAfter, dataOutput);
    }

    @Override // java.lang.Comparable
    public int compareTo(ZoneOffsetTransition zoneOffsetTransition) {
        return getInstant().compareTo(zoneOffsetTransition.getInstant());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZoneOffsetTransition(long j10, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.transition = LocalDateTime.ofEpochSecond(j10, 0, zoneOffset);
        this.offsetBefore = zoneOffset;
        this.offsetAfter = zoneOffset2;
    }
}
