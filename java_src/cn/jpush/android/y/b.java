package cn.jpush.android.y;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import cn.jpush.android.helper.Logger;
import com.huawei.hms.framework.common.ContainerUtils;
/* loaded from: classes.dex */
public class b extends e {

    /* renamed from: b  reason: collision with root package name */
    private static volatile b f3550b;

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f3549a = {"_id", "ln_id", "ln_count", "ln_remove", "ln_type", "ln_extra", "ln_trigger_time", "ln_add_time"};

    /* renamed from: c  reason: collision with root package name */
    private static final Object f3551c = new Object();

    private b(Context context) {
        super(context, "jpush_local_notification.db", null, 1);
    }

    public static b a(Context context) {
        if (f3550b == null) {
            synchronized (f3551c) {
                if (f3550b == null) {
                    f3550b = new b(context.getApplicationContext());
                }
            }
        }
        return f3550b;
    }

    public static c a(Cursor cursor) {
        if (cursor == null || cursor.getCount() == 0) {
            Logger.d("LocalNotificationDb", "cursor is null");
            return null;
        }
        try {
            c cVar = new c();
            cVar.a(cursor.getLong(1));
            cVar.a(cursor.getInt(2));
            cVar.b(cursor.getInt(3));
            cVar.c(cursor.getInt(4));
            cVar.a(cursor.getString(5));
            cVar.c(cursor.getLong(6));
            cVar.b(cursor.getLong(7));
            Logger.i("LocalNotificationDb", cVar.toString());
            return cVar;
        } catch (Exception e10) {
            e10.getStackTrace();
            Logger.w("LocalNotificationDb", "initLocalNotificationDBData exception:" + e10.getMessage());
            return null;
        }
    }

    public int a(long j10) {
        if (a(true)) {
            try {
                return getWritableDatabase().delete("t_localnotification", "ln_id=" + j10, null);
            } catch (Exception e10) {
                e10.printStackTrace();
                return 0;
            } finally {
                b(true);
            }
        }
        return 0;
    }

    public long a(long j10, int i9, int i10, int i11, String str, long j11, long j12) {
        try {
            if (a(true)) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("ln_id", Long.valueOf(j10));
                contentValues.put("ln_count", Integer.valueOf(i9));
                contentValues.put("ln_remove", Integer.valueOf(i10));
                contentValues.put("ln_type", Integer.valueOf(i11));
                contentValues.put("ln_extra", str);
                contentValues.put("ln_trigger_time", Long.valueOf(j11));
                contentValues.put("ln_add_time", Long.valueOf(j12));
                return getWritableDatabase().insert("t_localnotification", null, contentValues);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        } finally {
            b(true);
        }
        return 0L;
    }

    public Cursor a(int i9, long j10) {
        try {
            return getReadableDatabase().query(true, "t_localnotification", f3549a, "ln_count=" + i9 + " and ln_trigger_time<" + j10, null, null, null, null, null);
        } catch (Exception e10) {
            Logger.w("LocalNotificationDb", "getOutDatas exception:" + e10.getMessage());
            return null;
        }
    }

    public Cursor a(long j10, long j11) {
        try {
            return getReadableDatabase().query(true, "t_localnotification", f3549a, "ln_count>0 and ln_trigger_time<" + (j11 + j10) + " and ln_trigger_time>" + j10, null, null, null, null, null);
        } catch (Exception e10) {
            Logger.w("LocalNotificationDb", "getRtcDatas exception:" + e10.getMessage());
            return null;
        }
    }

