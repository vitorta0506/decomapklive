package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class t2 {

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10431d = new com.google.android.play.core.internal.g("PackMetadataManager");

    /* renamed from: a  reason: collision with root package name */
    private final e0 f10432a;

    /* renamed from: b  reason: collision with root package name */
    private final v2 f10433b;

    /* renamed from: c  reason: collision with root package name */
    private final v4.b f10434c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t2(e0 e0Var, v2 v2Var, v4.b bVar) {
        this.f10432a = e0Var;
        this.f10433b = v2Var;
        this.f10434c = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(String str) {
        if (this.f10434c.a("assetOnlyUpdates") && this.f10432a.f(str)) {
            int a10 = this.f10433b.a();
            e0 e0Var = this.f10432a;
            File x10 = e0Var.x(str, a10, e0Var.r(str));
            try {
                if (!x10.exists()) {
                    return String.valueOf(a10);
                }
                FileInputStream fileInputStream = new FileInputStream(x10);
                Properties properties = new Properties();
                properties.load(fileInputStream);
                fileInputStream.close();
                String property = properties.getProperty("moduleVersionTag");
                return property == null ? String.valueOf(a10) : property;
            } catch (IOException unused) {
                f10431d.b("Failed to read pack version tag for pack %s", str);
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str, int i9, long j10, @Nullable String str2) throws IOException {
        if (str2 == null || str2.isEmpty()) {
            str2 = String.valueOf(i9);
        }
        Properties properties = new Properties();
        properties.put("moduleVersionTag", str2);
        File x10 = this.f10432a.x(str, i9, j10);
        x10.getParentFile().mkdirs();
        x10.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(x10);
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th2;
        }
    }
}
