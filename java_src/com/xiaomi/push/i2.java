package com.xiaomi.push;

import androidx.core.app.FrameMetricsAggregator;
import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import kotlin.UByte;
/* loaded from: classes5.dex */
public final class i2 {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator f36919a = new a();

    /* loaded from: classes5.dex */
    private static class a implements Comparator {
        private a() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == null && obj2 == null) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            return obj instanceof List ? i2.g((List) obj, (List) obj2) : obj instanceof Set ? i2.i((Set) obj, (Set) obj2) : obj instanceof Map ? i2.h((Map) obj, (Map) obj2) : obj instanceof byte[] ? i2.l((byte[]) obj, (byte[]) obj2) : i2.d((Comparable) obj, (Comparable) obj2);
        }
    }

    public static int a(byte b10, byte b11) {
        if (b10 < b11) {
            return -1;
        }
        return b11 < b10 ? 1 : 0;
    }

    public static int b(int i9, int i10) {
        if (i9 < i10) {
            return -1;
        }
        return i10 < i9 ? 1 : 0;
    }

    public static int c(long j10, long j11) {
        if (j10 < j11) {
            return -1;
        }
        return j11 < j10 ? 1 : 0;
    }

    public static int d(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    public static int e(String str, String str2) {
        return str.compareTo(str2);
    }

    public static int f(ByteBuffer byteBuffer, byte[] bArr, int i9) {
        int remaining = byteBuffer.remaining();
        System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), bArr, i9, remaining);
        return remaining;
    }

    public static int g(List list, List list2) {
        int b10 = b(list.size(), list2.size());
        if (b10 != 0) {
            return b10;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            int compare = f36919a.compare(list.get(i9), list2.get(i9));
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    public static int h(Map map, Map map2) {
        int b10 = b(map.size(), map2.size());
        if (b10 != 0) {
            return b10;
        }
        Comparator comparator = f36919a;
        TreeMap treeMap = new TreeMap(comparator);
        treeMap.putAll(map);
        Iterator it = treeMap.entrySet().iterator();
        TreeMap treeMap2 = new TreeMap(comparator);
        treeMap2.putAll(map2);
        Iterator it2 = treeMap2.entrySet().iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Map.Entry entry2 = (Map.Entry) it2.next();
            Comparator comparator2 = f36919a;
            int compare = comparator2.compare(entry.getKey(), entry2.getKey());
            if (compare != 0) {
                return compare;
            }
            int compare2 = comparator2.compare(entry.getValue(), entry2.getValue());
            if (compare2 != 0) {
                return compare2;
            }
        }
        return 0;
    }

    public static int i(Set set, Set set2) {
        int b10 = b(set.size(), set2.size());
        if (b10 != 0) {
            return b10;
        }
        Comparator comparator = f36919a;
        TreeSet treeSet = new TreeSet(comparator);
        treeSet.addAll(set);
        TreeSet treeSet2 = new TreeSet(comparator);
        treeSet2.addAll(set2);
        Iterator it = treeSet.iterator();
        Iterator it2 = treeSet2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            int compare = f36919a.compare(it.next(), it2.next());
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    public static int j(short s10, short s11) {
        if (s10 < s11) {
            return -1;
        }
        return s11 < s10 ? 1 : 0;
    }

    public static int k(boolean z10, boolean z11) {
        return Boolean.valueOf(z10).compareTo(Boolean.valueOf(z11));
    }

    public static int l(byte[] bArr, byte[] bArr2) {
        int b10 = b(bArr.length, bArr2.length);
        if (b10 != 0) {
            return b10;
        }
        for (int i9 = 0; i9 < bArr.length; i9++) {
            int a10 = a(bArr[i9], bArr2[i9]);
            if (a10 != 0) {
                return a10;
            }
        }
        return 0;
    }

    public static String m(byte b10) {
        return Integer.toHexString((b10 | UByte.MIN_VALUE) & FrameMetricsAggregator.EVERY_DURATION).toUpperCase().substring(1);
    }

    public static ByteBuffer n(ByteBuffer byteBuffer) {
        return p(byteBuffer) ? byteBuffer : ByteBuffer.wrap(q(byteBuffer));
    }

    public static void o(ByteBuffer byteBuffer, StringBuilder sb2) {
        byte[] array = byteBuffer.array();
        int arrayOffset = byteBuffer.arrayOffset();
        int limit = byteBuffer.limit();
        int i9 = limit - arrayOffset > 128 ? arrayOffset + 128 : limit;
        for (int i10 = arrayOffset; i10 < i9; i10++) {
            if (i10 > arrayOffset) {
                sb2.append(" ");
            }
            sb2.append(m(array[i10]));
        }
        if (limit != i9) {
            sb2.append("...");
        }
    }

    public static boolean p(ByteBuffer byteBuffer) {
        return byteBuffer.hasArray() && byteBuffer.position() == 0 && byteBuffer.arrayOffset() == 0 && byteBuffer.remaining() == byteBuffer.capacity();
    }

    public static byte[] q(ByteBuffer byteBuffer) {
        if (p(byteBuffer)) {
            return byteBuffer.array();
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        f(byteBuffer, bArr, 0);
        return bArr;
    }
}
