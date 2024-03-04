package com.guochao.faceshow.aaspring.modulars.googlepay.database;

import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.modulars.googlepay.dao.GooglePayOrderRequestModelDao;
import com.guochao.faceshow.aaspring.modulars.googlepay.dao.GoogleSubscribeRequestModelDao;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Database(entities = {GooglePayOrderRequestModel.class, GoogleSubscribeRequestModel.class}, exportSchema = true, version = 2)
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000 \u00072\u00020\u0001:\u0002\u0007\bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0006H&¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;", "Landroidx/room/RoomDatabase;", "()V", "getPayOrderDao", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;", "getSubscribeDao", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;", "Companion", "Migration1To2", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class GooglePayOrderRequestModelDatabase extends RoomDatabase {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private static GooglePayOrderRequestModelDatabase _instance;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002R\u001a\u0010\u0006\u001a\u00020\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Companion;", "", "()V", "_instance", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;", "get_instance$annotations", "instance", "getInstance$annotations", "getInstance", "()Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getInstance$annotations() {
        }

        @JvmStatic
        private static /* synthetic */ void get_instance$annotations() {
        }

        @NotNull
        public final GooglePayOrderRequestModelDatabase getInstance() {
            GooglePayOrderRequestModelDatabase googlePayOrderRequestModelDatabase = GooglePayOrderRequestModelDatabase._instance;
            if (googlePayOrderRequestModelDatabase == null) {
                RoomDatabase build = Room.databaseBuilder(BaseApplication.getInstance(), GooglePayOrderRequestModelDatabase.class, "google_pay_order.db").addMigrations(new Migration1To2()).build();
                GooglePayOrderRequestModelDatabase googlePayOrderRequestModelDatabase2 = (GooglePayOrderRequestModelDatabase) build;
                Companion companion = GooglePayOrderRequestModelDatabase.Companion;
                GooglePayOrderRequestModelDatabase._instance = googlePayOrderRequestModelDatabase2;
                Intrinsics.checkNotNullExpressionValue(build, "databaseBuilder(\n       …).also { _instance = it }");
                return googlePayOrderRequestModelDatabase2;
            }
            return googlePayOrderRequestModelDatabase;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Migration1To2;", "Landroidx/room/migration/Migration;", "()V", "migrate", "", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Migration1To2 extends Migration {
        public Migration1To2() {
            super(1, 2);
        }

        @Override // androidx.room.migration.Migration
        public void migrate(@NotNull SupportSQLiteDatabase database) {
            Intrinsics.checkNotNullParameter(database, "database");
            database.execSQL("ALTER TABLE google_pay_request_model_record  ADD COLUMN extData TEXT");
        }
    }

    @NotNull
    public static final GooglePayOrderRequestModelDatabase getInstance() {
        return Companion.getInstance();
    }

    @NotNull
    public abstract GooglePayOrderRequestModelDao getPayOrderDao();

    @NotNull
    public abstract GoogleSubscribeRequestModelDao getSubscribeDao();
}
