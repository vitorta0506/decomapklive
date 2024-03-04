package com.twitter.sdk.android.core;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes4.dex */
public abstract class b<T> implements Callback<T> {
    public abstract void a(TwitterException twitterException);

    public abstract void b(i<T> iVar);

    @Override // retrofit2.Callback
    public final void onFailure(Call<T> call, Throwable th2) {
        a(new TwitterException("Request Failure", th2));
    }

    @Override // retrofit2.Callback
    public final void onResponse(Call<T> call, Response<T> response) {
        if (response.isSuccessful()) {
            b(new i<>(response.body(), response));
        } else {
            a(new TwitterApiException(response));
        }
    }
}
