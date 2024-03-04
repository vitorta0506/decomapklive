package com.google.android.exoplayer2.extractor.flv;

import androidx.annotation.Nullable;
import c2.k;
import com.google.android.exoplayer2.util.b0;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class c extends TagPayloadReader {

    /* renamed from: b  reason: collision with root package name */
    private long f5902b;

    /* renamed from: c  reason: collision with root package name */
    private long[] f5903c;

    /* renamed from: d  reason: collision with root package name */
    private long[] f5904d;

    public c() {
        super(new k());
        this.f5902b = -9223372036854775807L;
        this.f5903c = new long[0];
        this.f5904d = new long[0];
    }

    private static Boolean g(b0 b0Var) {
        return Boolean.valueOf(b0Var.D() == 1);
    }

    @Nullable
    private static Object h(b0 b0Var, int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 8) {
                            if (i9 != 10) {
                                if (i9 != 11) {
                                    return null;
                                }
                                return i(b0Var);
                            }
                            return m(b0Var);
                        }
                        return k(b0Var);
                    }
                    return l(b0Var);
                }
                return n(b0Var);
            }
            return g(b0Var);
        }
        return j(b0Var);
    }

    private static Date i(b0 b0Var) {
        Date date = new Date((long) j(b0Var).doubleValue());
        b0Var.Q(2);
        return date;
    }

    private static Double j(b0 b0Var) {
        return Double.valueOf(Double.longBitsToDouble(b0Var.w()));
    }

    private static HashMap<String, Object> k(b0 b0Var) {
        int H = b0Var.H();
        HashMap<String, Object> hashMap = new HashMap<>(H);
        for (int i9 = 0; i9 < H; i9++) {
            String n9 = n(b0Var);
            Object h10 = h(b0Var, o(b0Var));
            if (h10 != null) {
                hashMap.put(n9, h10);
            }
        }
        return hashMap;
    }

    private static HashMap<String, Object> l(b0 b0Var) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String n9 = n(b0Var);
            int o10 = o(b0Var);
            if (o10 == 9) {
                return hashMap;
            }
            Object h10 = h(b0Var, o10);
            if (h10 != null) {
                hashMap.put(n9, h10);
            }
        }
    }

    private static ArrayList<Object> m(b0 b0Var) {
        int H = b0Var.H();
        ArrayList<Object> arrayList = new ArrayList<>(H);
        for (int i9 = 0; i9 < H; i9++) {
            Object h10 = h(b0Var, o(b0Var));
            if (h10 != null) {
                arrayList.add(h10);
            }
        }
        return arrayList;
    }

    private static String n(b0 b0Var) {
        int J = b0Var.J();
        int e10 = b0Var.e();
        b0Var.Q(J);
        return new String(b0Var.d(), e10, J);
    }

    private static int o(b0 b0Var) {
        return b0Var.D();
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(b0 b0Var) {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(b0 b0Var, long j10) {
        if (o(b0Var) == 2 && "onMetaData".equals(n(b0Var)) && b0Var.a() != 0 && o(b0Var) == 8) {
            HashMap<String, Object> k10 = k(b0Var);
            Object obj = k10.get("duration");
            if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                if (doubleValue > 0.0d) {
                    this.f5902b = (long) (doubleValue * 1000000.0d);
                }
            }
            Object obj2 = k10.get("keyframes");
            if (obj2 instanceof Map) {
                Map map = (Map) obj2;
                Object obj3 = map.get("filepositions");
                Object obj4 = map.get("times");
                if ((obj3 instanceof List) && (obj4 instanceof List)) {
                    List list = (List) obj3;
                    List list2 = (List) obj4;
                    int size = list2.size();
                    this.f5903c = new long[size];
                    this.f5904d = new long[size];
                    for (int i9 = 0; i9 < size; i9++) {
                        Object obj5 = list.get(i9);
                        Object obj6 = list2.get(i9);
                        if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                            this.f5903c[i9] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                            this.f5904d[i9] = ((Double) obj5).longValue();
                        } else {
                            this.f5903c = new long[0];
                            this.f5904d = new long[0];
                            break;
                        }
                    }
                }
            }
            return false;
        }
        return false;
    }

    public long d() {
        return this.f5902b;
    }

    public long[] e() {
        return this.f5904d;
    }

    public long[] f() {
        return this.f5903c;
    }
}
