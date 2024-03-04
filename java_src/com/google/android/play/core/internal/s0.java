package com.google.android.play.core.internal;

import com.guochao.faceshow.utils.TCConstants;
import java.io.File;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s0 implements y {
    @Override // com.google.android.play.core.internal.y
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z10) {
        return f0.e(classLoader, file, file2, z10, new h0(), TCConstants.VIDEO_RECORD_VIDEPATH, new r0());
    }

    @Override // com.google.android.play.core.internal.y
    public final void b(ClassLoader classLoader, Set set) {
        p0.c(classLoader, set);
    }
}
