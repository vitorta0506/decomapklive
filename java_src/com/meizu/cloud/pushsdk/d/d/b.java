package com.meizu.cloud.pushsdk.d.d;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes4.dex */
public class b extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private static final String f28609a = b.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private static b f28610b;

    private b(Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
    }

    public static b a(Context context, String str) {
        if (f28610b == null) {
            f28610b = new b(context.getApplicationContext(), str);
        }
        return f28610b;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS 'events' (id INTEGER PRIMARY KEY, eventData BLOB, dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
        String str = f28609a;
        com.meizu.cloud.pushsdk.d.f.c.b(str, "Upgrading database from version " + i9 + " to " + i10 + ". Destroying old data now..", new Object[0]);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'events'");
        onCreate(sQLiteDatabase);
    }
}
