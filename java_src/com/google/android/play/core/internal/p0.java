package com.google.android.play.core.internal;

import com.guochao.faceshow.utils.TCConstants;
import java.io.File;
import java.util.Set;
/* loaded from: classes2.dex */
final class p0 implements y {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(ClassLoader classLoader, Set set) {
        k0.c(classLoader, set, new n0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(ClassLoader classLoader, File file, File file2, boolean z10) {
        return f0.e(classLoader, file, file2, z10, new h0(), TCConstants.VIDEO_RECORD_VIDEPATH, new o0());
    }

    @Override // com.google.android.play.core.internal.y
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z10) {
        return d(classLoader, file, file2, z10);
    }

    @Override // com.google.android.play.core.internal.y
    public final void b(ClassLoader classLoader, Set set) {
        c(classLoader, set);
    }
}
