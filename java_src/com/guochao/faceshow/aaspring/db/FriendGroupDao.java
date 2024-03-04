package com.guochao.faceshow.aaspring.db;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Dao
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H'J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H'J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0006H'¢\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\fH'J\u0012\u0010\r\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\bH'J\u001a\u0010\u000f\u001a\u00020\u00032\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\fH'J\u0012\u0010\u0011\u001a\u00020\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\bH'J!\u0010\u0013\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H'¢\u0006\u0002\u0010\u0016J!\u0010\u0017\u001a\u00020\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\t\u001a\u0004\u0018\u00010\u0006H'¢\u0006\u0002\u0010\u001aJ!\u0010\u001b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006H'¢\u0006\u0002\u0010\u001d¨\u0006\u001eÀ\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;", "", "deleteAllGroup", "", "deleteGroupById", "id", "", "findGroupById", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "groupId", "(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "getGroupList", "", "insertGroup", "groupInfo", "insertGroups", "list", "updateGroup", "note", "updateGroupName", "name", "", "(Ljava/lang/Integer;Ljava/lang/String;)V", "updateIsExpaned", "isExpanded", "", "(Ljava/lang/Boolean;Ljava/lang/Integer;)V", "updateSortNum", "sortNum", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface FriendGroupDao {
    @Query("DELETE FROM friendGroup")
    void deleteAllGroup();

    @Query("DELETE FROM friendGroup WHERE id =:id")
    void deleteGroupById(int i9);

    @Query("SELECT * FROM friendGroup WHERE id = :groupId LIMIT 1")
    @Nullable
    GroupInfo findGroupById(@Nullable Integer num);

    @Query("SELECT * FROM friendGroup ORDER BY sortNum")
    @Nullable
    List<GroupInfo> getGroupList();

    @Insert(onConflict = 1)
    void insertGroup(@Nullable GroupInfo groupInfo);

    @Insert(onConflict = 1)
    void insertGroups(@Nullable List<GroupInfo> list);

    @Update
    void updateGroup(@Nullable GroupInfo groupInfo);

    @Query("UPDATE friendGroup SET name = :name WHERE id =:groupId")
    void updateGroupName(@Nullable Integer num, @Nullable String str);

    @Query("UPDATE friendGroup SET isSelect = :isExpanded WHERE id =:groupId")
    void updateIsExpaned(@Nullable Boolean bool, @Nullable Integer num);

    @Query("UPDATE friendGroup SET sortNum = :sortNum WHERE id =:groupId")
    void updateSortNum(@Nullable Integer num, @Nullable Integer num2);
}
