package io.grpc.internal;

import java.text.ParseException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class b1 {

    /* renamed from: a  reason: collision with root package name */
    private static final long f42472a = TimeUnit.SECONDS.toNanos(1);

    public static List<Map<String, ?>> a(List<?> list) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            if (!(list.get(i9) instanceof Map)) {
                throw new ClassCastException(String.format("value %s for idx %d in %s is not object", list.get(i9), Integer.valueOf(i9), list));
            }
        }
        return list;
    }

    public static List<String> b(List<?> list) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            if (!(list.get(i9) instanceof String)) {
                throw new ClassCastException(String.format("value '%s' for idx %d in '%s' is not string", list.get(i9), Integer.valueOf(i9), list));
            }
        }
        return list;
    }

    private static boolean c(long j10, int i9) {
        if (j10 >= -315576000000L && j10 <= 315576000000L) {
            long j11 = i9;
            if (j11 >= -999999999 && j11 < f42472a) {
                int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
                if (i10 >= 0 && i9 >= 0) {
                    return true;
                }
                if (i10 <= 0 && i9 <= 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Boolean d(Map<String, ?> map, String str) {
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof Boolean) {
                return (Boolean) obj;
            }
            throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not Boolean", obj, str, map));
        }
        return null;
    }

    public static List<?> e(Map<String, ?> map, String str) {
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof List) {
                return (List) obj;
            }
            throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not List", obj, str, map));
        }
        return null;
    }

    public static List<Map<String, ?>> f(Map<String, ?> map, String str) {
        List<?> e10 = e(map, str);
        if (e10 == null) {
            return null;
        }
        return a(e10);
    }

    public static List<String> g(Map<String, ?> map, String str) {
        List<?> e10 = e(map, str);
        if (e10 == null) {
            return null;
        }
        return b(e10);
    }

    public static Double h(Map<String, ?> map, String str) {
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof Double) {
                return (Double) obj;
            }
            if (obj instanceof String) {
                try {
                    return Double.valueOf(Double.parseDouble((String) obj));
                } catch (NumberFormatException unused) {
                    throw new IllegalArgumentException(String.format("value '%s' for key '%s' is not a double", obj, str));
                }
            }
            throw new IllegalArgumentException(String.format("value '%s' for key '%s' in '%s' is not a number", obj, str, map));
        }
        return null;
    }

    public static Integer i(Map<String, ?> map, String str) {
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof Double) {
                Double d10 = (Double) obj;
                int intValue = d10.intValue();
                if (intValue == d10.doubleValue()) {
                    return Integer.valueOf(intValue);
                }
                throw new ClassCastException("Number expected to be integer: " + d10);
            } else if (obj instanceof String) {
                try {
                    return Integer.valueOf(Integer.parseInt((String) obj));
                } catch (NumberFormatException unused) {
                    throw new IllegalArgumentException(String.format("value '%s' for key '%s' is not an integer", obj, str));
                }
            } else {
                throw new IllegalArgumentException(String.format("value '%s' for key '%s' is not an integer", obj, str));
            }
        }
        return null;
    }

    public static Long j(Map<String, ?> map, String str) {
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof Double) {
                Double d10 = (Double) obj;
                long longValue = d10.longValue();
                if (longValue == d10.doubleValue()) {
                    return Long.valueOf(longValue);
                }
                throw new ClassCastException("Number expected to be long: " + d10);
            } else if (obj instanceof String) {
                try {
                    return Long.valueOf(Long.parseLong((String) obj));
                } catch (NumberFormatException unused) {
                    throw new IllegalArgumentException(String.format("value '%s' for key '%s' is not a long integer", obj, str));
                }
            } else {
                throw new IllegalArgumentException(String.format("value '%s' for key '%s' is not a long integer", obj, str));
            }
        }
        return null;
    }

    public static Map<String, ?> k(Map<String, ?> map, String str) {
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof Map) {
                return (Map) obj;
            }
            throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not object", obj, str, map));
        }
        return null;
    }

    public static String l(Map<String, ?> map, String str) {
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof String) {
                return (String) obj;
            }
            throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not String", obj, str, map));
        }
        return null;
    }

    public static Long m(Map<String, ?> map, String str) {
        String l10 = l(map, str);
        if (l10 == null) {
            return null;
        }
        try {
            return Long.valueOf(o(l10));
        } catch (ParseException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static long n(long j10, int i9) {
        long j11 = i9;
        long j12 = f42472a;
        if (j11 <= (-j12) || j11 >= j12) {
            j10 = com.google.common.math.e.a(j10, j11 / j12);
            i9 = (int) (j11 % j12);
        }
        if (j10 > 0 && i9 < 0) {
            i9 = (int) (i9 + j12);
            j10--;
        }
        if (j10 < 0 && i9 > 0) {
            i9 = (int) (i9 - j12);
            j10++;
        }
        if (c(j10, i9)) {
            return q(TimeUnit.SECONDS.toNanos(j10), i9);
        }
        throw new IllegalArgumentException(String.format("Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds", Long.valueOf(j10), Integer.valueOf(i9)));
    }

    private static long o(String str) throws ParseException {
        boolean z10;
        String str2;
        if (!str.isEmpty() && str.charAt(str.length() - 1) == 's') {
            if (str.charAt(0) == '-') {
                str = str.substring(1);
                z10 = true;
            } else {
                z10 = false;
            }
            String substring = str.substring(0, str.length() - 1);
            int indexOf = substring.indexOf(46);
            if (indexOf != -1) {
                str2 = substring.substring(indexOf + 1);
                substring = substring.substring(0, indexOf);
            } else {
                str2 = "";
            }
            long parseLong = Long.parseLong(substring);
            int p10 = str2.isEmpty() ? 0 : p(str2);
            if (parseLong >= 0) {
                if (z10) {
                    parseLong = -parseLong;
                    p10 = -p10;
                }
                try {
                    return n(parseLong, p10);
                } catch (IllegalArgumentException unused) {
                    throw new ParseException("Duration value is out of range.", 0);
                }
            }
            throw new ParseException("Invalid duration string: " + str, 0);
        }
        throw new ParseException("Invalid duration string: " + str, 0);
    }

    private static int p(String str) throws ParseException {
        int i9 = 0;
        for (int i10 = 0; i10 < 9; i10++) {
            i9 *= 10;
            if (i10 < str.length()) {
                if (str.charAt(i10) >= '0' && str.charAt(i10) <= '9') {
                    i9 += str.charAt(i10) - '0';
                } else {
                    throw new ParseException("Invalid nanoseconds.", 0);
                }
            }
        }
        return i9;
    }

    private static long q(long j10, long j11) {
        long j12 = j10 + j11;
        return (((j11 ^ j10) > 0L ? 1 : ((j11 ^ j10) == 0L ? 0 : -1)) < 0) | ((j10 ^ j12) >= 0) ? j12 : ((j12 >>> 63) ^ 1) + Long.MAX_VALUE;
    }
}
