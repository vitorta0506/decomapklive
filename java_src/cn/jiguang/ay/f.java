package cn.jiguang.ay;

import java.util.HashMap;
/* loaded from: classes.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private static Integer[] f2248a = new Integer[64];

    /* renamed from: d  reason: collision with root package name */
    private String f2251d;

    /* renamed from: e  reason: collision with root package name */
    private int f2252e;

    /* renamed from: f  reason: collision with root package name */
    private String f2253f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2255h;

    /* renamed from: b  reason: collision with root package name */
    private HashMap f2249b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private HashMap f2250c = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private int f2254g = Integer.MAX_VALUE;

    static {
        int i9 = 0;
        while (true) {
            Integer[] numArr = f2248a;
            if (i9 >= numArr.length) {
                return;
            }
            numArr[i9] = Integer.valueOf(i9);
            i9++;
        }
    }

    public f(String str, int i9) {
        this.f2251d = str;
        this.f2252e = i9;
    }

    private String a(String str) {
        int i9 = this.f2252e;
        return i9 == 2 ? str.toUpperCase() : i9 == 3 ? str.toLowerCase() : str;
    }

    public static Integer b(int i9) {
        if (i9 >= 0) {
            Integer[] numArr = f2248a;
            if (i9 < numArr.length) {
                return numArr[i9];
            }
        }
        return Integer.valueOf(i9);
    }

    public void a(int i9) {
        this.f2254g = i9;
    }

    public void a(int i9, String str) {
        c(i9);
        Integer b10 = b(i9);
        String a10 = a(str);
        this.f2249b.put(a10, b10);
        this.f2250c.put(b10, a10);
    }

    public void a(boolean z10) {
        this.f2255h = z10;
    }

    public void c(int i9) {
        if (i9 < 0 || i9 > this.f2254g) {
            throw new IllegalArgumentException(this.f2251d + " " + i9 + "is out of range");
        }
    }

    public String d(int i9) {
        c(i9);
        String str = (String) this.f2250c.get(b(i9));
        if (str != null) {
            return str;
        }
        String num = Integer.toString(i9);
        if (this.f2253f != null) {
            return this.f2253f + num;
        }
        return num;
    }
}
