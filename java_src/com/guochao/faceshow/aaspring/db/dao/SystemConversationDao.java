package com.guochao.faceshow.aaspring.db.dao;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import com.guochao.faceshow.aaspring.modulars.main.model.SystemConversationModel;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Dao
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H'J\u0010\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H'J\u0016\u0010\u0007\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H'¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/dao/SystemConversationDao;", "", "deleteAll", "", "getAllSystemConversation", "", "Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;", "insertConversations", "conversations", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface SystemConversationDao {
    @Query("DELETE FROM system_conversation")
    void deleteAll();

    @Query("SELECT * FROM system_conversation ")
    @Nullable
    List<SystemConversationModel> getAllSystemConversation();

    @Insert(onConflict = 1)
    void insertConversations(@NotNull List<SystemConversationModel> list);
}
