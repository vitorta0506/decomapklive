package com.guochao.faceshow.aaspring.base.http.callback;

import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
/* loaded from: classes3.dex */
public abstract class d<T> extends c<T> {
    public void onCancel(FaceCastBaseResponse<T> faceCastBaseResponse) {
    }

    public abstract void onProgress(long j10, long j11, double d10);
}
