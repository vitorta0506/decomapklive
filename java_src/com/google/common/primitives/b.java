package com.google.common.primitives;

import com.google.common.base.o;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class b extends c {

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f13631a = c();

    /* loaded from: classes2.dex */
    private static class a extends AbstractList<Double> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final double[] f13632a;

        /* renamed from: b  reason: collision with root package name */
        final int f13633b;

        /* renamed from: c  reason: collision with root package name */
        final int f13634c;

        a(double[] dArr, int i9, int i10) {
            this.f13632a = dArr;
            this.f13633b = i9;
            this.f13634c = i10;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: c */
        public Double get(int i9) {
            o.q(i9, size());
            return Double.valueOf(this.f13632a[this.f13633b + i9]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Double) && b.e(this.f13632a, ((Double) obj).doubleValue(), this.f13633b, this.f13634c) != -1;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d */
        public Double set(int i9, Double d10) {
            o.q(i9, size());
            double[] dArr = this.f13632a;
            int i10 = this.f13633b;
            double d11 = dArr[i10 + i9];
            dArr[i10 + i9] = ((Double) o.s(d10)).doubleValue();
            return Double.valueOf(d11);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                int size = size();
                if (aVar.size() != size) {
                    return false;
                }
                for (int i9 = 0; i9 < size; i9++) {
                    if (this.f13632a[this.f13633b + i9] != aVar.f13632a[aVar.f13633b + i9]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        /* renamed from: f */
        public Spliterator.OfDouble spliterator() {
            return Spliterators.spliterator(this.f13632a, this.f13633b, this.f13634c, 0);
        }

        double[] g() {
            return Arrays.copyOfRange(this.f13632a, this.f13633b, this.f13634c);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i9 = 1;
            for (int i10 = this.f13633b; i10 < this.f13634c; i10++) {
                i9 = (i9 * 31) + b.d(this.f13632a[i10]);
            }
            return i9;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int e10;
            if (!(obj instanceof Double) || (e10 = b.e(this.f13632a, ((Double) obj).doubleValue(), this.f13633b, this.f13634c)) < 0) {
                return -1;
            }
            return e10 - this.f13633b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int g10;
            if (!(obj instanceof Double) || (g10 = b.g(this.f13632a, ((Double) obj).doubleValue(), this.f13633b, this.f13634c)) < 0) {
                return -1;
            }
            return g10 - this.f13633b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13634c - this.f13633b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i9, int i10) {
            o.y(i9, i10, size());
            if (i9 == i10) {
                return Collections.emptyList();
            }
            double[] dArr = this.f13632a;
            int i11 = this.f13633b;
            return new a(dArr, i9 + i11, i11 + i10);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 12);
            sb2.append('[');
            sb2.append(this.f13632a[this.f13633b]);
            int i9 = this.f13633b;
            while (true) {
                i9++;
                if (i9 < this.f13634c) {
                    sb2.append(", ");
                    sb2.append(this.f13632a[i9]);
                } else {
                    sb2.append(']');
                    return sb2.toString();
                }
            }
        }
    }

    private static Pattern c() {
        String concat = "(?:\\d+#(?:\\.\\d*#)?|\\.\\d+#)".concat("(?:[eE][+-]?\\d+#)?[fFdD]?");
        StringBuilder sb2 = new StringBuilder("(?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)".length() + 25);
        sb2.append("0[xX]");
        sb2.append("(?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)");
        sb2.append("[pP][+-]?\\d+#[fFdD]?");
        String sb3 = sb2.toString();
        StringBuilder sb4 = new StringBuilder(String.valueOf(concat).length() + 23 + String.valueOf(sb3).length());
        sb4.append("[+-]?(?:NaN|Infinity|");
        sb4.append(concat);
        sb4.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        sb4.append(sb3);
        sb4.append(")");
        return Pattern.compile(sb4.toString().replace("#", "+"));
    }

    public static int d(double d10) {
        return Double.valueOf(d10).hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int e(double[] dArr, double d10, int i9, int i10) {
        while (i9 < i10) {
            if (dArr[i9] == d10) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    public static boolean f(double d10) {
        return Double.NEGATIVE_INFINITY < d10 && d10 < Double.POSITIVE_INFINITY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(double[] dArr, double d10, int i9, int i10) {
        for (int i11 = i10 - 1; i11 >= i9; i11--) {
            if (dArr[i11] == d10) {
                return i11;
            }
        }
        return -1;
    }

    public static double[] h(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).g();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        double[] dArr = new double[length];
        for (int i9 = 0; i9 < length; i9++) {
            dArr[i9] = ((Number) o.s(array[i9])).doubleValue();
        }
        return dArr;
    }
}