    public c a(long j10, int i9) {
        if (a(false)) {
            Cursor cursor = null;
            try {
                cursor = getReadableDatabase().query(true, "t_localnotification", f3549a, "ln_id=" + j10 + " and ln_type" + ContainerUtils.KEY_VALUE_DELIMITER + i9, null, null, null, null, null);
                if (cursor != null) {
                    cursor.moveToFirst();
                }
                return a(cursor);
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
                b(false);
            }
        }
        throw new Exception("open database failed");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int[] a() {
        /*
            r13 = this;
            java.lang.String r4 = "1"
            r10 = 0
            boolean r0 = r13.a(r10)
            r11 = 0
            if (r0 == 0) goto L9c
            r12 = 1
            java.lang.String r0 = "ln_id"
            java.lang.String[] r3 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            android.database.sqlite.SQLiteDatabase r0 = r13.getReadableDatabase()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            r1 = 1
            java.lang.String r2 = "t_localnotification"
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L78
            if (r0 == 0) goto L45
            int r1 = r0.getCount()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L71
            if (r1 <= 0) goto L45
            int r1 = r0.getCount()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L71
            int[] r1 = new int[r1]     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L71
            r0.moveToFirst()     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L6e
            r2 = 0
        L33:
            int r3 = r0.getInt(r10)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L6e
            r1[r2] = r3     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L6e
            int r2 = r2 + 1
            boolean r3 = r0.moveToNext()     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L6e
            if (r3 != 0) goto L33
            r11 = r1
            goto L45
        L43:
            r2 = move-exception
            goto L73
        L45:
            boolean r1 = r13.a(r12)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L71
            if (r1 == 0) goto L5f
            java.lang.String r1 = "delete from t_localnotification"
            android.database.sqlite.SQLiteDatabase r2 = r13.getWritableDatabase()     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L5a
            r2.execSQL(r1)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L5a
            r1 = 1
            goto L60
        L56:
            r1 = move-exception
            r11 = r0
            r0 = 1
            goto L8e
        L5a:
            r2 = move-exception
            r1 = r11
            r11 = r0
            r0 = 1
            goto L7b
        L5f:
            r1 = 0
        L60:
            if (r0 == 0) goto L65
            r0.close()
        L65:
            r13.b(r10)
            if (r1 == 0) goto L9c
            r13.b(r12)
            goto L9c
        L6e:
            r1 = move-exception
            r11 = r0
            goto L76
        L71:
            r2 = move-exception
            r1 = r11
        L73:
            r11 = r0
            goto L7a
        L75:
            r1 = move-exception
        L76:
            r0 = 0
            goto L8e
        L78:
            r2 = move-exception
            r1 = r11
        L7a:
            r0 = 0
        L7b:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L8d
            if (r11 == 0) goto L83
            r11.close()
        L83:
            r13.b(r10)
            if (r0 == 0) goto L8b
            r13.b(r12)
        L8b:
            r11 = r1
            goto L9c
        L8d:
            r1 = move-exception
        L8e:
            if (r11 == 0) goto L93
            r11.close()
        L93:
            r13.b(r10)
            if (r0 == 0) goto L9b
            r13.b(r12)
        L9b:
            throw r1
        L9c:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.y.b.a():int[]");
    }

    public long b(long j10, int i9, int i10, int i11, String str, long j11, long j12) {
        if (a(true)) {
            try {
                String str2 = "ln_id=" + j10;
                ContentValues contentValues = new ContentValues();
                contentValues.put("ln_id", Long.valueOf(j10));
                contentValues.put("ln_count", Integer.valueOf(i9));
                contentValues.put("ln_remove", Integer.valueOf(i10));
                contentValues.put("ln_type", Integer.valueOf(i11));
                contentValues.put("ln_extra", str);
                contentValues.put("ln_trigger_time", Long.valueOf(j11));
                contentValues.put("ln_add_time", Long.valueOf(j12));
                return getWritableDatabase().update("t_localnotification", contentValues, str2, null);
            } catch (Exception e10) {
                e10.printStackTrace();
            } finally {
                b(true);
            }
        }
        return 0L;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE t_localnotification (_id INTEGER PRIMARY KEY AUTOINCREMENT ,ln_id long not null,ln_count integer not null,ln_remove integer not null,ln_type integer not null,ln_extra text ,ln_trigger_time long ,ln_add_time long );");
        } catch (Exception unused) {
            Logger.v("LocalNotificationDb", "表已经存在");
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS t_localnotification");
        onCreate(sQLiteDatabase);
    }
}
