package com.xiaomi.push;
/* loaded from: classes5.dex */
public final class w2 {

    /* renamed from: a  reason: collision with root package name */
    static final int f37538a = b(1, 3);

    /* renamed from: b  reason: collision with root package name */
    static final int f37539b = b(1, 4);

    /* renamed from: c  reason: collision with root package name */
    static final int f37540c = b(2, 0);

    /* renamed from: d  reason: collision with root package name */
    static final int f37541d = b(3, 2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i9) {
        return i9 & 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i9, int i10) {
        return (i9 << 3) | i10;
    }

    public static int c(int i9) {
        return i9 >>> 3;
    }
}
