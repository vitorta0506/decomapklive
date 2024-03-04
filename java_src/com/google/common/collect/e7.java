package com.google.common.collect;

import java.lang.Comparable;
import java.util.Set;
/* loaded from: classes2.dex */
public interface e7<C extends Comparable> {
    void add(Range<C> range);

    Set<Range<C>> asRanges();

    e7<C> complement();

    boolean encloses(Range<C> range);

    boolean isEmpty();

    void remove(Range<C> range);

    void removeAll(e7<C> e7Var);

    e7<C> subRangeSet(Range<C> range);
}
