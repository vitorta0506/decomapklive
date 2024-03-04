package com.google.android.play.core.internal;

import io.jsonwebtoken.Header;
import java.io.File;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g0 implements y {
    @Override // com.google.android.play.core.internal.y
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z10) {
        return f0.e(classLoader, file, file2, z10, new b0(), Header.COMPRESSION_ALGORITHM, new c0());
    }

    @Override // com.google.android.play.core.internal.y
    public final void b(ClassLoader classLoader, Set set) {
        f0.d(classLoader, set);
    }
}
