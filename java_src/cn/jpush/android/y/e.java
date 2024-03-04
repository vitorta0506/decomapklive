package cn.jpush.android.y;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes.dex */
public abstract class e extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private volatile int f3559a;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f3560b;

    /* renamed from: c  reason: collision with root package name */
    private volatile SQLiteDatabase f3561c;

    /* renamed from: d  reason: collision with root package name */
    private volatile SQLiteDatabase f3562d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f3563e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f3564f;

    /* renamed from: g  reason: collision with root package name */
    private final Context f3565g;

    /* renamed from: h  reason: collision with root package name */
    private final String f3566h;

    /* renamed from: i  reason: collision with root package name */
    private final int f3567i;

    /* renamed from: j  reason: collision with root package name */
    private final SQLiteDatabase.CursorFactory f3568j;

    public e(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i9) {
        super(context, str, cursorFactory, i9);
        this.f3559a = 0;
        this.f3560b = 0;
        this.f3563e = new Object();
        this.f3564f = new Object();
        this.f3565g = context;
        this.f3566h = str;
        this.f3567i = i9;
        this.f3568j = cursorFactory;
    }

    public boolean a(boolean z10) {
        try {
            if (z10) {
                synchronized (this.f3563e) {
                    getWritableDatabase();
                    this.f3560b++;
                }
                return true;
            }
            synchronized (this.f3564f) {
                getReadableDatabase();
                this.f3559a++;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void b(boolean z10) {
        boolean z11 = true;
        if (z10) {
            synchronized (this.f3563e) {
                if (this.f3562d != null && this.f3562d.isOpen()) {
                    int i9 = this.f3560b - 1;
                    this.f3560b = i9;
                    if (i9 > 0) {
                        z11 = false;
                    }
                }
                if (z11) {
                    this.f3560b = 0;
                    if (this.f3562d != null) {
                        this.f3562d.close();
                    }
                    this.f3562d = null;
                }
            }
            return;
        }
        synchronized (this.f3564f) {
            if (this.f3561c != null && this.f3561c.isOpen()) {
                int i10 = this.f3559a - 1;
                this.f3559a = i10;
                if (i10 > 0) {
                    z11 = false;
                }
            }
            if (z11) {
                this.f3559a = 0;
                if (this.f3561c != null) {
                    this.f3561c.close();
                }
                this.f3561c = null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    @Deprecated
    public void close() {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getReadableDatabase() {
        if (this.f3561c == null || !this.f3561c.isOpen()) {
            synchronized (this.f3564f) {
                if (this.f3561c == null || !this.f3561c.isOpen()) {
                    try {
                        getWritableDatabase();
                    } catch (SQLiteException unused) {
                    }
                    String path = this.f3565g.getDatabasePath(this.f3566h).getPath();
                    this.f3561c = SQLiteDatabase.openDatabase(path, this.f3568j, 1);
                    if (this.f3561c.getVersion() != this.f3567i) {
                        throw new SQLiteException("Can't upgrade read-only database from version " + this.f3561c.getVersion() + " to " + this.f3567i + ": " + path);
                    }
                    this.f3559a = 0;
                    onOpen(this.f3561c);
                }
            }
        }
        return this.f3561c;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getWritableDatabase() {
        if (this.f3562d == null || !this.f3562d.isOpen()) {
            synchronized (this.f3563e) {
                if (this.f3562d == null || !this.f3562d.isOpen()) {
                    this.f3560b = 0;
                    this.f3562d = super.getWritableDatabase();
                    this.f3562d.enableWriteAheadLogging();
                }
            }
        }
        return this.f3562d;
    }
}
