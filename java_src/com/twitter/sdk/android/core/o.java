package com.twitter.sdk.android.core;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import com.facebook.internal.security.CertificateUtil;
import java.io.File;
/* loaded from: classes4.dex */
class o extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    private final String f35327a;

    /* renamed from: b  reason: collision with root package name */
    private final String f35328b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Context context, String str, String str2) {
        super(context);
        this.f35328b = str;
        this.f35327a = str2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCacheDir() {
        return new File(super.getCacheDir(), this.f35327a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDatabasePath(String str) {
        File file = new File(super.getDatabasePath(str).getParentFile(), this.f35327a);
        file.mkdirs();
        return new File(file, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalCacheDir() {
        return new File(super.getExternalCacheDir(), this.f35327a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalFilesDir(String str) {
        return new File(super.getExternalFilesDir(str), this.f35327a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFilesDir() {
        return new File(super.getFilesDir(), this.f35327a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i9) {
        return super.getSharedPreferences(this.f35328b + CertificateUtil.DELIMITER + str, i9);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i9, SQLiteDatabase.CursorFactory cursorFactory) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str), cursorFactory);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i9, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str).getPath(), cursorFactory, databaseErrorHandler);
    }
}
