package com.google.common.collect;

import java.util.Collection;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
/* loaded from: classes2.dex */
public final class p8 {
    public static <T> Stream<T> a(Iterable<T> iterable) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).stream();
        }
        return StreamSupport.stream(iterable.spliterator(), false);
    }
}
