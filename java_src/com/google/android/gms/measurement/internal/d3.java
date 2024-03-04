package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import androidx.annotation.WorkerThread;
/* loaded from: classes2.dex */
public final class d3 extends u3 {

    /* renamed from: c  reason: collision with root package name */
    private final c3 f9340c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9341d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d3(n4 n4Var) {
        super(n4Var);
        Context f10 = this.f9432a.f();
        this.f9432a.z();
        this.f9340c = new c3(this, f10, "google_app_measurement_local.db");
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0129  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r2v13 */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean x(int r17, byte[] r18) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.d3.x(int, byte[]):boolean");
    }

    @Override // com.google.android.gms.measurement.internal.u3
    protected final boolean n() {
        return false;
    }

    @WorkerThread
    final SQLiteDatabase o() throws SQLiteException {
        if (this.f9341d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f9340c.getWritableDatabase();
        if (writableDatabase == null) {
            this.f9341d = true;
            return null;
        }
        return writableDatabase;
    }

    /* JADX WARN: Removed duplicated region for block: B:143:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x01fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x01d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0248 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0248 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0248 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List p(int r23) {
        /*
            Method dump skipped, instructions count: 618
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.d3.p(int):java.util.List");
    }

    @WorkerThread
    public final void q() {
        int delete;
        h();
        try {
            SQLiteDatabase o10 = o();
            if (o10 == null || (delete = o10.delete("messages", null, null)) <= 0) {
                return;
            }
            this.f9432a.b().v().b("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e10) {
            this.f9432a.b().r().b("Error resetting local analytics data. error", e10);
        }
    }

    @WorkerThread
    public final boolean r() {
        return x(3, new byte[0]);
    }

    final boolean s() {
        Context f10 = this.f9432a.f();
        this.f9432a.z();
        return f10.getDatabasePath("google_app_measurement_local.db").exists();
    }

    @WorkerThread
    public final boolean t() {
        int i9;
        h();
        if (!this.f9341d && s()) {
            int i10 = 5;
            while (i9 < 5) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase o10 = o();
                    if (o10 == null) {
                        this.f9341d = true;
                        return false;
                    }
                    o10.beginTransaction();
                    o10.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    o10.setTransactionSuccessful();
                    o10.endTransaction();
                    o10.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep(i10);
                    i10 += 20;
                    i9 = 0 == 0 ? i9 + 1 : 0;
                    sQLiteDatabase.close();
                } catch (SQLiteFullException e10) {
                    this.f9432a.b().r().b("Error deleting app launch break from local database", e10);
                    this.f9341d = true;
                    if (0 == 0) {
                    }
                    sQLiteDatabase.close();
                } catch (SQLiteException e11) {
                    if (0 != 0) {
                        try {
                            if (sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Throwable th2) {
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                            throw th2;
                        }
                    }
                    this.f9432a.b().r().b("Error deleting app launch break from local database", e11);
                    this.f9341d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            }
            this.f9432a.b().w().a("Error deleting app launch break from local database in reasonable time");
        }
        return false;
    }

    public final boolean u(zzac zzacVar) {
        byte[] c02 = this.f9432a.N().c0(zzacVar);
        if (c02.length > 131072) {
            this.f9432a.b().t().a("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return x(2, c02);
    }

    public final boolean v(zzaw zzawVar) {
        Parcel obtain = Parcel.obtain();
        t.a(zzawVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.f9432a.b().t().a("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return x(0, marshall);
    }

    public final boolean w(zzlc zzlcVar) {
        Parcel obtain = Parcel.obtain();
        h9.a(zzlcVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.f9432a.b().t().a("User property too long for local database. Sending directly to service");
            return false;
        }
        return x(1, marshall);
    }
}
