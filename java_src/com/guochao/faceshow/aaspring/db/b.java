package com.guochao.faceshow.aaspring.db;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class b implements FriendGroupDao {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f16383a;

    /* renamed from: b  reason: collision with root package name */
    private final EntityInsertionAdapter<GroupInfo> f16384b;

    /* renamed from: c  reason: collision with root package name */
    private final EntityDeletionOrUpdateAdapter<GroupInfo> f16385c;

    /* renamed from: d  reason: collision with root package name */
    private final SharedSQLiteStatement f16386d;

    /* renamed from: e  reason: collision with root package name */
    private final SharedSQLiteStatement f16387e;

    /* renamed from: f  reason: collision with root package name */
    private final SharedSQLiteStatement f16388f;

    /* renamed from: g  reason: collision with root package name */
    private final SharedSQLiteStatement f16389g;

    /* renamed from: h  reason: collision with root package name */
    private final SharedSQLiteStatement f16390h;

    /* loaded from: classes3.dex */
    class a extends EntityInsertionAdapter<GroupInfo> {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, GroupInfo groupInfo) {
            supportSQLiteStatement.bindLong(1, groupInfo.getId());
            if (groupInfo.getName() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, groupInfo.getName());
            }
            if (groupInfo.getSortNum() == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindLong(3, groupInfo.getSortNum().intValue());
            }
            if (groupInfo.getMemberNum() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindLong(4, groupInfo.getMemberNum().intValue());
            }
            Integer valueOf = groupInfo.isSelect() == null ? null : Integer.valueOf(groupInfo.isSelect().booleanValue() ? 1 : 0);
            if (valueOf == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindLong(5, valueOf.intValue());
            }
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR REPLACE INTO `friendGroup` (`id`,`name`,`sortNum`,`memberNum`,`isSelect`) VALUES (?,?,?,?,?)";
        }
    }

    /* renamed from: com.guochao.faceshow.aaspring.db.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0152b extends EntityDeletionOrUpdateAdapter<GroupInfo> {
        C0152b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, GroupInfo groupInfo) {
            supportSQLiteStatement.bindLong(1, groupInfo.getId());
            if (groupInfo.getName() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, groupInfo.getName());
            }
            if (groupInfo.getSortNum() == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindLong(3, groupInfo.getSortNum().intValue());
            }
            if (groupInfo.getMemberNum() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindLong(4, groupInfo.getMemberNum().intValue());
            }
            Integer valueOf = groupInfo.isSelect() == null ? null : Integer.valueOf(groupInfo.isSelect().booleanValue() ? 1 : 0);
            if (valueOf == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindLong(5, valueOf.intValue());
            }
            supportSQLiteStatement.bindLong(6, groupInfo.getId());
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE OR ABORT `friendGroup` SET `id` = ?,`name` = ?,`sortNum` = ?,`memberNum` = ?,`isSelect` = ? WHERE `id` = ?";
        }
    }

    /* loaded from: classes3.dex */
    class c extends SharedSQLiteStatement {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM friendGroup";
        }
    }

    /* loaded from: classes3.dex */
    class d extends SharedSQLiteStatement {
        d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM friendGroup WHERE id =?";
        }
    }

    /* loaded from: classes3.dex */
    class e extends SharedSQLiteStatement {
        e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE friendGroup SET name = ? WHERE id =?";
        }
    }

    /* loaded from: classes3.dex */
    class f extends SharedSQLiteStatement {
        f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE friendGroup SET sortNum = ? WHERE id =?";
        }
    }

    /* loaded from: classes3.dex */
    class g extends SharedSQLiteStatement {
        g(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE friendGroup SET isSelect = ? WHERE id =?";
        }
    }

    public b(RoomDatabase roomDatabase) {
        this.f16383a = roomDatabase;
        this.f16384b = new a(roomDatabase);
        this.f16385c = new C0152b(roomDatabase);
        this.f16386d = new c(roomDatabase);
        this.f16387e = new d(roomDatabase);
        this.f16388f = new e(roomDatabase);
        this.f16389g = new f(roomDatabase);
        this.f16390h = new g(roomDatabase);
    }

    public static List<Class<?>> a() {
        return Collections.emptyList();
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendGroupDao
    public void deleteAllGroup() {
        this.f16383a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f16386d.acquire();
        this.f16383a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f16383a.setTransactionSuccessful();
        } finally {
            this.f16383a.endTransaction();
            this.f16386d.release(acquire);
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendGroupDao
    public void deleteGroupById(int i9) {
        this.f16383a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f16387e.acquire();
        acquire.bindLong(1, i9);
        this.f16383a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f16383a.setTransactionSuccessful();
        } finally {
            this.f16383a.endTransaction();
            this.f16387e.release(acquire);
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendGroupDao
    public GroupInfo findGroupById(Integer num) {
        boolean z10 = true;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM friendGroup WHERE id = ? LIMIT 1", 1);
        if (num == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindLong(1, num.intValue());
        }
        this.f16383a.assertNotSuspendingTransaction();
        GroupInfo groupInfo = null;
        Boolean valueOf = null;
        Cursor query = DBUtil.query(this.f16383a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "sortNum");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "memberNum");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "isSelect");
            if (query.moveToFirst()) {
                GroupInfo groupInfo2 = new GroupInfo();
                groupInfo2.setId(query.getInt(columnIndexOrThrow));
                groupInfo2.setName(query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2));
                groupInfo2.setSortNum(query.isNull(columnIndexOrThrow3) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow3)));
                groupInfo2.setMemberNum(query.isNull(columnIndexOrThrow4) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow4)));
                Integer valueOf2 = query.isNull(columnIndexOrThrow5) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow5));
                if (valueOf2 != null) {
                    if (valueOf2.intValue() == 0) {
                        z10 = false;
                    }
                    valueOf = Boolean.valueOf(z10);
                }
                groupInfo2.setSelect(valueOf);
                groupInfo = groupInfo2;
            }
            return groupInfo;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendGroupDao
    public List<GroupInfo> getGroupList() {
        Boolean valueOf;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM friendGroup ORDER BY sortNum", 0);
        this.f16383a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f16383a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "sortNum");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "memberNum");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "isSelect");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                GroupInfo groupInfo = new GroupInfo();
                groupInfo.setId(query.getInt(columnIndexOrThrow));
                groupInfo.setName(query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2));
                groupInfo.setSortNum(query.isNull(columnIndexOrThrow3) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow3)));
                groupInfo.setMemberNum(query.isNull(columnIndexOrThrow4) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow4)));
                Integer valueOf2 = query.isNull(columnIndexOrThrow5) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow5));
                if (valueOf2 == null) {
                    valueOf = null;
                } else {
                    valueOf = Boolean.valueOf(valueOf2.intValue() != 0);
                }
                groupInfo.setSelect(valueOf);
                arrayList.add(groupInfo);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendGroupDao
    public void insertGroup(GroupInfo groupInfo) {
        this.f16383a.assertNotSuspendingTransaction();
        this.f16383a.beginTransaction();
        try {
            this.f16384b.insert((EntityInsertionAdapter<GroupInfo>) groupInfo);
            this.f16383a.setTransactionSuccessful();
        } finally {
            this.f16383a.endTransaction();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendGroupDao
    public void insertGroups(List<GroupInfo> list) {
        this.f16383a.assertNotSuspendingTransaction();
        this.f16383a.beginTransaction();
        try {
            this.f16384b.insert(list);
            this.f16383a.setTransactionSuccessful();
        } finally {
            this.f16383a.endTransaction();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendGroupDao
    public void updateGroup(GroupInfo groupInfo) {
        this.f16383a.assertNotSuspendingTransaction();
        this.f16383a.beginTransaction();
        try {
            this.f16385c.handle(groupInfo);
            this.f16383a.setTransactionSuccessful();
        } finally {
            this.f16383a.endTransaction();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendGroupDao
    public void updateGroupName(Integer num, String str) {
        this.f16383a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f16388f.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        if (num == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindLong(2, num.intValue());
        }
        this.f16383a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f16383a.setTransactionSuccessful();
        } finally {
            this.f16383a.endTransaction();
            this.f16388f.release(acquire);
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendGroupDao
    public void updateIsExpaned(Boolean bool, Integer num) {
        this.f16383a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f16390h.acquire();
        Integer valueOf = bool == null ? null : Integer.valueOf(bool.booleanValue() ? 1 : 0);
        if (valueOf == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindLong(1, valueOf.intValue());
        }
        if (num == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindLong(2, num.intValue());
        }
        this.f16383a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f16383a.setTransactionSuccessful();
        } finally {
            this.f16383a.endTransaction();
            this.f16390h.release(acquire);
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendGroupDao
    public void updateSortNum(Integer num, Integer num2) {
        this.f16383a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f16389g.acquire();
        if (num2 == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindLong(1, num2.intValue());
        }
        if (num == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindLong(2, num.intValue());
        }
        this.f16383a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f16383a.setTransactionSuccessful();
        } finally {
            this.f16383a.endTransaction();
            this.f16389g.release(acquire);
        }
    }
}
