package com.snapchat.kit.sdk.core.config;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* loaded from: classes4.dex */
public interface ConfigClient {
    @POST("/v1/config")
    Call<e<c>> fetchConfig(@Body a aVar);
}
