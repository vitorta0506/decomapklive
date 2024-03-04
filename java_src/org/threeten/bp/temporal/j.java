package org.threeten.bp.temporal;

import org.threeten.bp.Duration;
/* loaded from: classes7.dex */
public interface j {
    <R extends b> R addTo(R r10, long j10);

    long between(b bVar, b bVar2);

    Duration getDuration();

    boolean isDateBased();

    boolean isDurationEstimated();

    boolean isSupportedBy(b bVar);

    boolean isTimeBased();
}
