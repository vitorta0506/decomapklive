package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.db.SupportSQLiteProgram;
/* loaded from: classes.dex */
class FrameworkSQLiteProgram implements SupportSQLiteProgram {
    private final SQLiteProgram mDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameworkSQLiteProgram(SQLiteProgram sQLiteProgram) {
        this.mDelegate = sQLiteProgram;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int i9, byte[] bArr) {
        this.mDelegate.bindBlob(i9, bArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int i9, double d10) {
        this.mDelegate.bindDouble(i9, d10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int i9, long j10) {
        this.mDelegate.bindLong(i9, j10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int i9) {
        this.mDelegate.bindNull(i9);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int i9, String str) {
        this.mDelegate.bindString(i9, str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        this.mDelegate.clearBindings();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.mDelegate.close();
    }
}
