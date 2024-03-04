package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.l;
import java.util.List;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;
/* loaded from: classes4.dex */
public interface ListService {
    @GET("/1.1/lists/statuses.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<l>> statuses(@Query("list_id") Long l10, @Query("slug") String str, @Query("owner_screen_name") String str2, @Query("owner_id") Long l11, @Query("since_id") Long l12, @Query("max_id") Long l13, @Query("count") Integer num, @Query("include_entities") Boolean bool, @Query("include_rts") Boolean bool2);
}
