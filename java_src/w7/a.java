package w7;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.guochao.faceshow.aaspring.beans.GCEventModel;
import com.guochao.faceshow.aaspring.db.dao.GCEventDao;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class a extends GCEventDao {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f59381a;

    /* renamed from: b  reason: collision with root package name */
    private final EntityInsertionAdapter<GCEventModel> f59382b;

    /* renamed from: c  reason: collision with root package name */
    private final SharedSQLiteStatement f59383c;

    /* renamed from: w7.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0674a extends EntityInsertionAdapter<GCEventModel> {
        C0674a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, GCEventModel gCEventModel) {
            supportSQLiteStatement.bindLong(1, gCEventModel.getId());
            if (gCEventModel.getEvent() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, gCEventModel.getEvent());
            }
            supportSQLiteStatement.bindLong(3, gCEventModel.getRecordTime());
            if (gCEventModel.getTargetUserId() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindLong(4, gCEventModel.getTargetUserId().intValue());
            }
            supportSQLiteStatement.bindLong(5, gCEventModel.getNum());
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR REPLACE INTO `gc_event_model` (`id`,`event`,`recordTime`,`targetUserId`,`num`) VALUES (nullif(?, 0),?,?,?,?)";
        }
    }

    /* loaded from: classes3.dex */
    class b extends SharedSQLiteStatement {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "delete from gc_event_model";
        }
    }

    public a(RoomDatabase roomDatabase) {
        this.f59381a = roomDatabase;
        this.f59382b = new C0674a(roomDatabase);
        this.f59383c = new b(roomDatabase);
    }

    public static List<Class<?>> a() {
        return Collections.emptyList();
    }

    @Override // com.guochao.faceshow.aaspring.db.dao.GCEventDao
    public void clear() {
        this.f59381a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f59383c.acquire();
        this.f59381a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f59381a.setTransactionSuccessful();
        } finally {
            this.f59381a.endTransaction();
            this.f59383c.release(acquire);
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.dao.GCEventDao
    public void insert(GCEventModel gCEventModel) {
        this.f59381a.assertNotSuspendingTransaction();
        this.f59381a.beginTransaction();
        try {
            this.f59382b.insert((EntityInsertionAdapter<GCEventModel>) gCEventModel);
            this.f59381a.setTransactionSuccessful();
        } finally {
            this.f59381a.endTransaction();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.dao.GCEventDao
    public List<GCEventModel> totalList() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("select * from gc_event_model", 0);
        this.f59381a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f59381a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "event");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "recordTime");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "targetUserId");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "num");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new GCEventModel(query.getLong(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.getLong(columnIndexOrThrow3), query.isNull(columnIndexOrThrow4) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow4)), query.getInt(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }
}
