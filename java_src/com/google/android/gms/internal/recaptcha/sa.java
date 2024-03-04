package com.google.android.gms.internal.recaptcha;

import java.io.File;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class sa {

    /* renamed from: a  reason: collision with root package name */
    private static final l9<File> f9041a = new ra();

    public static void a(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        String valueOf = String.valueOf(file);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 39);
        sb2.append("Unable to create parent directories of ");
        sb2.append(valueOf);
        throw new IOException(sb2.toString());
    }
}
