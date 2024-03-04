package com.guochao.faceshow.aaspring.db;

import androidx.lifecycle.LiveData;
import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Dao
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0012\bg\u0018\u00002\u00020\u0001J\b\u0010\b\u001a\u00020\tH'J\u001f\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\fH'¢\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H'J\u001a\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0010H'J)\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u00102\b\u0010\u000b\u001a\u0004\u0018\u00010\fH'¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H'J\u0012\u0010\u0016\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005H'J\u001a\u0010\u0018\u001a\u00020\t2\u0010\u0010\u0019\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004H'J!\u0010\u001a\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u00102\b\u0010\u001c\u001a\u0004\u0018\u00010\fH'¢\u0006\u0002\u0010\u001dJ!\u0010\u001e\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\u001c\u001a\u0004\u0018\u00010\fH'¢\u0006\u0002\u0010\u001fJ\u0012\u0010 \u001a\u00020\t2\b\u0010!\u001a\u0004\u0018\u00010\u0005H'R&\u0010\u0002\u001a\u0014\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004\u0018\u00010\u00038gX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\"À\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/FriendDao;", "", "userList", "Landroidx/lifecycle/LiveData;", "", "Lcom/guochao/faceshow/aaspring/db/FriendInfo;", "getUserList", "()Landroidx/lifecycle/LiveData;", "deleteAllFriend", "", "findUserByGroupId", "groupId", "", "(Ljava/lang/Integer;)Ljava/util/List;", "findUserById", Contants.USER_ID, "", "findUserByNameOrId", "key", "findUserByNameOrIdForGroup", "(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;", "getAllUser", "insertFriend", "user", "insertFriends", "list", "updateGroupIdByFriendId", "friendId", "newGroupId", "(Ljava/lang/String;Ljava/lang/Integer;)V", "updateGroupIdByGroupId", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "updateUser", "note", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface FriendDao {
    @Query("DELETE FROM friend")
    void deleteAllFriend();

    @Query("SELECT * FROM friend WHERE groupId = :groupId ORDER BY onlineStatue DESC,nickName ASC,sendGiftNum DESC")
    @Nullable
    List<FriendInfo> findUserByGroupId(@Nullable Integer num);

    @Query("SELECT * FROM friend WHERE friendId = :userId LIMIT 1")
    @Nullable
    FriendInfo findUserById(@Nullable String str);

    @Query("SELECT * FROM friend WHERE nickName LIKE '%' || :key || '%' OR friendId LIKE '%' || :key || '%' GROUP BY groupId")
    @Nullable
    List<FriendInfo> findUserByNameOrId(@Nullable String str);

    @Query("SELECT * FROM friend WHERE groupId =:groupId AND (nickName LIKE '%' || :key || '%' OR friendId LIKE '%' || :key || '%')")
    @Nullable
    List<FriendInfo> findUserByNameOrIdForGroup(@Nullable String str, @Nullable Integer num);

    @Query("SELECT * FROM friend ORDER BY onlineStatue DESC,nickName COLLATE LOCALIZED ASC,sendGiftNum DESC")
    @NotNull
    List<FriendInfo> getAllUser();

    @Query("SELECT * FROM friend ORDER BY onlineStatue DESC,nickName COLLATE LOCALIZED ASC,sendGiftNum DESC")
    @Nullable
    LiveData<List<FriendInfo>> getUserList();

    @Insert
    void insertFriend(@Nullable FriendInfo friendInfo);

    @Insert(onConflict = 1)
    void insertFriends(@Nullable List<FriendInfo> list);

    @Query("UPDATE friend SET groupId = :newGroupId WHERE friendId =:friendId")
    void updateGroupIdByFriendId(@Nullable String str, @Nullable Integer num);

    @Query("UPDATE friend SET groupId = :newGroupId WHERE groupId =:groupId")
    void updateGroupIdByGroupId(@Nullable Integer num, @Nullable Integer num2);

    @Update
    void updateUser(@Nullable FriendInfo friendInfo);
}
