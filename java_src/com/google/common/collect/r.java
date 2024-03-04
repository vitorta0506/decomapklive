package com.google.common.collect;

import java.lang.Comparable;
/* loaded from: classes2.dex */
abstract class r<C extends Comparable> implements e7<C> {
    @Override // com.google.common.collect.e7
    public void add(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    public void addAll(e7<C> e7Var) {
        addAll(e7Var.asRanges());
    }

    public /* synthetic */ void addAll(Iterable iterable) {
        d7.a(this, iterable);
    }

    public void clear() {
        remove(Range.all());
    }

    public boolean contains(C c10) {
        return rangeContaining(c10) != null;
    }

    @Override // com.google.common.collect.e7
    public abstract boolean encloses(Range<C> range);

    public boolean enclosesAll(e7<C> e7Var) {
        return enclosesAll(e7Var.asRanges());
    }

    public /* synthetic */ boolean enclosesAll(Iterable iterable) {
        return d7.b(this, iterable);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e7) {
            return asRanges().equals(((e7) obj).asRanges());
        }
        return false;
    }

    public final int hashCode() {
        return asRanges().hashCode();
    }

    public boolean intersects(Range<C> range) {
        return !subRangeSet(range).isEmpty();
    }

    @Override // com.google.common.collect.e7
    public boolean isEmpty() {
        return asRanges().isEmpty();
    }

    public abstract Range<C> rangeContaining(C c10);

    @Override // com.google.common.collect.e7
    public void remove(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.e7
    public void removeAll(e7<C> e7Var) {
        removeAll(e7Var.asRanges());
    }

    public /* synthetic */ void removeAll(Iterable iterable) {
        d7.c(this, iterable);
    }

    public final String toString() {
        return asRanges().toString();
    }
}
