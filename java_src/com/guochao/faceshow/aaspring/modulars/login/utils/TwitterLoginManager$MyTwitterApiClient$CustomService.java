package com.guochao.faceshow.aaspring.modulars.login.utils;

import com.twitter.sdk.android.core.models.User;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;
/* loaded from: classes3.dex */
interface TwitterLoginManager$MyTwitterApiClient$CustomService {
    @GET("/1.1/users/show.json")
    Call<User> show(@Query("user_id") long j10);
}
