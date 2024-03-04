package org.threeten.bp.temporal;

import java.util.Map;
import org.threeten.bp.format.ResolverStyle;
/* loaded from: classes7.dex */
public interface g {
    <R extends b> R adjustInto(R r10, long j10);

    long getFrom(c cVar);

    boolean isDateBased();

    boolean isSupportedBy(c cVar);

    boolean isTimeBased();

    ValueRange range();

    ValueRange rangeRefinedBy(c cVar);

    c resolve(Map<g, Long> map, c cVar, ResolverStyle resolverStyle);
}
