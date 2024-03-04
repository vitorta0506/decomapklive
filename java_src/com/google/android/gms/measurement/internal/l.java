package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteDatabase;
import java.io.File;
/* loaded from: classes2.dex */
public final class l {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
        if (r0 == false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e4  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.google.android.gms.measurement.internal.j3 r14, android.database.sqlite.SQLiteDatabase r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.String[] r19) throws android.database.sqlite.SQLiteException {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.l.a(com.google.android.gms.measurement.internal.j3, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(j3 j3Var, SQLiteDatabase sQLiteDatabase) {
        if (j3Var != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                j3Var.w().a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                j3Var.w().a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                j3Var.w().a("Failed to turn on database read permission for owner");
            }
            if (file.setWritable(true, true)) {
                return;
            }
            j3Var.w().a("Failed to turn on database write permission for owner");
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }
}
