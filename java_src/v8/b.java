package v8;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.guochao.faceshow.aaspring.modulars.googlepay.dao.GoogleSubscribeRequestModelDao;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class b implements GoogleSubscribeRequestModelDao {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f59054a;

    /* renamed from: b  reason: collision with root package name */
    private final EntityInsertionAdapter<GoogleSubscribeRequestModel> f59055b;

    /* renamed from: c  reason: collision with root package name */
    private final EntityDeletionOrUpdateAdapter<GoogleSubscribeRequestModel> f59056c;

    /* loaded from: classes3.dex */
    class a extends EntityInsertionAdapter<GoogleSubscribeRequestModel> {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, GoogleSubscribeRequestModel googleSubscribeRequestModel) {
            if (googleSubscribeRequestModel.getSign() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, googleSubscribeRequestModel.getSign());
            }
            if (googleSubscribeRequestModel.getGoogleOrderId() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, googleSubscribeRequestModel.getGoogleOrderId());
            }
            if (googleSubscribeRequestModel.getTradeNo() == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, googleSubscribeRequestModel.getTradeNo());
            }
            if (googleSubscribeRequestModel.getSubscribeSeries() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, googleSubscribeRequestModel.getSubscribeSeries());
            }
            if (googleSubscribeRequestModel.getPurchaseToken() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, googleSubscribeRequestModel.getPurchaseToken());
            }
            supportSQLiteStatement.bindLong(6, googleSubscribeRequestModel.getFromType());
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR ABORT INTO `GoogleSubscribeRequestModel` (`sign`,`googleOrderId`,`tradeNo`,`subscribeSeries`,`purchaseToken`,`fromType`) VALUES (?,?,?,?,?,?)";
        }
    }

    /* renamed from: v8.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0668b extends EntityDeletionOrUpdateAdapter<GoogleSubscribeRequestModel> {
        C0668b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, GoogleSubscribeRequestModel googleSubscribeRequestModel) {
            if (googleSubscribeRequestModel.getGoogleOrderId() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, googleSubscribeRequestModel.getGoogleOrderId());
            }
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM `GoogleSubscribeRequestModel` WHERE `googleOrderId` = ?";
        }
    }

    public b(RoomDatabase roomDatabase) {
        this.f59054a = roomDatabase;
        this.f59055b = new a(roomDatabase);
        this.f59056c = new C0668b(roomDatabase);
    }

    public static List<Class<?>> a() {
        return Collections.emptyList();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.dao.GoogleSubscribeRequestModelDao
    public GoogleSubscribeRequestModel findByOrderId(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM googlesubscriberequestmodel where googleOrderId = ?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.f59054a.assertNotSuspendingTransaction();
        GoogleSubscribeRequestModel googleSubscribeRequestModel = null;
        Cursor query = DBUtil.query(this.f59054a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "sign");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "googleOrderId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "tradeNo");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "subscribeSeries");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "purchaseToken");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "fromType");
            if (query.moveToFirst()) {
                googleSubscribeRequestModel = new GoogleSubscribeRequestModel(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4), query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5), query.getInt(columnIndexOrThrow6));
            }
            return googleSubscribeRequestModel;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.dao.GoogleSubscribeRequestModelDao
    public void insert(GoogleSubscribeRequestModel googleSubscribeRequestModel) {
        this.f59054a.assertNotSuspendingTransaction();
        this.f59054a.beginTransaction();
        try {
            this.f59055b.insert((EntityInsertionAdapter<GoogleSubscribeRequestModel>) googleSubscribeRequestModel);
            this.f59054a.setTransactionSuccessful();
        } finally {
            this.f59054a.endTransaction();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.dao.GoogleSubscribeRequestModelDao
    public void remove(GoogleSubscribeRequestModel googleSubscribeRequestModel) {
        this.f59054a.assertNotSuspendingTransaction();
        this.f59054a.beginTransaction();
        try {
            this.f59056c.handle(googleSubscribeRequestModel);
            this.f59054a.setTransactionSuccessful();
        } finally {
            this.f59054a.endTransaction();
        }
    }
}
