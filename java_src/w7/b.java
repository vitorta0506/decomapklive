package w7;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.guochao.faceshow.aaspring.db.dao.SystemConversationDao;
import com.guochao.faceshow.aaspring.modulars.main.model.SystemConversationModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class b implements SystemConversationDao {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f59386a;

    /* renamed from: b  reason: collision with root package name */
    private final EntityInsertionAdapter<SystemConversationModel> f59387b;

    /* renamed from: c  reason: collision with root package name */
    private final SharedSQLiteStatement f59388c;

    /* loaded from: classes3.dex */
    class a extends EntityInsertionAdapter<SystemConversationModel> {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, SystemConversationModel systemConversationModel) {
            if (systemConversationModel.getConversationId() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, systemConversationModel.getConversationId());
            }
            if (systemConversationModel.getLastMsgTime() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindLong(2, systemConversationModel.getLastMsgTime().longValue());
            }
            if (systemConversationModel.getContent() == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, systemConversationModel.getContent());
            }
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR REPLACE INTO `system_conversation` (`conversationId`,`lastMsgTime`,`content`) VALUES (?,?,?)";
        }
    }

    /* renamed from: w7.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0675b extends SharedSQLiteStatement {
        C0675b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM system_conversation";
        }
    }

    public b(RoomDatabase roomDatabase) {
        this.f59386a = roomDatabase;
        this.f59387b = new a(roomDatabase);
        this.f59388c = new C0675b(roomDatabase);
    }

    public static List<Class<?>> a() {
        return Collections.emptyList();
    }

    @Override // com.guochao.faceshow.aaspring.db.dao.SystemConversationDao
    public void deleteAll() {
        this.f59386a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f59388c.acquire();
        this.f59386a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f59386a.setTransactionSuccessful();
        } finally {
            this.f59386a.endTransaction();
            this.f59388c.release(acquire);
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.dao.SystemConversationDao
    public List<SystemConversationModel> getAllSystemConversation() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM system_conversation ", 0);
        this.f59386a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f59386a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "conversationId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "lastMsgTime");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "content");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new SystemConversationModel(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : Long.valueOf(query.getLong(columnIndexOrThrow2)), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.dao.SystemConversationDao
    public void insertConversations(List<SystemConversationModel> list) {
        this.f59386a.assertNotSuspendingTransaction();
        this.f59386a.beginTransaction();
        try {
            this.f59387b.insert(list);
            this.f59386a.setTransactionSuccessful();
        } finally {
            this.f59386a.endTransaction();
        }
    }
}
