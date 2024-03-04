package v8;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.guochao.faceshow.aaspring.modulars.googlepay.dao.GooglePayOrderRequestModelDao;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class a implements GooglePayOrderRequestModelDao {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f59049a;

    /* renamed from: b  reason: collision with root package name */
    private final EntityInsertionAdapter<GooglePayOrderRequestModel> f59050b;

    /* renamed from: c  reason: collision with root package name */
    private final EntityDeletionOrUpdateAdapter<GooglePayOrderRequestModel> f59051c;

    /* renamed from: v8.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0667a extends EntityInsertionAdapter<GooglePayOrderRequestModel> {
        C0667a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, GooglePayOrderRequestModel googlePayOrderRequestModel) {
            if (googlePayOrderRequestModel.getOrderId() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, googlePayOrderRequestModel.getOrderId());
            }
            supportSQLiteStatement.bindLong(2, googlePayOrderRequestModel.getPurchaseTime());
            if (googlePayOrderRequestModel.getPurchaseJson() == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, googlePayOrderRequestModel.getPurchaseJson());
            }
            if (googlePayOrderRequestModel.getSignature() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, googlePayOrderRequestModel.getSignature());
            }
            supportSQLiteStatement.bindLong(5, googlePayOrderRequestModel.getSceneType());
            if (googlePayOrderRequestModel.getUserId() == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindString(6, googlePayOrderRequestModel.getUserId());
            }
            if (googlePayOrderRequestModel.getExtData() == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindString(7, googlePayOrderRequestModel.getExtData());
            }
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR ABORT INTO `google_pay_request_model_record` (`orderId`,`purchaseTime`,`purchaseJson`,`signature`,`sceneType`,`userId`,`extData`) VALUES (?,?,?,?,?,?,?)";
        }
    }

    /* loaded from: classes3.dex */
    class b extends EntityDeletionOrUpdateAdapter<GooglePayOrderRequestModel> {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, GooglePayOrderRequestModel googlePayOrderRequestModel) {
            if (googlePayOrderRequestModel.getOrderId() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, googlePayOrderRequestModel.getOrderId());
            }
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM `google_pay_request_model_record` WHERE `orderId` = ?";
        }
    }

    public a(RoomDatabase roomDatabase) {
        this.f59049a = roomDatabase;
        this.f59050b = new C0667a(roomDatabase);
        this.f59051c = new b(roomDatabase);
    }

    public static List<Class<?>> a() {
        return Collections.emptyList();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.dao.GooglePayOrderRequestModelDao
    public void insert(GooglePayOrderRequestModel googlePayOrderRequestModel) {
        this.f59049a.assertNotSuspendingTransaction();
        this.f59049a.beginTransaction();
        try {
            this.f59050b.insert((EntityInsertionAdapter<GooglePayOrderRequestModel>) googlePayOrderRequestModel);
            this.f59049a.setTransactionSuccessful();
        } finally {
            this.f59049a.endTransaction();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.dao.GooglePayOrderRequestModelDao
    public void remove(GooglePayOrderRequestModel googlePayOrderRequestModel) {
        this.f59049a.assertNotSuspendingTransaction();
        this.f59049a.beginTransaction();
        try {
            this.f59051c.handle(googlePayOrderRequestModel);
            this.f59049a.setTransactionSuccessful();
        } finally {
            this.f59049a.endTransaction();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.dao.GooglePayOrderRequestModelDao
    public List<GooglePayOrderRequestModel> savedModels(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * from google_pay_request_model_record WHERE userId = ? ", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.f59049a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f59049a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "orderId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "purchaseTime");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "purchaseJson");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "signature");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "sceneType");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, Contants.USER_ID);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "extData");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                GooglePayOrderRequestModel googlePayOrderRequestModel = new GooglePayOrderRequestModel();
                googlePayOrderRequestModel.setOrderId(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow));
                googlePayOrderRequestModel.setPurchaseTime(query.getLong(columnIndexOrThrow2));
                googlePayOrderRequestModel.setPurchaseJson(query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3));
                googlePayOrderRequestModel.setSignature(query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4));
                googlePayOrderRequestModel.setSceneType(query.getInt(columnIndexOrThrow5));
                googlePayOrderRequestModel.setUserId(query.isNull(columnIndexOrThrow6) ? null : query.getString(columnIndexOrThrow6));
                googlePayOrderRequestModel.setExtData(query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7));
                arrayList.add(googlePayOrderRequestModel);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }
}
