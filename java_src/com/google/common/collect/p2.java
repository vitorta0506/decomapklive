package com.google.common.collect;
/* loaded from: classes2.dex */
final class p2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, Object obj2) {
        if (obj == null) {
            String valueOf = String.valueOf(obj2);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 24);
            sb2.append("null key in entry: null=");
            sb2.append(valueOf);
            throw new NullPointerException(sb2.toString());
        } else if (obj2 != null) {
        } else {
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 26);
            sb3.append("null value in entry: ");
            sb3.append(valueOf2);
            sb3.append("=null");
            throw new NullPointerException(sb3.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i9, String str) {
        if (i9 >= 0) {
            return i9;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 40);
        sb2.append(str);
        sb2.append(" cannot be negative but was: ");
        sb2.append(i9);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long c(long j10, String str) {
        if (j10 >= 0) {
            return j10;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 49);
        sb2.append(str);
        sb2.append(" cannot be negative but was: ");
        sb2.append(j10);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(int i9, String str) {
        if (i9 > 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 38);
        sb2.append(str);
        sb2.append(" must be positive but was: ");
        sb2.append(i9);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(boolean z10) {
        com.google.common.base.o.A(z10, "no calls to next() since the last call to remove()");
    }
}
