package com.tencent.thumbplayer.b;
/* loaded from: classes4.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    public static String f33754a = "base_video";

    /* renamed from: b  reason: collision with root package name */
    private static int f33755b;

    /* renamed from: c  reason: collision with root package name */
    private static int f33756c;

    /* renamed from: d  reason: collision with root package name */
    private static int f33757d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i9) {
        if (i9 == 1) {
            int i10 = f33757d;
            f33757d = i10 + 1;
            return i10;
        } else if (i9 == 2) {
            int i11 = f33755b;
            f33755b = i11 + 1;
            return i11;
        } else if (i9 == 3) {
            int i12 = f33756c;
            f33756c = i12 + 1;
            return i12;
        } else {
            return -1;
        }
    }
}
