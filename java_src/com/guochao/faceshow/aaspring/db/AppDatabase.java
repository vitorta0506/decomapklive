package com.guochao.faceshow.aaspring.db;

import android.content.Context;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import com.guochao.faceshow.aaspring.db.dao.SystemConversationDao;
import com.guochao.faceshow.aaspring.modulars.main.model.SystemConversationModel;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Database(entities = {FriendInfo.class, GroupInfo.class, SystemConversationModel.class}, exportSchema = false, version = 1)
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/AppDatabase;", "Landroidx/room/RoomDatabase;", "()V", "friendGroupRoomDao", "Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;", "friendRoomDao", "Lcom/guochao/faceshow/aaspring/db/FriendDao;", "systemConversationDao", "Lcom/guochao/faceshow/aaspring/db/dao/SystemConversationDao;", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class AppDatabase extends RoomDatabase {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private static AppDatabase instance;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;", "", "()V", "instance", "Lcom/guochao/faceshow/aaspring/db/AppDatabase;", "getInstance", "context", "Landroid/content/Context;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final synchronized AppDatabase getInstance(@NotNull Context context) {
            AppDatabase appDatabase;
            Intrinsics.checkNotNullParameter(context, "context");
            appDatabase = AppDatabase.instance;
            if (appDatabase == null) {
                RoomDatabase build = Room.databaseBuilder(context, AppDatabase.class, "user_friend_and_group_2.db").build();
                Companion companion = AppDatabase.Companion;
                AppDatabase.instance = (AppDatabase) build;
                Intrinsics.checkNotNullExpressionValue(build, "databaseBuilder(\n       …().also { instance = it }");
                appDatabase = (AppDatabase) build;
            }
            return appDatabase;
        }
    }

    @JvmStatic
    @NotNull
    public static final synchronized AppDatabase getInstance(@NotNull Context context) {
        AppDatabase companion;
        synchronized (AppDatabase.class) {
            companion = Companion.getInstance(context);
        }
        return companion;
    }

    @NotNull
    public abstract FriendGroupDao friendGroupRoomDao();

    @NotNull
    public abstract FriendDao friendRoomDao();

    @NotNull
    public abstract SystemConversationDao systemConversationDao();
}
