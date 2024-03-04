package com.guochao.faceshow.utils;

import android.app.Activity;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.LifecycleOwner;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class Ahttp {
    PostRequest mPostRequest;

    public Ahttp(Activity activity, String str, String str2) {
        PostRequest postRequest = new PostRequest(str);
        this.mPostRequest = postRequest;
        postRequest.O(activity);
        if (activity instanceof LifecycleOwner) {
            this.mPostRequest.P((LifecycleOwner) activity);
        }
    }

    public static boolean isNetError(String str) {
        return str.contains("UnknownHostException") || str.contains("ConnectException");
    }

    public void addFile(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.mPostRequest.R(str, new File(str2));
    }

    public void addFiles(String str, ArrayList<String> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new File(it.next()));
        }
        this.mPostRequest.S(str, arrayList2);
    }

    public void addStrParams(String str, String str2) {
        this.mPostRequest.D(str, str2);
    }

    public void hasFile() {
    }

    public <T> void send(final ArequestCallBack<T> arequestCallBack) {
        this.mPostRequest.M(new com.guochao.faceshow.aaspring.base.http.callback.c<String>() { // from class: com.guochao.faceshow.utils.Ahttp.1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.utils.a
            public void cancel() {
                ArequestCallBack arequestCallBack2 = arequestCallBack;
                if (arequestCallBack2 != null) {
                    arequestCallBack2.onCancelled();
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
            public void onCompleted() {
                super.onCompleted();
                ArequestCallBack arequestCallBack2 = arequestCallBack;
                if (arequestCallBack2 != null) {
                    arequestCallBack2.onFinished();
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<String> aVar) {
                ArequestCallBack arequestCallBack2 = arequestCallBack;
                if (arequestCallBack2 != null) {
                    arequestCallBack2.onError(aVar, false);
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                ArequestCallBack arequestCallBack2 = arequestCallBack;
                if (arequestCallBack2 != null) {
                    arequestCallBack2.onSuccessV2(str);
                }
            }
        });
    }
}
