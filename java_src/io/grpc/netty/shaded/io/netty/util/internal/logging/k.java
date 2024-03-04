package io.grpc.netty.shaded.io.netty.util.internal.logging;

import java.io.PrintStream;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes5.dex */
final class k {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(String str, Object[] objArr) {
        if (objArr != null && objArr.length != 0) {
            int length = objArr.length - 1;
            Object obj = objArr[length];
            Throwable th2 = obj instanceof Throwable ? (Throwable) obj : null;
            if (str == null) {
                return new a(null, th2);
            }
            int indexOf = str.indexOf("{}");
            if (indexOf == -1) {
                return new a(str, th2);
            }
            StringBuilder sb2 = new StringBuilder(str.length() + 50);
            int i9 = 0;
            int i10 = 0;
            do {
                boolean z10 = indexOf == 0 || str.charAt(indexOf + (-1)) != '\\';
                if (z10) {
                    sb2.append((CharSequence) str, i9, indexOf);
                } else {
                    sb2.append((CharSequence) str, i9, indexOf - 1);
                    z10 = indexOf >= 2 && str.charAt(indexOf + (-2)) == '\\';
                }
                i9 = indexOf + 2;
                if (z10) {
                    e(sb2, objArr[i10], null);
                    i10++;
                    if (i10 > length) {
                        break;
                    }
                } else {
                    sb2.append("{}");
                }
                indexOf = str.indexOf("{}", i9);
            } while (indexOf != -1);
            sb2.append((CharSequence) str, i9, str.length());
            return new a(sb2.toString(), i10 <= length ? th2 : null);
        }
        return new a(str, null);
    }

    private static void b(StringBuilder sb2, boolean[] zArr) {
        if (zArr.length == 0) {
            return;
        }
        sb2.append(zArr[0]);
        for (int i9 = 1; i9 < zArr.length; i9++) {
            sb2.append(", ");
            sb2.append(zArr[i9]);
        }
    }

    private static void c(StringBuilder sb2, byte[] bArr) {
        if (bArr.length == 0) {
            return;
        }
        sb2.append((int) bArr[0]);
        for (int i9 = 1; i9 < bArr.length; i9++) {
            sb2.append(", ");
            sb2.append((int) bArr[i9]);
        }
    }

    private static void d(StringBuilder sb2, char[] cArr) {
        if (cArr.length == 0) {
            return;
        }
        sb2.append(cArr[0]);
        for (int i9 = 1; i9 < cArr.length; i9++) {
            sb2.append(", ");
            sb2.append(cArr[i9]);
        }
    }

    private static void e(StringBuilder sb2, Object obj, Set<Object[]> set) {
        if (obj == null) {
            sb2.append("null");
            return;
        }
        Class<?> cls = obj.getClass();
        if (!cls.isArray()) {
            if (Number.class.isAssignableFrom(cls)) {
                if (cls == Long.class) {
                    sb2.append(((Long) obj).longValue());
                    return;
                } else if (cls != Integer.class && cls != Short.class && cls != Byte.class) {
                    if (cls == Double.class) {
                        sb2.append(((Double) obj).doubleValue());
                        return;
                    } else if (cls == Float.class) {
                        sb2.append(((Float) obj).floatValue());
                        return;
                    } else {
                        m(sb2, obj);
                        return;
                    }
                } else {
                    sb2.append(((Number) obj).intValue());
                    return;
                }
            }
            m(sb2, obj);
            return;
        }
        sb2.append('[');
        if (cls == boolean[].class) {
            b(sb2, (boolean[]) obj);
        } else if (cls == byte[].class) {
            c(sb2, (byte[]) obj);
        } else if (cls == char[].class) {
            d(sb2, (char[]) obj);
        } else if (cls == short[].class) {
            n(sb2, (short[]) obj);
        } else if (cls == int[].class) {
            j(sb2, (int[]) obj);
        } else if (cls == long[].class) {
            k(sb2, (long[]) obj);
        } else if (cls == float[].class) {
            g(sb2, (float[]) obj);
        } else if (cls == double[].class) {
            f(sb2, (double[]) obj);
        } else {
            l(sb2, (Object[]) obj, set);
        }
        sb2.append(']');
    }

    private static void f(StringBuilder sb2, double[] dArr) {
        if (dArr.length == 0) {
            return;
        }
        sb2.append(dArr[0]);
        for (int i9 = 1; i9 < dArr.length; i9++) {
            sb2.append(", ");
            sb2.append(dArr[i9]);
        }
    }

    private static void g(StringBuilder sb2, float[] fArr) {
        if (fArr.length == 0) {
            return;
        }
        sb2.append(fArr[0]);
        for (int i9 = 1; i9 < fArr.length; i9++) {
            sb2.append(", ");
            sb2.append(fArr[i9]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a h(String str, Object obj) {
        return a(str, new Object[]{obj});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a i(String str, Object obj, Object obj2) {
        return a(str, new Object[]{obj, obj2});
    }

    private static void j(StringBuilder sb2, int[] iArr) {
        if (iArr.length == 0) {
            return;
        }
        sb2.append(iArr[0]);
        for (int i9 = 1; i9 < iArr.length; i9++) {
            sb2.append(", ");
            sb2.append(iArr[i9]);
        }
    }

    private static void k(StringBuilder sb2, long[] jArr) {
        if (jArr.length == 0) {
            return;
        }
        sb2.append(jArr[0]);
        for (int i9 = 1; i9 < jArr.length; i9++) {
            sb2.append(", ");
            sb2.append(jArr[i9]);
        }
    }

    private static void l(StringBuilder sb2, Object[] objArr, Set<Object[]> set) {
        if (objArr.length == 0) {
            return;
        }
        if (set == null) {
            set = new HashSet<>(objArr.length);
        }
        if (set.add(objArr)) {
            e(sb2, objArr[0], set);
            for (int i9 = 1; i9 < objArr.length; i9++) {
                sb2.append(", ");
                e(sb2, objArr[i9], set);
            }
            set.remove(objArr);
            return;
        }
        sb2.append("...");
    }

    private static void m(StringBuilder sb2, Object obj) {
        try {
            sb2.append(obj.toString());
        } catch (Throwable th2) {
            PrintStream printStream = System.err;
            printStream.println("SLF4J: Failed toString() invocation on an object of type [" + obj.getClass().getName() + ']');
            th2.printStackTrace();
            sb2.append("[FAILED toString()]");
        }
    }

    private static void n(StringBuilder sb2, short[] sArr) {
        if (sArr.length == 0) {
            return;
        }
        sb2.append((int) sArr[0]);
        for (int i9 = 1; i9 < sArr.length; i9++) {
            sb2.append(", ");
            sb2.append((int) sArr[i9]);
        }
    }
}
