package com.google.common.collect;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
final class a7 {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f12908a = Logger.getLogger(a7.class.getName());

    private a7() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] a(Object[] objArr, int i9, int i10, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i9, i10, tArr.getClass());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] b(T[] tArr, int i9) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> c(int i9) {
        return d6.n(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Set<E> d(int i9) {
        return w7.k(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> e(int i9) {
        return d6.q(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Set<E> f(int i9) {
        return w7.n(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Set<E> g() {
        return w7.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> h() {
        return d6.p();
    }
}
