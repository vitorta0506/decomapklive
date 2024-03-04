package com.google.api.client.http;
/* loaded from: classes2.dex */
public class r {
    public static boolean a(int i9) {
        if (i9 == 307 || i9 == 308) {
            return true;
        }
        switch (i9) {
            case 301:
            case 302:
            case 303:
                return true;
            default:
                return false;
        }
    }

    public static boolean b(int i9) {
        return i9 >= 200 && i9 < 300;
    }
}
