package androidx.room;

import androidx.sqlite.db.SupportSQLiteProgram;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class QueryInterceptorProgram implements SupportSQLiteProgram {
    private List<Object> mBindArgsCache = new ArrayList();

    private void saveArgsToCache(int i9, Object obj) {
        int i10 = i9 - 1;
        if (i10 >= this.mBindArgsCache.size()) {
            for (int size = this.mBindArgsCache.size(); size <= i10; size++) {
                this.mBindArgsCache.add(null);
            }
        }
        this.mBindArgsCache.set(i10, obj);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int i9, byte[] bArr) {
        saveArgsToCache(i9, bArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int i9, double d10) {
        saveArgsToCache(i9, Double.valueOf(d10));
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int i9, long j10) {
        saveArgsToCache(i9, Long.valueOf(j10));
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int i9) {
        saveArgsToCache(i9, null);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int i9, String str) {
        saveArgsToCache(i9, str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        this.mBindArgsCache.clear();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Object> getBindArgs() {
        return this.mBindArgsCache;
    }
}
