package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.twitter.sdk.android.core.models.SafeListAdapter;
import com.twitter.sdk.android.core.models.SafeMapAdapter;
import retrofit2.Response;
/* loaded from: classes4.dex */
public class TwitterApiException extends TwitterException {
    public static final int DEFAULT_ERROR_CODE = 0;
    private final com.twitter.sdk.android.core.models.a apiError;
    private final int code;
    private final Response response;
    private final r twitterRateLimit;

    public TwitterApiException(Response response) {
        this(response, readApiError(response), readApiRateLimit(response), response.code());
    }

    static String createExceptionMessage(int i9) {
        return "HTTP request failed, Status: " + i9;
    }

    static com.twitter.sdk.android.core.models.a parseApiError(String str) {
        try {
            com.twitter.sdk.android.core.models.b bVar = (com.twitter.sdk.android.core.models.b) new GsonBuilder().registerTypeAdapterFactory(new SafeListAdapter()).registerTypeAdapterFactory(new SafeMapAdapter()).create().fromJson(str, (Class<Object>) com.twitter.sdk.android.core.models.b.class);
            if (bVar.f35227a.isEmpty()) {
                return null;
            }
            return bVar.f35227a.get(0);
        } catch (JsonSyntaxException e10) {
            g g10 = l.g();
            g10.e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Invalid json: " + str, e10);
            return null;
        }
    }

    public static com.twitter.sdk.android.core.models.a readApiError(Response response) {
        try {
            String readUtf8 = response.errorBody().source().buffer().clone().readUtf8();
            if (TextUtils.isEmpty(readUtf8)) {
                return null;
            }
            return parseApiError(readUtf8);
        } catch (Exception e10) {
            l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Unexpected response", e10);
            return null;
        }
    }

    public static r readApiRateLimit(Response response) {
        return new r(response.headers());
    }

    public int getErrorCode() {
        com.twitter.sdk.android.core.models.a aVar = this.apiError;
        if (aVar == null) {
            return 0;
        }
        return aVar.f35226b;
    }

    public String getErrorMessage() {
        com.twitter.sdk.android.core.models.a aVar = this.apiError;
        if (aVar == null) {
            return null;
        }
        return aVar.f35225a;
    }

    public Response getResponse() {
        return this.response;
    }

    public int getStatusCode() {
        return this.code;
    }

    public r getTwitterRateLimit() {
        return this.twitterRateLimit;
    }

    TwitterApiException(Response response, com.twitter.sdk.android.core.models.a aVar, r rVar, int i9) {
        super(createExceptionMessage(i9));
        this.apiError = aVar;
        this.twitterRateLimit = rVar;
        this.code = i9;
        this.response = response;
    }
}
