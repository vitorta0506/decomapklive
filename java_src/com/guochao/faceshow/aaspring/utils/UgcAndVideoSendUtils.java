package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.utils.BaseConfig;
/* loaded from: classes3.dex */
public class UgcAndVideoSendUtils {

    /* loaded from: classes3.dex */
    public interface UgcAndVideoSendCallBack {
        void onFailure(String str);

        void onSuccessful();
    }

    public static void getUgcAndVideoPermissions(Context context, int i9, final UgcAndVideoSendCallBack ugcAndVideoSendCallBack) {
        if (!BaseConfig.isChinese()) {
            new PostRequest("tokens/user/info/getFreezeResult").O(context).B("type", i9).M(new com.guochao.faceshow.aaspring.base.http.callback.c<String>() { // from class: com.guochao.faceshow.aaspring.utils.UgcAndVideoSendUtils.1
                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<String> aVar) {
                    UgcAndVideoSendCallBack ugcAndVideoSendCallBack2 = UgcAndVideoSendCallBack.this;
                    if (ugcAndVideoSendCallBack2 != null) {
                        ugcAndVideoSendCallBack2.onFailure(aVar.c());
                    }
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                    UgcAndVideoSendCallBack ugcAndVideoSendCallBack2 = UgcAndVideoSendCallBack.this;
                    if (ugcAndVideoSendCallBack2 != null) {
                        ugcAndVideoSendCallBack2.onSuccessful();
                    }
                }
            });
        } else if (ugcAndVideoSendCallBack != null) {
            ugcAndVideoSendCallBack.onSuccessful();
        }
    }
}
