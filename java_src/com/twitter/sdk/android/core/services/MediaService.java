package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.i;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
/* loaded from: classes4.dex */
public interface MediaService {
    @POST("https://upload.twitter.com/1.1/media/upload.json")
    @Multipart
    Call<i> upload(@Part("media") RequestBody requestBody, @Part("media_data") RequestBody requestBody2, @Part("additional_owners") RequestBody requestBody3);
}
