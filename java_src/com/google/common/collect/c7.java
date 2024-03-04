package com.google.common.collect;

import java.lang.Comparable;
import java.util.Map;
/* loaded from: classes2.dex */
public interface c7<K extends Comparable, V> {
    Map<Range<K>, V> asMapOfRanges();
}
