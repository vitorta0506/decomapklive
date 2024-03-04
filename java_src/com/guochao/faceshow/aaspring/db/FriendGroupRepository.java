package com.guochao.faceshow.aaspring.db;

import android.content.Context;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fJ\u0017\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u0012J\u0010\u0010\u0013\u001a\u00020\b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010\u0015\u001a\u00020\b2\u0010\u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u0012J\u001f\u0010\u0017\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u000f\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\f2\b\u0010\u001c\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u001dJ\u001f\u0010\u001e\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\f2\b\u0010\u001f\u001a\u0004\u0018\u00010 ¢\u0006\u0002\u0010!R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "appDB", "Lcom/guochao/faceshow/aaspring/db/AppDatabase;", "deleteAllGroup", "", "deleteAllGroupAsyn", "deleteGroup", "id", "", "findGroupById", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "groupId", "(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "getGroupList", "", "insertGroup", "groupInfo", "insertGroups", "list", "upDateIsExpanded", "isExpanded", "", "(Ljava/lang/Boolean;Ljava/lang/Integer;)V", "upDateSortNum", "sortNum", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "updateGroupName", "name", "", "(Ljava/lang/Integer;Ljava/lang/String;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendGroupRepository {
    @Nullable
    private final AppDatabase appDB;

    public FriendGroupRepository(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.appDB = AppDatabase.Companion.getInstance(context);
    }

    public final void deleteAllGroup() {
        FriendGroupDao friendGroupRoomDao;
        try {
            AppDatabase appDatabase = this.appDB;
            if (appDatabase == null || (friendGroupRoomDao = appDatabase.friendGroupRoomDao()) == null) {
                return;
            }
            friendGroupRoomDao.deleteAllGroup();
        } catch (Exception unused) {
        }
    }

    public final void deleteAllGroupAsyn() {
        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getIO(), null, new FriendGroupRepository$deleteAllGroupAsyn$1(this, null), 2, null);
    }

    public final void deleteGroup(int i9) {
        FriendGroupDao friendGroupRoomDao;
        try {
            AppDatabase appDatabase = this.appDB;
            if (appDatabase == null || (friendGroupRoomDao = appDatabase.friendGroupRoomDao()) == null) {
                return;
            }
            friendGroupRoomDao.deleteGroupById(i9);
        } catch (Exception unused) {
        }
    }

    @Nullable
    public final GroupInfo findGroupById(@Nullable Integer num) {
        FriendGroupDao friendGroupRoomDao;
        try {
            AppDatabase appDatabase = this.appDB;
            if (appDatabase == null || (friendGroupRoomDao = appDatabase.friendGroupRoomDao()) == null) {
                return null;
            }
            return friendGroupRoomDao.findGroupById(num);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public final List<GroupInfo> getGroupList() {
        FriendGroupDao friendGroupRoomDao;
        try {
            AppDatabase appDatabase = this.appDB;
            if (appDatabase == null || (friendGroupRoomDao = appDatabase.friendGroupRoomDao()) == null) {
                return null;
            }
            return friendGroupRoomDao.getGroupList();
        } catch (Exception unused) {
            return null;
        }
    }

    public final void insertGroup(@Nullable GroupInfo groupInfo) {
        FriendGroupDao friendGroupRoomDao;
        try {
            AppDatabase appDatabase = this.appDB;
            if (appDatabase == null || (friendGroupRoomDao = appDatabase.friendGroupRoomDao()) == null) {
                return;
            }
            friendGroupRoomDao.insertGroup(groupInfo);
        } catch (Exception unused) {
        }
    }

    public final void insertGroups(@Nullable List<GroupInfo> list) {
        FriendGroupDao friendGroupRoomDao;
        try {
            AppDatabase appDatabase = this.appDB;
            if (appDatabase == null || (friendGroupRoomDao = appDatabase.friendGroupRoomDao()) == null) {
                return;
            }
            friendGroupRoomDao.insertGroups(list);
        } catch (Exception unused) {
        }
    }

    public final void upDateIsExpanded(@Nullable Boolean bool, @Nullable Integer num) {
        FriendGroupDao friendGroupRoomDao;
        try {
            AppDatabase appDatabase = this.appDB;
            if (appDatabase == null || (friendGroupRoomDao = appDatabase.friendGroupRoomDao()) == null) {
                return;
            }
            friendGroupRoomDao.updateIsExpaned(bool, num);
        } catch (Exception unused) {
        }
    }

    public final void upDateSortNum(@Nullable Integer num, @Nullable Integer num2) {
        FriendGroupDao friendGroupRoomDao;
        try {
            AppDatabase appDatabase = this.appDB;
            if (appDatabase == null || (friendGroupRoomDao = appDatabase.friendGroupRoomDao()) == null) {
                return;
            }
            friendGroupRoomDao.updateSortNum(num, num2);
        } catch (Exception unused) {
        }
    }

    public final void updateGroupName(@Nullable Integer num, @Nullable String str) {
        FriendGroupDao friendGroupRoomDao;
        try {
            AppDatabase appDatabase = this.appDB;
            if (appDatabase == null || (friendGroupRoomDao = appDatabase.friendGroupRoomDao()) == null) {
                return;
            }
            friendGroupRoomDao.updateGroupName(num, str);
        } catch (Exception unused) {
        }
    }
}
