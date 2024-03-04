package com.huawei.hms.common.api;

import com.huawei.hms.support.api.client.Result;
/* loaded from: classes4.dex */
public class Response<T extends Result> {
    protected T result;

    public Response() {
    }

    protected T getResult() {
        return this.result;
    }

    public void setResult(T t10) {
        this.result = t10;
    }

    protected Response(T t10) {
        this.result = t10;
    }
}
