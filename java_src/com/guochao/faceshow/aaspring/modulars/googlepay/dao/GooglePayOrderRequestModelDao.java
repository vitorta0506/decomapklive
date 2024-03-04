package com.guochao.faceshow.aaspring.modulars.googlepay.dao;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Dao
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\u0006\u0010\t\u001a\u00020\nH'¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;", "", "insert", "", "googlePayOrderRequestModel", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;", "remove", "savedModels", "", Contants.USER_ID, "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface GooglePayOrderRequestModelDao {
    @Insert
    void insert(@NotNull GooglePayOrderRequestModel googlePayOrderRequestModel);

    @Delete
    void remove(@NotNull GooglePayOrderRequestModel googlePayOrderRequestModel);

    @Query("SELECT * from google_pay_request_model_record WHERE userId = :userId ")
    @NotNull
    List<GooglePayOrderRequestModel> savedModels(@NotNull String str);
}
