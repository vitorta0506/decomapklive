package androidx.room.migration;

import androidx.annotation.NonNull;
import androidx.sqlite.db.SupportSQLiteDatabase;
/* loaded from: classes.dex */
public abstract class Migration {
    public final int endVersion;
    public final int startVersion;

    public Migration(int i9, int i10) {
        this.startVersion = i9;
        this.endVersion = i10;
    }

    public abstract void migrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase);
}
