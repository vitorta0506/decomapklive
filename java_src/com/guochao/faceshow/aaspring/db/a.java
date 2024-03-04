package com.guochao.faceshow.aaspring.db;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
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
import java.util.concurrent.Callable;
/* loaded from: classes3.dex */
public final class a implements FriendDao {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f16368a;

    /* renamed from: b  reason: collision with root package name */
    private final EntityInsertionAdapter<FriendInfo> f16369b;

    /* renamed from: c  reason: collision with root package name */
    private final EntityInsertionAdapter<FriendInfo> f16370c;

    /* renamed from: d  reason: collision with root package name */
    private final EntityDeletionOrUpdateAdapter<FriendInfo> f16371d;

    /* renamed from: e  reason: collision with root package name */
    private final SharedSQLiteStatement f16372e;

    /* renamed from: f  reason: collision with root package name */
    private final SharedSQLiteStatement f16373f;

    /* renamed from: g  reason: collision with root package name */
    private final SharedSQLiteStatement f16374g;

    /* renamed from: com.guochao.faceshow.aaspring.db.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0151a extends EntityInsertionAdapter<FriendInfo> {
        C0151a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, FriendInfo friendInfo) {
            if (friendInfo.getFriendId() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, friendInfo.getFriendId());
            }
            supportSQLiteStatement.bindLong(2, friendInfo.getGroupId());
            if (friendInfo.getNickName() == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, friendInfo.getNickName());
            }
            if (friendInfo.getHeadImg() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, friendInfo.getHeadImg());
            }
            if (friendInfo.getSignature() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, friendInfo.getSignature());
            }
            if (friendInfo.getOnlineStatue() == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindLong(6, friendInfo.getOnlineStatue().intValue());
            }
            if (friendInfo.getOnlineTime() == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindLong(7, friendInfo.getOnlineTime().longValue());
            }
            if (friendInfo.getSendGiftNum() == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindLong(8, friendInfo.getSendGiftNum().intValue());
            }
            if (friendInfo.getCountryFlag() == null) {
                supportSQLiteStatement.bindNull(9);
            } else {
                supportSQLiteStatement.bindString(9, friendInfo.getCountryFlag());
            }
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR ABORT INTO `friend` (`friendId`,`groupId`,`nickName`,`headImg`,`signature`,`onlineStatue`,`onlineTime`,`sendGiftNum`,`countryFlag`) VALUES (?,?,?,?,?,?,?,?,?)";
        }
    }

    /* loaded from: classes3.dex */
    class b extends EntityInsertionAdapter<FriendInfo> {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, FriendInfo friendInfo) {
            if (friendInfo.getFriendId() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, friendInfo.getFriendId());
            }
            supportSQLiteStatement.bindLong(2, friendInfo.getGroupId());
            if (friendInfo.getNickName() == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, friendInfo.getNickName());
            }
            if (friendInfo.getHeadImg() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, friendInfo.getHeadImg());
            }
            if (friendInfo.getSignature() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, friendInfo.getSignature());
            }
            if (friendInfo.getOnlineStatue() == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindLong(6, friendInfo.getOnlineStatue().intValue());
            }
            if (friendInfo.getOnlineTime() == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindLong(7, friendInfo.getOnlineTime().longValue());
            }
            if (friendInfo.getSendGiftNum() == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindLong(8, friendInfo.getSendGiftNum().intValue());
            }
            if (friendInfo.getCountryFlag() == null) {
                supportSQLiteStatement.bindNull(9);
            } else {
                supportSQLiteStatement.bindString(9, friendInfo.getCountryFlag());
            }
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR REPLACE INTO `friend` (`friendId`,`groupId`,`nickName`,`headImg`,`signature`,`onlineStatue`,`onlineTime`,`sendGiftNum`,`countryFlag`) VALUES (?,?,?,?,?,?,?,?,?)";
        }
    }

    /* loaded from: classes3.dex */
    class c extends EntityDeletionOrUpdateAdapter<FriendInfo> {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, FriendInfo friendInfo) {
            if (friendInfo.getFriendId() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, friendInfo.getFriendId());
            }
            supportSQLiteStatement.bindLong(2, friendInfo.getGroupId());
            if (friendInfo.getNickName() == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, friendInfo.getNickName());
            }
            if (friendInfo.getHeadImg() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, friendInfo.getHeadImg());
            }
            if (friendInfo.getSignature() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, friendInfo.getSignature());
            }
            if (friendInfo.getOnlineStatue() == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindLong(6, friendInfo.getOnlineStatue().intValue());
            }
            if (friendInfo.getOnlineTime() == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindLong(7, friendInfo.getOnlineTime().longValue());
            }
            if (friendInfo.getSendGiftNum() == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindLong(8, friendInfo.getSendGiftNum().intValue());
            }
            if (friendInfo.getCountryFlag() == null) {
                supportSQLiteStatement.bindNull(9);
            } else {
                supportSQLiteStatement.bindString(9, friendInfo.getCountryFlag());
            }
            if (friendInfo.getFriendId() == null) {
                supportSQLiteStatement.bindNull(10);
            } else {
                supportSQLiteStatement.bindString(10, friendInfo.getFriendId());
            }
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE OR ABORT `friend` SET `friendId` = ?,`groupId` = ?,`nickName` = ?,`headImg` = ?,`signature` = ?,`onlineStatue` = ?,`onlineTime` = ?,`sendGiftNum` = ?,`countryFlag` = ? WHERE `friendId` = ?";
        }
    }

    /* loaded from: classes3.dex */
    class d extends SharedSQLiteStatement {
        d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM friend";
        }
    }

    /* loaded from: classes3.dex */
    class e extends SharedSQLiteStatement {
        e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE friend SET groupId = ? WHERE groupId =?";
        }
    }

    /* loaded from: classes3.dex */
    class f extends SharedSQLiteStatement {
        f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE friend SET groupId = ? WHERE friendId =?";
        }
    }

    /* loaded from: classes3.dex */
    class g implements Callable<List<FriendInfo>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RoomSQLiteQuery f16381a;

        g(RoomSQLiteQuery roomSQLiteQuery) {
            this.f16381a = roomSQLiteQuery;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public List<FriendInfo> call() throws Exception {
            Cursor query = DBUtil.query(a.this.f16368a, this.f16381a, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "friendId");
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "groupId");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "nickName");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "headImg");
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "signature");
                int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "onlineStatue");
                int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "onlineTime");
                int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "sendGiftNum");
                int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "countryFlag");
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    FriendInfo friendInfo = new FriendInfo();
                    friendInfo.setFriendId(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow));
                    friendInfo.setGroupId(query.getInt(columnIndexOrThrow2));
                    friendInfo.setNickName(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                    friendInfo.setHeadImg(query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4));
                    friendInfo.setSignature(query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5));
                    friendInfo.setOnlineStatue(query.isNull(columnIndexOrThrow6) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow6)));
                    friendInfo.setOnlineTime(query.isNull(columnIndexOrThrow7) ? null : Long.valueOf(query.getLong(columnIndexOrThrow7)));
                    friendInfo.setSendGiftNum(query.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow8)));
                    friendInfo.setCountryFlag(query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9));
                    arrayList.add(friendInfo);
                }
                return arrayList;
            } finally {
                query.close();
            }
        }

        protected void finalize() {
            this.f16381a.release();
        }
    }

    public a(RoomDatabase roomDatabase) {
        this.f16368a = roomDatabase;
        this.f16369b = new C0151a(roomDatabase);
        this.f16370c = new b(roomDatabase);
        this.f16371d = new c(roomDatabase);
        this.f16372e = new d(roomDatabase);
        this.f16373f = new e(roomDatabase);
        this.f16374g = new f(roomDatabase);
    }

    public static List<Class<?>> b() {
        return Collections.emptyList();
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public void deleteAllFriend() {
        this.f16368a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f16372e.acquire();
        this.f16368a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f16368a.setTransactionSuccessful();
        } finally {
            this.f16368a.endTransaction();
            this.f16372e.release(acquire);
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public List<FriendInfo> findUserByGroupId(Integer num) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM friend WHERE groupId = ? ORDER BY onlineStatue DESC,nickName ASC,sendGiftNum DESC", 1);
        if (num == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindLong(1, num.intValue());
        }
        this.f16368a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f16368a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "friendId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "groupId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "nickName");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "headImg");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "signature");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "onlineStatue");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "onlineTime");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "sendGiftNum");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "countryFlag");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                FriendInfo friendInfo = new FriendInfo();
                friendInfo.setFriendId(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow));
                friendInfo.setGroupId(query.getInt(columnIndexOrThrow2));
                friendInfo.setNickName(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                friendInfo.setHeadImg(query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4));
                friendInfo.setSignature(query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5));
                friendInfo.setOnlineStatue(query.isNull(columnIndexOrThrow6) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow6)));
                friendInfo.setOnlineTime(query.isNull(columnIndexOrThrow7) ? null : Long.valueOf(query.getLong(columnIndexOrThrow7)));
                friendInfo.setSendGiftNum(query.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow8)));
                friendInfo.setCountryFlag(query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9));
                arrayList.add(friendInfo);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public FriendInfo findUserById(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM friend WHERE friendId = ? LIMIT 1", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.f16368a.assertNotSuspendingTransaction();
        FriendInfo friendInfo = null;
        String string = null;
        Cursor query = DBUtil.query(this.f16368a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "friendId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "groupId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "nickName");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "headImg");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "signature");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "onlineStatue");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "onlineTime");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "sendGiftNum");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "countryFlag");
            if (query.moveToFirst()) {
                FriendInfo friendInfo2 = new FriendInfo();
                friendInfo2.setFriendId(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow));
                friendInfo2.setGroupId(query.getInt(columnIndexOrThrow2));
                friendInfo2.setNickName(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                friendInfo2.setHeadImg(query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4));
                friendInfo2.setSignature(query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5));
                friendInfo2.setOnlineStatue(query.isNull(columnIndexOrThrow6) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow6)));
                friendInfo2.setOnlineTime(query.isNull(columnIndexOrThrow7) ? null : Long.valueOf(query.getLong(columnIndexOrThrow7)));
                friendInfo2.setSendGiftNum(query.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow8)));
                if (!query.isNull(columnIndexOrThrow9)) {
                    string = query.getString(columnIndexOrThrow9);
                }
                friendInfo2.setCountryFlag(string);
                friendInfo = friendInfo2;
            }
            return friendInfo;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public List<FriendInfo> findUserByNameOrId(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM friend WHERE nickName LIKE '%' || ? || '%' OR friendId LIKE '%' || ? || '%' GROUP BY groupId", 2);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        if (str == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, str);
        }
        this.f16368a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f16368a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "friendId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "groupId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "nickName");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "headImg");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "signature");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "onlineStatue");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "onlineTime");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "sendGiftNum");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "countryFlag");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                FriendInfo friendInfo = new FriendInfo();
                friendInfo.setFriendId(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow));
                friendInfo.setGroupId(query.getInt(columnIndexOrThrow2));
                friendInfo.setNickName(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                friendInfo.setHeadImg(query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4));
                friendInfo.setSignature(query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5));
                friendInfo.setOnlineStatue(query.isNull(columnIndexOrThrow6) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow6)));
                friendInfo.setOnlineTime(query.isNull(columnIndexOrThrow7) ? null : Long.valueOf(query.getLong(columnIndexOrThrow7)));
                friendInfo.setSendGiftNum(query.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow8)));
                friendInfo.setCountryFlag(query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9));
                arrayList.add(friendInfo);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public List<FriendInfo> findUserByNameOrIdForGroup(String str, Integer num) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM friend WHERE groupId =? AND (nickName LIKE '%' || ? || '%' OR friendId LIKE '%' || ? || '%')", 3);
        if (num == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindLong(1, num.intValue());
        }
        if (str == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, str);
        }
        if (str == null) {
            acquire.bindNull(3);
        } else {
            acquire.bindString(3, str);
        }
        this.f16368a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f16368a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "friendId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "groupId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "nickName");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "headImg");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "signature");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "onlineStatue");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "onlineTime");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "sendGiftNum");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "countryFlag");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                FriendInfo friendInfo = new FriendInfo();
                friendInfo.setFriendId(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow));
                friendInfo.setGroupId(query.getInt(columnIndexOrThrow2));
                friendInfo.setNickName(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                friendInfo.setHeadImg(query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4));
                friendInfo.setSignature(query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5));
                friendInfo.setOnlineStatue(query.isNull(columnIndexOrThrow6) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow6)));
                friendInfo.setOnlineTime(query.isNull(columnIndexOrThrow7) ? null : Long.valueOf(query.getLong(columnIndexOrThrow7)));
                friendInfo.setSendGiftNum(query.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow8)));
                friendInfo.setCountryFlag(query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9));
                arrayList.add(friendInfo);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public List<FriendInfo> getAllUser() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM friend ORDER BY onlineStatue DESC,nickName COLLATE LOCALIZED ASC,sendGiftNum DESC", 0);
        this.f16368a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f16368a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "friendId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "groupId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "nickName");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "headImg");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "signature");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "onlineStatue");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "onlineTime");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "sendGiftNum");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "countryFlag");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                FriendInfo friendInfo = new FriendInfo();
                friendInfo.setFriendId(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow));
                friendInfo.setGroupId(query.getInt(columnIndexOrThrow2));
                friendInfo.setNickName(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                friendInfo.setHeadImg(query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4));
                friendInfo.setSignature(query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5));
                friendInfo.setOnlineStatue(query.isNull(columnIndexOrThrow6) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow6)));
                friendInfo.setOnlineTime(query.isNull(columnIndexOrThrow7) ? null : Long.valueOf(query.getLong(columnIndexOrThrow7)));
                friendInfo.setSendGiftNum(query.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow8)));
                friendInfo.setCountryFlag(query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9));
                arrayList.add(friendInfo);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public LiveData<List<FriendInfo>> getUserList() {
        return this.f16368a.getInvalidationTracker().createLiveData(new String[]{"friend"}, false, new g(RoomSQLiteQuery.acquire("SELECT * FROM friend ORDER BY onlineStatue DESC,nickName COLLATE LOCALIZED ASC,sendGiftNum DESC", 0)));
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public void insertFriend(FriendInfo friendInfo) {
        this.f16368a.assertNotSuspendingTransaction();
        this.f16368a.beginTransaction();
        try {
            this.f16369b.insert((EntityInsertionAdapter<FriendInfo>) friendInfo);
            this.f16368a.setTransactionSuccessful();
        } finally {
            this.f16368a.endTransaction();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public void insertFriends(List<FriendInfo> list) {
        this.f16368a.assertNotSuspendingTransaction();
        this.f16368a.beginTransaction();
        try {
            this.f16370c.insert(list);
            this.f16368a.setTransactionSuccessful();
        } finally {
            this.f16368a.endTransaction();
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public void updateGroupIdByFriendId(String str, Integer num) {
        this.f16368a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f16374g.acquire();
        if (num == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindLong(1, num.intValue());
        }
        if (str == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, str);
        }
        this.f16368a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f16368a.setTransactionSuccessful();
        } finally {
            this.f16368a.endTransaction();
            this.f16374g.release(acquire);
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public void updateGroupIdByGroupId(Integer num, Integer num2) {
        this.f16368a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f16373f.acquire();
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
        this.f16368a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f16368a.setTransactionSuccessful();
        } finally {
            this.f16368a.endTransaction();
            this.f16373f.release(acquire);
        }
    }

    @Override // com.guochao.faceshow.aaspring.db.FriendDao
    public void updateUser(FriendInfo friendInfo) {
        this.f16368a.assertNotSuspendingTransaction();
        this.f16368a.beginTransaction();
        try {
            this.f16371d.handle(friendInfo);
            this.f16368a.setTransactionSuccessful();
        } finally {
            this.f16368a.endTransaction();
        }
    }
}
