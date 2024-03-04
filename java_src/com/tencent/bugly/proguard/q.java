package com.tencent.bugly.proguard;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.List;
/* loaded from: classes4.dex */
public final class q extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    public static String f30624a = "bugly_db";

    /* renamed from: b  reason: collision with root package name */
    private static int f30625b = 15;

    /* renamed from: c  reason: collision with root package name */
    private Context f30626c;

    /* renamed from: d  reason: collision with root package name */
    private List<com.tencent.bugly.a> f30627d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(Context context, List<com.tencent.bugly.a> list) {
        super(context, f30624a + "_", (SQLiteDatabase.CursorFactory) null, f30625b);
        com.tencent.bugly.crashreport.common.info.a.a(context).getClass();
        this.f30626c = context;
        this.f30627d = list;
    }

    private synchronized boolean a(SQLiteDatabase sQLiteDatabase) {
        try {
            String[] strArr = {"t_lr", "t_ui", "t_pf"};
            for (int i9 = 0; i9 < 3; i9++) {
                String str = strArr[i9];
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str, new String[0]);
            }
        } catch (Throwable th2) {
            if (!x.b(th2)) {
                th2.printStackTrace();
            }
            return false;
        }
        return true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized SQLiteDatabase getReadableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        sQLiteDatabase = null;
        int i9 = 0;
        while (sQLiteDatabase == null && i9 < 5) {
            i9++;
            try {
                sQLiteDatabase = super.getReadableDatabase();
            } catch (Throwable unused) {
                x.d("[Database] Try to get db(count: %d).", Integer.valueOf(i9));
                if (i9 == 5) {
                    x.e("[Database] Failed to get db.", new Object[0]);
                }
                try {
                    Thread.sleep(200L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return sQLiteDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        sQLiteDatabase = null;
        int i9 = 0;
        while (sQLiteDatabase == null && i9 < 5) {
            i9++;
            sQLiteDatabase = super.getWritableDatabase();
        }
        if (sQLiteDatabase == null) {
            x.d("[Database] db error delay error record 1min.", new Object[0]);
        }
        return sQLiteDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS t_ui");
            sb2.append(" ( _id");
            sb2.append(" INTEGER PRIMARY KEY");
            sb2.append(" , _tm");
            sb2.append(" int");
            sb2.append(" , _ut");
            sb2.append(" int");
            sb2.append(" , _tp");
            sb2.append(" int");
            sb2.append(" , _dt");
            sb2.append(" blob");
            sb2.append(" , _pc");
            sb2.append(" text");
            sb2.append(" ) ");
            x.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS t_lr");
            sb2.append(" ( _id");
            sb2.append(" INTEGER PRIMARY KEY");
            sb2.append(" , _tp");
            sb2.append(" int");
            sb2.append(" , _tm");
            sb2.append(" int");
            sb2.append(" , _pc");
            sb2.append(" text");
            sb2.append(" , _th");
            sb2.append(" text");
            sb2.append(" , _dt");
            sb2.append(" blob");
            sb2.append(" ) ");
            x.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS t_pf");
            sb2.append(" ( _id");
            sb2.append(" integer");
            sb2.append(" , _tp");
            sb2.append(" text");
            sb2.append(" , _tm");
            sb2.append(" int");
            sb2.append(" , _dt");
            sb2.append(" blob");
            sb2.append(",primary key(_id");
            sb2.append(",_tp");
            sb2.append(" )) ");
            x.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS t_cr");
            sb2.append(" ( _id");
            sb2.append(" INTEGER PRIMARY KEY");
            sb2.append(" , _tm");
            sb2.append(" int");
            sb2.append(" , _s1");
            sb2.append(" text");
            sb2.append(" , _up");
            sb2.append(" int");
            sb2.append(" , _me");
            sb2.append(" int");
            sb2.append(" , _uc");
            sb2.append(" int");
            sb2.append(" , _dt");
            sb2.append(" blob");
            sb2.append(" ) ");
            x.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS dl_1002");
            sb2.append(" (_id");
            sb2.append(" integer primary key autoincrement, _dUrl");
            sb2.append(" varchar(100), _sFile");
            sb2.append(" varchar(100), _sLen");
            sb2.append(" INTEGER, _tLen");
            sb2.append(" INTEGER, _MD5");
            sb2.append(" varchar(100), _DLTIME");
            sb2.append(" INTEGER)");
            x.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append("CREATE TABLE IF NOT EXISTS ge_1002");
            sb2.append(" (_id");
            sb2.append(" integer primary key autoincrement, _time");
            sb2.append(" INTEGER, _datas");
            sb2.append(" blob)");
            x.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS st_1002");
            sb2.append(" ( _id");
            sb2.append(" integer");
            sb2.append(" , _tp");
            sb2.append(" text");
            sb2.append(" , _tm");
            sb2.append(" int");
            sb2.append(" , _dt");
            sb2.append(" blob");
            sb2.append(",primary key(_id");
            sb2.append(",_tp");
            sb2.append(" )) ");
            x.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            List<com.tencent.bugly.a> list = this.f30627d;
            if (list == null) {
                return;
            }
            for (com.tencent.bugly.a aVar : list) {
                aVar.onDbCreate(sQLiteDatabase);
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized void onDowngrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
        if (com.tencent.bugly.crashreport.common.info.b.c() >= 11) {
            x.d("[Database] Downgrade %d to %d drop tables.", Integer.valueOf(i9), Integer.valueOf(i10));
            List<com.tencent.bugly.a> list = this.f30627d;
            if (list != null) {
                for (com.tencent.bugly.a aVar : list) {
                    aVar.onDbDowngrade(sQLiteDatabase, i9, i10);
                }
            }
            if (a(sQLiteDatabase)) {
                onCreate(sQLiteDatabase);
                return;
            }
            x.d("[Database] Failed to drop, delete db.", new Object[0]);
            File databasePath = this.f30626c.getDatabasePath(f30624a);
            if (databasePath != null && databasePath.canWrite()) {
                databasePath.delete();
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized void onUpgrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
        x.d("[Database] Upgrade %d to %d , drop tables!", Integer.valueOf(i9), Integer.valueOf(i10));
        List<com.tencent.bugly.a> list = this.f30627d;
        if (list != null) {
            for (com.tencent.bugly.a aVar : list) {
                aVar.onDbUpgrade(sQLiteDatabase, i9, i10);
            }
        }
        if (a(sQLiteDatabase)) {
            onCreate(sQLiteDatabase);
            return;
        }
        x.d("[Database] Failed to drop, delete db.", new Object[0]);
        File databasePath = this.f30626c.getDatabasePath(f30624a);
        if (databasePath != null && databasePath.canWrite()) {
            databasePath.delete();
        }
    }
}
