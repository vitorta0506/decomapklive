package com.google.android.play.core.internal;

import java.io.File;
/* loaded from: classes2.dex */
final class c0 implements d0 {
    @Override // com.google.android.play.core.internal.d0
    public final boolean a(Object obj, File file, File file2) {
        return new File((String) v0.g(obj.getClass(), "optimizedPathFor", String.class, File.class, file, File.class, file2)).exists();
    }
}
