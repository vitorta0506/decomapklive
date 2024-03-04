package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.SplashInfoData;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class SplashUtils {
    public SplashUtils(BaseActivity baseActivity) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean checkSplashIsActive(SplashInfoData splashInfoData) {
        SplashInfoData.ResultData resultData;
        return (splashInfoData == null || (resultData = splashInfoData.result) == null || splashInfoData.total == 0 || TextUtils.isEmpty(resultData.fileUrl)) ? false : true;
    }

    public static SplashInfoData getSplashData(Context context) {
        SplashInfoData splashInfoData;
        String str = SpUtils.getStr(context, Contants.WELCOME_PAGE);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            splashInfoData = (SplashInfoData) new Gson().fromJson(str, (Class<Object>) SplashInfoData.class);
        } catch (Exception unused) {
        }
        if (checkSplashIsActive(splashInfoData)) {
            return splashInfoData;
        }
        return null;
    }

    public static com.guochao.faceshow.aaspring.base.utils.a getSplashScreenInfo(Context context, final com.guochao.faceshow.aaspring.base.http.callback.c<SplashInfoData> cVar) {
        return new PostRequest("api/splashScreen/findSplashScreenToday/v2").O(context).K(false).M(new com.guochao.faceshow.aaspring.base.http.callback.c<SplashInfoData>() { // from class: com.guochao.faceshow.aaspring.utils.SplashUtils.1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(g7.a<SplashInfoData> aVar) {
                com.guochao.faceshow.aaspring.base.http.callback.c cVar2 = com.guochao.faceshow.aaspring.base.http.callback.c.this;
                if (cVar2 != null) {
                    cVar2.onFailure(aVar);
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(SplashInfoData splashInfoData, @NonNull FaceCastBaseResponse<SplashInfoData> faceCastBaseResponse) {
                if (splashInfoData.total == 0) {
                    com.guochao.faceshow.aaspring.base.http.callback.c cVar2 = com.guochao.faceshow.aaspring.base.http.callback.c.this;
                    if (cVar2 != null) {
                        cVar2.onResponse(null, faceCastBaseResponse);
                    }
                } else if (!SplashUtils.checkSplashIsActive(splashInfoData)) {
                    com.guochao.faceshow.aaspring.base.http.callback.c cVar3 = com.guochao.faceshow.aaspring.base.http.callback.c.this;
                    if (cVar3 != null) {
                        cVar3.onResponse(null, faceCastBaseResponse);
                    }
                } else {
                    com.guochao.faceshow.aaspring.base.http.callback.c cVar4 = com.guochao.faceshow.aaspring.base.http.callback.c.this;
                    if (cVar4 != null) {
                        cVar4.onResponse(splashInfoData, faceCastBaseResponse);
                    }
                }
            }
        });
    }
}
