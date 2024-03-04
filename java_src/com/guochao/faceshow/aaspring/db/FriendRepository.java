package com.guochao.faceshow.aaspring.db;

import android.content.Context;
import androidx.lifecycle.LiveData;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u001d\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0018\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0016J'\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00162\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tJ\u0018\u0010\u001c\u001a\u00020\u000e2\u0010\u0010\u001d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tJ\u0010\u0010\u001e\u001a\u00020\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\nJ\u001f\u0010 \u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010!\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\"J\u001f\u0010#\u001a\u00020\u000e2\b\u0010$\u001a\u0004\u0018\u00010\u00162\b\u0010!\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010%R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\u0007\u001a\u0014\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006&"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/FriendRepository;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "appDB", "Lcom/guochao/faceshow/aaspring/db/AppDatabase;", "userList", "Landroidx/lifecycle/LiveData;", "", "Lcom/guochao/faceshow/aaspring/db/FriendInfo;", "getUserList", "()Landroidx/lifecycle/LiveData;", "deleteAllFriend", "", "deleteAllFriendAsyn", "findUserByGroupId", "groupId", "", "(Ljava/lang/Integer;)Ljava/util/List;", "findUserById", Contants.USER_ID, "", "findUserByNameOrId", "key", "findUserByNameOrIdForGroup", "(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;", "getAllUser", "insertFriends", "list", "insertUser", "user", "undateGroupIdByGroupId", "newGroupId", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "updateGroupIdByFriendId", "friendId", "(Ljava/lang/String;Ljava/lang/Integer;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendRepository {
    @NotNull
    private final AppDatabase appDB;

    public FriendRepository(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.appDB = AppDatabase.Companion.getInstance(context);
    }

    public final void deleteAllFriend() {
        try {
            this.appDB.friendRoomDao().deleteAllFriend();
        } catch (Exception unused) {
        }
    }

    public final void deleteAllFriendAsyn() {
        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getIO(), null, new FriendRepository$deleteAllFriendAsyn$1(this, null), 2, null);
    }

    @Nullable
    public final List<FriendInfo> findUserByGroupId(@Nullable Integer num) {
        try {
            return this.appDB.friendRoomDao().findUserByGroupId(num);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public final FriendInfo findUserById(@Nullable String str) {
        try {
            return this.appDB.friendRoomDao().findUserById(str);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public final List<FriendInfo> findUserByNameOrId(@Nullable String str) {
        try {
            return this.appDB.friendRoomDao().findUserByNameOrId(str);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public final List<FriendInfo> findUserByNameOrIdForGroup(@Nullable String str, @Nullable Integer num) {
        try {
            return this.appDB.friendRoomDao().findUserByNameOrIdForGroup(str, num);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public final List<FriendInfo> getAllUser() {
        try {
            return this.appDB.friendRoomDao().getAllUser();
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public final LiveData<List<FriendInfo>> getUserList() {
        return this.appDB.friendRoomDao().getUserList();
    }

    public final void insertFriends(@Nullable List<FriendInfo> list) {
        try {
            this.appDB.friendRoomDao().insertFriends(list);
        } catch (Exception unused) {
        }
    }

    public final void insertUser(@Nullable FriendInfo friendInfo) {
        try {
            this.appDB.friendRoomDao().insertFriend(friendInfo);
        } catch (Exception unused) {
        }
    }

    public final void undateGroupIdByGroupId(@Nullable Integer num, @Nullable Integer num2) {
        try {
            this.appDB.friendRoomDao().updateGroupIdByGroupId(num, num2);
        } catch (Exception unused) {
        }
    }

    public final void updateGroupIdByFriendId(@Nullable String str, @Nullable Integer num) {
        try {
            this.appDB.friendRoomDao().updateGroupIdByFriendId(str, num);
        } catch (Exception unused) {
        }
    }
}
