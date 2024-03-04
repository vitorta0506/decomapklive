package com.twitter.sdk.android.core.services;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;
/* loaded from: classes4.dex */
public interface CollectionService {
    @GET("/1.1/collections/entries.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Object> collection(@Query("id") String str, @Query("count") Integer num, @Query("max_position") Long l10, @Query("min_position") Long l11);
}
