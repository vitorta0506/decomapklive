package com.guochao.faceshow.aaspring.modulars.googlepay.dao;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Dao
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H'J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H'¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;", "", "findByOrderId", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;", "googleOrderId", "", "insert", "", "requestModel", "remove", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface GoogleSubscribeRequestModelDao {
    @Query("SELECT * FROM googlesubscriberequestmodel where googleOrderId = :googleOrderId")
    @Nullable
    GoogleSubscribeRequestModel findByOrderId(@NotNull String str);

    @Insert
    void insert(@NotNull GoogleSubscribeRequestModel googleSubscribeRequestModel);

    @Delete
    void remove(@NotNull GoogleSubscribeRequestModel googleSubscribeRequestModel);
}
