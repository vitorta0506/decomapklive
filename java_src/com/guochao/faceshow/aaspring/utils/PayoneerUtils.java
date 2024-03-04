package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.CheckUrlData;
import com.guochao.faceshow.aaspring.beans.PayoneerData;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class PayoneerUtils {
    public static void getPayonnerLoginOrRegistRequest(final Activity activity, List<String> list, String str) {
        String str2 = "";
        for (int i9 = 0; i9 < list.size(); i9++) {
            if (i9 == list.size() - 2) {
                str2 = list.get(i9);
            }
        }
        new GetRequest("tokens/pay/payoneer/validPayeeId").D("payeeId", str).D("payoneerId", str2).M(new com.guochao.faceshow.aaspring.base.http.callback.c<CheckUrlData>() { // from class: com.guochao.faceshow.aaspring.utils.PayoneerUtils.1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<CheckUrlData> aVar) {
                activity.finish();
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable CheckUrlData checkUrlData, @NonNull FaceCastBaseResponse<CheckUrlData> faceCastBaseResponse) {
                if (checkUrlData != null) {
                    if (checkUrlData.getStatus() == 1) {
                        EventBus.getDefault().post(new PayoneerData());
                    } else if (checkUrlData.getStatus() == 2) {
                        com.guochao.faceshow.aaspring.modulars.personal.b.h(activity, 1);
                    }
                }
                activity.finish();
            }
        });
    }
}
