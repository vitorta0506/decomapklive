package com.xiaomi.push;
/* loaded from: classes5.dex */
public class a3 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f36362a;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f36363b;

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f36364c;

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f36365d;

    /* renamed from: e  reason: collision with root package name */
    public static final boolean f36366e;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f36367f;

    /* renamed from: g  reason: collision with root package name */
    public static final boolean f36368g;

    /* renamed from: h  reason: collision with root package name */
    public static final boolean f36369h;

    /* renamed from: i  reason: collision with root package name */
    private static int f36370i;

    static {
        int i9;
        String str = c3.f36432a ? "ONEBOX" : "@SHIP.TO.2A2FE0D7@";
        f36362a = str;
        boolean contains = str.contains("2A2FE0D7");
        f36363b = contains;
        f36364c = contains || "DEBUG".equalsIgnoreCase(str);
        f36365d = "LOGABLE".equalsIgnoreCase(str);
        f36366e = str.contains("YY");
        f36367f = str.equalsIgnoreCase("TEST");
        f36368g = "BETA".equalsIgnoreCase(str);
        f36369h = str.startsWith("RC");
        f36370i = 1;
        if (str.equalsIgnoreCase("SANDBOX")) {
            i9 = 2;
        } else if (!str.equalsIgnoreCase("ONEBOX")) {
            f36370i = 1;
            return;
        } else {
            i9 = 3;
        }
        f36370i = i9;
    }

    public static int a() {
        return f36370i;
    }

    public static void b(int i9) {
        f36370i = i9;
    }

    public static boolean c() {
        return f36370i == 2;
    }

    public static boolean d() {
        return f36370i == 3;
    }
}
