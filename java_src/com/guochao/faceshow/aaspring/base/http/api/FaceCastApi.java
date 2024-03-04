package com.guochao.faceshow.aaspring.base.http.api;

import io.reactivex.k;
import java.util.HashMap;
import java.util.Map;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HeaderMap;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.QueryMap;
import retrofit2.http.Streaming;
import retrofit2.http.Url;
@Deprecated
/* loaded from: classes3.dex */
public interface FaceCastApi {
    @Streaming
    @GET
    k<ResponseBody> download(@Url String str, @HeaderMap Map<String, String> map);

    @GET
    k<ResponseBody> get(@Url String str, @QueryMap Map<String, String> map, @HeaderMap Map<String, String> map2);

    @POST
    @Multipart
    k<ResponseBody> postData(@Url String str, @PartMap HashMap<String, RequestBody> hashMap, @Part MultipartBody.Part part, @HeaderMap Map<String, String> map);

    @FormUrlEncoded
    @POST
    k<ResponseBody> postData(@Url String str, @FieldMap Map<String, String> map, @HeaderMap Map<String, String> map2);

    @POST
    k<ResponseBody> postDataWithFile(@Url String str, @Body RequestBody requestBody, @HeaderMap Map<String, String> map);

    @POST
    k<ResponseBody> postJson(@Url String str, @Body RequestBody requestBody, @HeaderMap Map<String, String> map);
}
