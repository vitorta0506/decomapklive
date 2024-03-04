package com.google.common.util.concurrent;

import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongUnaryOperator;
import java.util.function.Predicate;
import java.util.function.ToLongFunction;
/* loaded from: classes2.dex */
public final class AtomicLongMap<K> implements Serializable {
    private transient Map<K, Long> asMap;
    private final ConcurrentHashMap<K, Long> map;

    private AtomicLongMap(ConcurrentHashMap<K, Long> concurrentHashMap) {
        this.map = (ConcurrentHashMap) com.google.common.base.o.s(concurrentHashMap);
    }

    public static <K> AtomicLongMap<K> create() {
        return new AtomicLongMap<>(new ConcurrentHashMap());
    }

    private Map<K, Long> createAsMap() {
        return Collections.unmodifiableMap(this.map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$getAndUpdate$1(AtomicLong atomicLong, LongUnaryOperator longUnaryOperator, Object obj, Long l10) {
        long longValue = l10 == null ? 0L : l10.longValue();
        atomicLong.set(longValue);
        return Long.valueOf(longUnaryOperator.applyAsLong(longValue));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ long lambda$put$4(long j10, long j11) {
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$putIfAbsent$6(AtomicBoolean atomicBoolean, long j10, Object obj, Long l10) {
        if (l10 == null || l10.longValue() == 0) {
            atomicBoolean.set(true);
            return Long.valueOf(j10);
        }
        return l10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$removeAllZeros$5(Long l10) {
        return l10.longValue() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$updateAndGet$0(LongUnaryOperator longUnaryOperator, Object obj, Long l10) {
        return Long.valueOf(longUnaryOperator.applyAsLong(l10 == null ? 0L : l10.longValue()));
    }

    public long accumulateAndGet(K k10, final long j10, final LongBinaryOperator longBinaryOperator) {
        com.google.common.base.o.s(longBinaryOperator);
        return updateAndGet(k10, new LongUnaryOperator() { // from class: com.google.common.util.concurrent.p
            @Override // java.util.function.LongUnaryOperator
            public final long applyAsLong(long j11) {
                long applyAsLong;
                applyAsLong = longBinaryOperator.applyAsLong(j11, j10);
                return applyAsLong;
            }
        });
    }

    public long addAndGet(K k10, long j10) {
        return accumulateAndGet(k10, j10, m.f13785a);
    }

    public Map<K, Long> asMap() {
        Map<K, Long> map = this.asMap;
        if (map == null) {
            Map<K, Long> createAsMap = createAsMap();
            this.asMap = createAsMap;
            return createAsMap;
        }
        return map;
    }

    public void clear() {
        this.map.clear();
    }

    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    public long decrementAndGet(K k10) {
        return addAndGet(k10, -1L);
    }

    public long get(K k10) {
        return this.map.getOrDefault(k10, 0L).longValue();
    }

    public long getAndAccumulate(K k10, final long j10, final LongBinaryOperator longBinaryOperator) {
        com.google.common.base.o.s(longBinaryOperator);
        return getAndUpdate(k10, new LongUnaryOperator() { // from class: com.google.common.util.concurrent.o
            @Override // java.util.function.LongUnaryOperator
            public final long applyAsLong(long j11) {
                long applyAsLong;
                applyAsLong = longBinaryOperator.applyAsLong(j11, j10);
                return applyAsLong;
            }
        });
    }

    public long getAndAdd(K k10, long j10) {
        return getAndAccumulate(k10, j10, m.f13785a);
    }

    public long getAndDecrement(K k10) {
        return getAndAdd(k10, -1L);
    }

    public long getAndIncrement(K k10) {
        return getAndAdd(k10, 1L);
    }

    public long getAndUpdate(K k10, final LongUnaryOperator longUnaryOperator) {
        com.google.common.base.o.s(longUnaryOperator);
        final AtomicLong atomicLong = new AtomicLong();
        this.map.compute(k10, new BiFunction() { // from class: com.google.common.util.concurrent.k
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Long lambda$getAndUpdate$1;
                lambda$getAndUpdate$1 = AtomicLongMap.lambda$getAndUpdate$1(atomicLong, longUnaryOperator, obj, (Long) obj2);
                return lambda$getAndUpdate$1;
            }
        });
        return atomicLong.get();
    }

    public long incrementAndGet(K k10) {
        return addAndGet(k10, 1L);
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    public long put(K k10, final long j10) {
        return getAndUpdate(k10, new LongUnaryOperator() { // from class: com.google.common.util.concurrent.n
            @Override // java.util.function.LongUnaryOperator
            public final long applyAsLong(long j11) {
                long lambda$put$4;
                lambda$put$4 = AtomicLongMap.lambda$put$4(j10, j11);
                return lambda$put$4;
            }
        });
    }

    public void putAll(Map<? extends K, ? extends Long> map) {
        map.forEach(new BiConsumer() { // from class: com.google.common.util.concurrent.i
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                AtomicLongMap.this.put(obj, ((Long) obj2).longValue());
            }
        });
    }

    long putIfAbsent(K k10, final long j10) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Long compute = this.map.compute(k10, new BiFunction() { // from class: com.google.common.util.concurrent.j
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Long lambda$putIfAbsent$6;
                lambda$putIfAbsent$6 = AtomicLongMap.lambda$putIfAbsent$6(atomicBoolean, j10, obj, (Long) obj2);
                return lambda$putIfAbsent$6;
            }
        });
        if (atomicBoolean.get()) {
            return 0L;
        }
        return compute.longValue();
    }

    public long remove(K k10) {
        Long remove = this.map.remove(k10);
        if (remove == null) {
            return 0L;
        }
        return remove.longValue();
    }

    public void removeAllZeros() {
        this.map.values().removeIf(new Predicate() { // from class: com.google.common.util.concurrent.q
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$removeAllZeros$5;
                lambda$removeAllZeros$5 = AtomicLongMap.lambda$removeAllZeros$5((Long) obj);
                return lambda$removeAllZeros$5;
            }
        });
    }

    public boolean removeIfZero(K k10) {
        return remove(k10, 0L);
    }

    boolean replace(K k10, long j10, long j11) {
        if (j10 == 0) {
            return putIfAbsent(k10, j11) == 0;
        }
        return this.map.replace(k10, Long.valueOf(j10), Long.valueOf(j11));
    }

    public int size() {
        return this.map.size();
    }

    public long sum() {
        return this.map.values().stream().mapToLong(new ToLongFunction() { // from class: com.google.common.util.concurrent.r
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        }).sum();
    }

    public String toString() {
        return this.map.toString();
    }

    public long updateAndGet(K k10, final LongUnaryOperator longUnaryOperator) {
        com.google.common.base.o.s(longUnaryOperator);
        return this.map.compute(k10, new BiFunction() { // from class: com.google.common.util.concurrent.l
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Long lambda$updateAndGet$0;
                lambda$updateAndGet$0 = AtomicLongMap.lambda$updateAndGet$0(longUnaryOperator, obj, (Long) obj2);
                return lambda$updateAndGet$0;
            }
        }).longValue();
    }

    public static <K> AtomicLongMap<K> create(Map<? extends K, ? extends Long> map) {
        AtomicLongMap<K> create = create();
        create.putAll(map);
        return create;
    }

    boolean remove(K k10, long j10) {
        return this.map.remove(k10, Long.valueOf(j10));
    }
}
