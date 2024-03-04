package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static p f30603a = null;

    /* renamed from: b  reason: collision with root package name */
    private static q f30604b = null;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f30605c = false;

    private p(Context context, List<com.tencent.bugly.a> list) {
        f30604b = new q(context, list);
    }

    private synchronized boolean b(r rVar) {
        ContentValues d10;
        if (rVar == null) {
            return false;
        }
        try {
            SQLiteDatabase writableDatabase = f30604b.getWritableDatabase();
            if (writableDatabase == null || (d10 = d(rVar)) == null) {
                return false;
            }
            long replace = writableDatabase.replace("t_pf", "_id", d10);
            if (replace >= 0) {
                x.c("[Database] insert %s success.", "t_pf");
                rVar.f30628a = replace;
                return true;
            }
            return false;
        } catch (Throwable th2) {
            try {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
                return false;
            } finally {
            }
        }
    }

    private static ContentValues c(r rVar) {
        if (rVar == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j10 = rVar.f30628a;
            if (j10 > 0) {
                contentValues.put("_id", Long.valueOf(j10));
            }
            contentValues.put("_tp", Integer.valueOf(rVar.f30629b));
            contentValues.put("_pc", rVar.f30630c);
            contentValues.put("_th", rVar.f30631d);
            contentValues.put("_tm", Long.valueOf(rVar.f30632e));
            byte[] bArr = rVar.f30634g;
            if (bArr != null) {
                contentValues.put("_dt", bArr);
            }
            return contentValues;
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return null;
        }
    }

    private static ContentValues d(r rVar) {
        if (rVar != null && !z.a(rVar.f30633f)) {
            try {
                ContentValues contentValues = new ContentValues();
                long j10 = rVar.f30628a;
                if (j10 > 0) {
                    contentValues.put("_id", Long.valueOf(j10));
                }
                contentValues.put("_tp", rVar.f30633f);
                contentValues.put("_tm", Long.valueOf(rVar.f30632e));
                byte[] bArr = rVar.f30634g;
                if (bArr != null) {
                    contentValues.put("_dt", bArr);
                }
                return contentValues;
            } catch (Throwable th2) {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
            }
        }
        return null;
    }

    public static synchronized p a(Context context, List<com.tencent.bugly.a> list) {
        p pVar;
        synchronized (p.class) {
            if (f30603a == null) {
                f30603a = new p(context, list);
            }
            pVar = f30603a;
        }
        return pVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private int f30606a;

        /* renamed from: b  reason: collision with root package name */
        private o f30607b;

        /* renamed from: c  reason: collision with root package name */
        private String f30608c;

        /* renamed from: d  reason: collision with root package name */
        private ContentValues f30609d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f30610e;

        /* renamed from: f  reason: collision with root package name */
        private String[] f30611f;

        /* renamed from: g  reason: collision with root package name */
        private String f30612g;

        /* renamed from: h  reason: collision with root package name */
        private String[] f30613h;

        /* renamed from: i  reason: collision with root package name */
        private String f30614i;

        /* renamed from: j  reason: collision with root package name */
        private String f30615j;

        /* renamed from: k  reason: collision with root package name */
        private String f30616k;

        /* renamed from: l  reason: collision with root package name */
        private String f30617l;

        /* renamed from: m  reason: collision with root package name */
        private String f30618m;

        /* renamed from: n  reason: collision with root package name */
        private String[] f30619n;

        /* renamed from: o  reason: collision with root package name */
        private int f30620o;

        /* renamed from: p  reason: collision with root package name */
        private String f30621p;

        /* renamed from: q  reason: collision with root package name */
        private byte[] f30622q;

        public a(int i9, o oVar) {
            this.f30606a = i9;
            this.f30607b = oVar;
        }

        public final void a(boolean z10, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
            this.f30610e = z10;
            this.f30608c = str;
            this.f30611f = strArr;
            this.f30612g = str2;
            this.f30613h = strArr2;
            this.f30614i = str3;
            this.f30615j = str4;
            this.f30616k = str5;
            this.f30617l = str6;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            switch (this.f30606a) {
                case 1:
                    p.this.a(this.f30608c, this.f30609d, this.f30607b);
                    return;
                case 2:
                    p.this.a(this.f30608c, this.f30618m, this.f30619n, this.f30607b);
                    return;
                case 3:
                    Cursor a10 = p.this.a(this.f30610e, this.f30608c, this.f30611f, this.f30612g, this.f30613h, this.f30614i, this.f30615j, this.f30616k, this.f30617l, this.f30607b);
                    if (a10 != null) {
                        a10.close();
                        return;
                    }
                    return;
                case 4:
                    p.this.a(this.f30620o, this.f30621p, this.f30622q, this.f30607b);
                    return;
                case 5:
                    p.this.a(this.f30620o, this.f30607b);
                    return;
                case 6:
                    p.this.a(this.f30620o, this.f30621p, this.f30607b);
                    return;
                default:
                    return;
            }
        }

        public final void a(int i9, String str, byte[] bArr) {
            this.f30620o = i9;
            this.f30621p = str;
            this.f30622q = bArr;
        }
    }

    public static synchronized p a() {
        p pVar;
        synchronized (p.class) {
            pVar = f30603a;
        }
        return pVar;
    }

    public final long a(String str, ContentValues contentValues, o oVar, boolean z10) {
        return a(str, contentValues, (o) null);
    }

    private synchronized List<r> c(int i9) {
        Cursor cursor;
        try {
            SQLiteDatabase writableDatabase = f30604b.getWritableDatabase();
            if (writableDatabase != null) {
                String str = "_id = " + i9;
                cursor = writableDatabase.query("t_pf", null, str, null, null, null, null);
                if (cursor == null) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
                try {
                    StringBuilder sb2 = new StringBuilder();
                    ArrayList arrayList = new ArrayList();
                    while (cursor.moveToNext()) {
                        r b10 = b(cursor);
                        if (b10 != null) {
                            arrayList.add(b10);
                        } else {
                            String string = cursor.getString(cursor.getColumnIndex("_tp"));
                            sb2.append(" or _tp");
                            sb2.append(" = ");
                            sb2.append(string);
                        }
                    }
                    if (sb2.length() > 0) {
                        sb2.append(" and _id");
                        sb2.append(" = ");
                        sb2.append(i9);
                        x.d("[Database] deleted %s illegal data %d.", "t_pf", Integer.valueOf(writableDatabase.delete("t_pf", str.substring(4), null)));
                    }
                    cursor.close();
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                    if (!x.a(th)) {
                        th.printStackTrace();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        return null;
    }

    public final Cursor a(String str, String[] strArr, String str2, String[] strArr2, o oVar, boolean z10) {
        return a(false, str, strArr, str2, null, null, null, null, null, null);
    }

    public final int a(String str, String str2, String[] strArr, o oVar, boolean z10) {
        return a(str, str2, (String[]) null, (o) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized long a(String str, ContentValues contentValues, o oVar) {
        long j10;
        j10 = 0;
        try {
            SQLiteDatabase writableDatabase = f30604b.getWritableDatabase();
            if (writableDatabase != null && contentValues != null) {
                long replace = writableDatabase.replace(str, "_id", contentValues);
                if (replace >= 0) {
                    x.c("[Database] insert %s success.", str);
                } else {
                    x.d("[Database] replace %s error.", str);
                }
                j10 = replace;
            }
        } catch (Throwable th2) {
            try {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return j10;
    }

    public final synchronized void b(int i9) {
        String str;
        SQLiteDatabase writableDatabase = f30604b.getWritableDatabase();
        if (writableDatabase != null) {
            if (i9 >= 0) {
                str = "_tp = " + i9;
            } else {
                str = null;
            }
            x.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", str, null)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Cursor a(boolean z10, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, o oVar) {
        Cursor cursor;
        cursor = null;
        try {
            SQLiteDatabase writableDatabase = f30604b.getWritableDatabase();
            if (writableDatabase != null) {
                cursor = writableDatabase.query(z10, str, strArr, str2, strArr2, str3, str4, str5, str6);
            }
        } finally {
            try {
                return cursor;
            } finally {
            }
        }
        return cursor;
    }

    private static r b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            r rVar = new r();
            rVar.f30628a = cursor.getLong(cursor.getColumnIndex("_id"));
            rVar.f30632e = cursor.getLong(cursor.getColumnIndex("_tm"));
            rVar.f30633f = cursor.getString(cursor.getColumnIndex("_tp"));
            rVar.f30634g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return rVar;
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int a(String str, String str2, String[] strArr, o oVar) {
        int i9;
        i9 = 0;
        try {
            SQLiteDatabase writableDatabase = f30604b.getWritableDatabase();
            if (writableDatabase != null) {
                i9 = writableDatabase.delete(str, str2, strArr);
            }
        } catch (Throwable th2) {
            try {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return i9;
    }

    public final boolean a(int i9, String str, byte[] bArr, o oVar, boolean z10) {
        if (!z10) {
            a aVar = new a(4, null);
            aVar.a(i9, str, bArr);
            w.a().a(aVar);
            return true;
        }
        return a(i9, str, bArr, (o) null);
    }

    public final Map<String, byte[]> a(int i9, o oVar, boolean z10) {
        return a(i9, (o) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i9, String str, byte[] bArr, o oVar) {
        try {
            r rVar = new r();
            rVar.f30628a = i9;
            rVar.f30633f = str;
            rVar.f30632e = System.currentTimeMillis();
            rVar.f30634g = bArr;
            return b(rVar);
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, byte[]> a(int i9, o oVar) {
        HashMap hashMap = null;
        try {
            List<r> c10 = c(i9);
            if (c10 != null) {
                HashMap hashMap2 = new HashMap();
                try {
                    for (r rVar : c10) {
                        byte[] bArr = rVar.f30634g;
                        if (bArr != null) {
                            hashMap2.put(rVar.f30633f, bArr);
                        }
                    }
                    return hashMap2;
                } catch (Throwable th2) {
                    th = th2;
                    hashMap = hashMap2;
                    if (x.a(th)) {
                        return hashMap;
                    }
                    th.printStackTrace();
                    return hashMap;
                }
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final synchronized boolean a(r rVar) {
        ContentValues c10;
        if (rVar == null) {
            return false;
        }
        try {
            SQLiteDatabase writableDatabase = f30604b.getWritableDatabase();
            if (writableDatabase == null || (c10 = c(rVar)) == null) {
                return false;
            }
            long replace = writableDatabase.replace("t_lr", "_id", c10);
            if (replace >= 0) {
                x.c("[Database] insert %s success.", "t_lr");
                rVar.f30628a = replace;
                return true;
            }
            return false;
        } catch (Throwable th2) {
            try {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
                return false;
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ab A[Catch: all -> 0x00b4, TRY_LEAVE, TryCatch #4 {, blocks: (B:3:0x0001, B:14:0x0032, B:30:0x009c, B:39:0x00b0, B:35:0x00a5, B:37:0x00ab), top: B:51:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b0 A[Catch: all -> 0x00bd, TRY_ENTER, TryCatch #4 {, blocks: (B:3:0x0001, B:14:0x0032, B:30:0x009c, B:39:0x00b0, B:35:0x00a5, B:37:0x00ab), top: B:51:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.List<com.tencent.bugly.proguard.r> a(int r12) {
        /*
            r11 = this;
            monitor-enter(r11)
            com.tencent.bugly.proguard.q r0 = com.tencent.bugly.proguard.p.f30604b     // Catch: java.lang.Throwable -> Lbd
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()     // Catch: java.lang.Throwable -> Lbd
            r9 = 0
            if (r0 == 0) goto Lbb
            if (r12 < 0) goto L20
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L1c
            java.lang.String r2 = "_tp = "
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L1c
            r1.append(r12)     // Catch: java.lang.Throwable -> L1c
            java.lang.String r12 = r1.toString()     // Catch: java.lang.Throwable -> L1c
            r4 = r12
            goto L21
        L1c:
            r12 = move-exception
            r0 = r9
            goto La5
        L20:
            r4 = r9
        L21:
            java.lang.String r2 = "t_lr"
            r3 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r1 = r0
            android.database.Cursor r12 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L1c
            if (r12 != 0) goto L37
            if (r12 == 0) goto L35
            r12.close()     // Catch: java.lang.Throwable -> Lbd
        L35:
            monitor-exit(r11)
            return r9
        L37:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La1
            r1.<init>()     // Catch: java.lang.Throwable -> La1
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> La1
            r2.<init>()     // Catch: java.lang.Throwable -> La1
        L41:
            boolean r3 = r12.moveToNext()     // Catch: java.lang.Throwable -> La1
            r4 = 0
            if (r3 == 0) goto L72
            com.tencent.bugly.proguard.r r3 = a(r12)     // Catch: java.lang.Throwable -> La1
            if (r3 == 0) goto L52
            r2.add(r3)     // Catch: java.lang.Throwable -> La1
            goto L41
        L52:
            java.lang.String r3 = "_id"
            int r3 = r12.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L6a
            long r5 = r12.getLong(r3)     // Catch: java.lang.Throwable -> L6a
            java.lang.String r3 = " or _id"
            r1.append(r3)     // Catch: java.lang.Throwable -> L6a
            java.lang.String r3 = " = "
            r1.append(r3)     // Catch: java.lang.Throwable -> L6a
            r1.append(r5)     // Catch: java.lang.Throwable -> L6a
            goto L41
        L6a:
            java.lang.String r3 = "[Database] unknown id."
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> La1
            com.tencent.bugly.proguard.x.d(r3, r4)     // Catch: java.lang.Throwable -> La1
            goto L41
        L72:
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> La1
            int r3 = r1.length()     // Catch: java.lang.Throwable -> La1
            if (r3 <= 0) goto L9c
            r3 = 4
            java.lang.String r1 = r1.substring(r3)     // Catch: java.lang.Throwable -> La1
            java.lang.String r3 = "t_lr"
            int r0 = r0.delete(r3, r1, r9)     // Catch: java.lang.Throwable -> La1
            java.lang.String r1 = "[Database] deleted %s illegal data %d"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> La1
            java.lang.String r5 = "t_lr"
            r3[r4] = r5     // Catch: java.lang.Throwable -> La1
            r4 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> La1
            r3[r4] = r0     // Catch: java.lang.Throwable -> La1
            com.tencent.bugly.proguard.x.d(r1, r3)     // Catch: java.lang.Throwable -> La1
        L9c:
            r12.close()     // Catch: java.lang.Throwable -> Lbd
            monitor-exit(r11)
            return r2
        La1:
            r0 = move-exception
            r10 = r0
            r0 = r12
            r12 = r10
        La5:
            boolean r1 = com.tencent.bugly.proguard.x.a(r12)     // Catch: java.lang.Throwable -> Lb4
            if (r1 != 0) goto Lae
            r12.printStackTrace()     // Catch: java.lang.Throwable -> Lb4
        Lae:
            if (r0 == 0) goto Lbb
            r0.close()     // Catch: java.lang.Throwable -> Lbd
            goto Lbb
        Lb4:
            r12 = move-exception
            if (r0 == 0) goto Lba
            r0.close()     // Catch: java.lang.Throwable -> Lbd
        Lba:
            throw r12     // Catch: java.lang.Throwable -> Lbd
        Lbb:
            monitor-exit(r11)
            return r9
        Lbd:
            r12 = move-exception
            monitor-exit(r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.p.a(int):java.util.List");
    }

    public final synchronized void a(List<r> list) {
        if (list != null) {
            if (list.size() != 0) {
                SQLiteDatabase writableDatabase = f30604b.getWritableDatabase();
                if (writableDatabase != null) {
                    StringBuilder sb2 = new StringBuilder();
                    for (r rVar : list) {
                        sb2.append(" or _id");
                        sb2.append(" = ");
                        sb2.append(rVar.f30628a);
                    }
                    String sb3 = sb2.toString();
                    if (sb3.length() > 0) {
                        sb3 = sb3.substring(4);
                    }
                    sb2.setLength(0);
                    x.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", sb3, null)));
                }
            }
        }
    }

    private static r a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            r rVar = new r();
            rVar.f30628a = cursor.getLong(cursor.getColumnIndex("_id"));
            rVar.f30629b = cursor.getInt(cursor.getColumnIndex("_tp"));
            rVar.f30630c = cursor.getString(cursor.getColumnIndex("_pc"));
            rVar.f30631d = cursor.getString(cursor.getColumnIndex("_th"));
            rVar.f30632e = cursor.getLong(cursor.getColumnIndex("_tm"));
            rVar.f30634g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return rVar;
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(int i9, String str, o oVar) {
        boolean z10;
        String str2;
        z10 = false;
        try {
            SQLiteDatabase writableDatabase = f30604b.getWritableDatabase();
            if (writableDatabase != null) {
                if (z.a(str)) {
                    str2 = "_id = " + i9;
                } else {
                    str2 = "_id = " + i9 + " and _tp = \"" + str + "\"";
                }
                int delete = writableDatabase.delete("t_pf", str2, null);
                x.c("[Database] deleted %s data %d", "t_pf", Integer.valueOf(delete));
                if (delete > 0) {
                    z10 = true;
                }
            }
        } catch (Throwable th2) {
            try {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return z10;
    }
}
