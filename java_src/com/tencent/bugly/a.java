package com.tencent.bugly;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.x;
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: id  reason: collision with root package name */
    public int f30120id;
    public String moduleName;
    public String version;
    public String versionKey;

    public abstract String[] getTables();

    public abstract void init(Context context, boolean z10, BuglyStrategy buglyStrategy);

    public void onDbCreate(SQLiteDatabase sQLiteDatabase) {
    }

    public void onDbDowngrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
        String[] tables;
        try {
            if (getTables() == null) {
                return;
            }
            for (String str : getTables()) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
            }
            onDbCreate(sQLiteDatabase);
        } catch (Throwable th2) {
            if (x.b(th2)) {
                return;
            }
            th2.printStackTrace();
        }
    }

    public void onDbUpgrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
        String[] tables;
        try {
            if (getTables() == null) {
                return;
            }
            for (String str : getTables()) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
            }
            onDbCreate(sQLiteDatabase);
        } catch (Throwable th2) {
            if (x.b(th2)) {
                return;
            }
            th2.printStackTrace();
        }
    }

    public void onServerStrategyChanged(StrategyBean strategyBean) {
    }
}
