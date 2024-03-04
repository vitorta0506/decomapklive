package com.google.android.play.core.internal;

import io.jsonwebtoken.Header;
import java.io.File;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class l0 implements y {
    @Override // com.google.android.play.core.internal.y
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z10) {
        return k0.d(classLoader, file, file2, z10, Header.COMPRESSION_ALGORITHM);
    }

    @Override // com.google.android.play.core.internal.y
    public final void b(ClassLoader classLoader, Set set) {
        k0.c(classLoader, set, new i0());
    }
}
