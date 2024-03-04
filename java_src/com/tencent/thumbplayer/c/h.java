package com.tencent.thumbplayer.c;
/* loaded from: classes4.dex */
public class h {
    public static int a(int i9) {
        if (i9 != 202) {
            switch (i9) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                    return 6;
                case 7:
                    return 7;
                case 8:
                    return 8;
                case 9:
                    return 9;
                case 10:
                    return 10;
                case 11:
                    return 11;
                case 12:
                    return 16;
                default:
                    throw new IllegalArgumentException("event is invalid: ".concat(String.valueOf(i9)));
            }
        }
        return 202;
    }

    public static int b(int i9) {
        int i10 = 3;
        if (i9 != 3) {
            i10 = 4;
            if (i9 != 4) {
                i10 = 5;
                if (i9 != 5) {
                    i10 = 6;
                    if (i9 != 6) {
                        switch (i9) {
                            case 13:
                                return 13;
                            case 14:
                                return 14;
                            case 15:
                                return 15;
                            case 16:
                                return 16;
                            case 17:
                                return 17;
                            case 18:
                                return 18;
                            case 19:
                                return 19;
                            case 20:
                                return 20;
                            case 21:
                                return 21;
                            default:
                                throw new IllegalArgumentException("event is invalid : ".concat(String.valueOf(i9)));
                        }
                    }
                }
            }
        }
        return i10;
    }
}
