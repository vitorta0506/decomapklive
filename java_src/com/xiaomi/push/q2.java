package com.xiaomi.push;
/* loaded from: classes5.dex */
public class q2 {

    /* renamed from: a  reason: collision with root package name */
    private static int f37050a = Integer.MAX_VALUE;

    public static void a(p2 p2Var, byte b10) {
        b(p2Var, b10, f37050a);
    }

    public static void b(p2 p2Var, byte b10, int i9) {
        if (i9 <= 0) {
            throw new ej("Maximum skip depth exceeded");
        }
        int i10 = 0;
        switch (b10) {
            case 2:
                p2Var.x();
                return;
            case 3:
                p2Var.a();
                return;
            case 4:
                p2Var.b();
                return;
            case 5:
            case 7:
            case 9:
            default:
                return;
            case 6:
                p2Var.l();
                return;
            case 8:
                p2Var.c();
                return;
            case 10:
                p2Var.d();
                return;
            case 11:
                p2Var.k();
                return;
            case 12:
                p2Var.i();
                while (true) {
                    byte b11 = p2Var.e().f36993b;
                    if (b11 == 0) {
                        p2Var.C();
                        return;
                    } else {
                        b(p2Var, b11, i9 - 1);
                        p2Var.D();
                    }
                }
            case 13:
                o2 g10 = p2Var.g();
                while (i10 < g10.f37020c) {
                    int i11 = i9 - 1;
                    b(p2Var, g10.f37018a, i11);
                    b(p2Var, g10.f37019b, i11);
                    i10++;
                }
                p2Var.E();
                return;
            case 14:
                r2 h10 = p2Var.h();
                while (i10 < h10.f37081b) {
                    b(p2Var, h10.f37080a, i9 - 1);
                    i10++;
                }
                p2Var.G();
                return;
            case 15:
                n2 f10 = p2Var.f();
                while (i10 < f10.f37002b) {
                    b(p2Var, f10.f37001a, i9 - 1);
                    i10++;
                }
                p2Var.F();
                return;
        }
    }
}
