package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.l;
import java.util.List;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;
/* loaded from: classes4.dex */
public interface FavoriteService {
    @FormUrlEncoded
    @POST("/1.1/favorites/create.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<l> create(@Field("id") Long l10, @Field("include_entities") Boolean bool);

    @FormUrlEncoded
    @POST("/1.1/favorites/destroy.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<l> destroy(@Field("id") Long l10, @Field("include_entities") Boolean bool);

    @GET("/1.1/favorites/list.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<l>> list(@Query("user_id") Long l10, @Query("screen_name") String str, @Query("count") Integer num, @Query("since_id") String str2, @Query("max_id") String str3, @Query("include_entities") Boolean bool);
}
