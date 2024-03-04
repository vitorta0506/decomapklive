package com.guochao.faceshow.aaspring.db.dao;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import com.guochao.faceshow.aaspring.beans.GCEventModel;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Dao
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H'J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H'J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\tH'¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/dao/GCEventDao;", "", "()V", "clear", "", "insert", "eventModel", "Lcom/guochao/faceshow/aaspring/beans/GCEventModel;", "totalList", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class GCEventDao {
    @Query("delete from gc_event_model")
    public abstract void clear();

    @Insert(onConflict = 1)
    public abstract void insert(@NotNull GCEventModel gCEventModel);

    @Query("select * from gc_event_model")
    @NotNull
    public abstract List<GCEventModel> totalList();
}
