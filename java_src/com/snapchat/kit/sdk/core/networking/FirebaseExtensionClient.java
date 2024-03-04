package com.snapchat.kit.sdk.core.networking;

import com.snapchat.kit.sdk.core.models.a;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* loaded from: classes4.dex */
public interface FirebaseExtensionClient {
    @POST(".")
    Call<String> getCustomToken(@Body a aVar);
}
