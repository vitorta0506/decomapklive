package com.guochao.faceshow.aaspring.db;

import android.util.ArrayMap;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import com.guochao.faceshow.aaspring.beans.GCEventModel;
import com.guochao.faceshow.aaspring.db.dao.GCEventDao;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Database(entities = {GCEventModel.class}, version = 1)
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;", "Landroidx/room/RoomDatabase;", "()V", "eventDao", "Lcom/guochao/faceshow/aaspring/db/dao/GCEventDao;", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class GCEventDatabase extends RoomDatabase {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ArrayMap<String, GCEventDatabase> map = new ArrayMap<>();

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0006R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/GCEventDatabase$Companion;", "", "()V", "map", "Landroid/util/ArrayMap;", "", "Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;", "getEventDb", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final GCEventDatabase getEventDb() {
            String str;
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            if (current == null || (str = current.getUserId()) == null) {
                str = V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND;
            }
            GCEventDatabase gCEventDatabase = (GCEventDatabase) GCEventDatabase.map.get(str);
            if (gCEventDatabase == null) {
                GCApplication app = GCApplication.app();
                RoomDatabase build = Room.databaseBuilder(app, GCEventDatabase.class, "event_model_db_" + str + ".db").setJournalMode(RoomDatabase.JournalMode.TRUNCATE).build();
                Intrinsics.checkNotNullExpressionValue(build, "databaseBuilder(\n       …nalMode.TRUNCATE).build()");
                GCEventDatabase gCEventDatabase2 = (GCEventDatabase) build;
                GCEventDatabase.map.put(str, gCEventDatabase2);
                return gCEventDatabase2;
            }
            return gCEventDatabase;
        }
    }

    @NotNull
    public abstract GCEventDao eventDao();
}
