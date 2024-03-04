package com.facebook;

import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.google.android.material.timepicker.TimeModel;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 '2\u00020\u0001:\u0002'(B+\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB)\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rB!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010BA\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0012J\b\u0010!\u001a\u0004\u0018\u00010\fJ\b\u0010\"\u001a\u0004\u0018\u00010\tJ\u0010\u0010#\u001a\u0004\u0018\u00010\u00032\u0006\u0010$\u001a\u00020%J\b\u0010&\u001a\u00020\u0007H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 ¨\u0006)"}, d2 = {"Lcom/facebook/GraphResponse;", "", "request", "Lcom/facebook/GraphRequest;", "connection", "Ljava/net/HttpURLConnection;", "rawResponse", "", "graphObject", "Lorg/json/JSONObject;", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V", "graphObjects", "Lorg/json/JSONArray;", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V", "error", "Lcom/facebook/FacebookRequestError;", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V", "graphObjectArray", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V", "getConnection", "()Ljava/net/HttpURLConnection;", "getError", "()Lcom/facebook/FacebookRequestError;", "jsonArray", "getJsonArray", "()Lorg/json/JSONArray;", "jsonObject", "getJsonObject", "()Lorg/json/JSONObject;", "getRawResponse", "()Ljava/lang/String;", "getRequest", "()Lcom/facebook/GraphRequest;", "getJSONArray", "getJSONObject", "getRequestForPagedResults", HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, "Lcom/facebook/GraphResponse$PagingDirection;", "toString", "Companion", "PagingDirection", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class GraphResponse {
    @NotNull
    private static final String BODY_KEY = "body";
    @NotNull
    private static final String CODE_KEY = "code";
    @NotNull
    public static final String NON_JSON_RESPONSE_PROPERTY = "FACEBOOK_NON_JSON_RESULT";
    @NotNull
    private static final String RESPONSE_LOG_TAG = "Response";
    @NotNull
    public static final String SUCCESS_KEY = "success";
    @Nullable
    private final HttpURLConnection connection;
    @Nullable
    private final FacebookRequestError error;
    @Nullable
    private final JSONObject graphObject;
    @Nullable
    private final JSONArray graphObjectArray;
    @Nullable
    private final JSONArray jsonArray;
    @Nullable
    private final JSONObject jsonObject;
    @Nullable
    private final String rawResponse;
    @NotNull
    private final GraphRequest request;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private static final String TAG = GraphResponse.class.getCanonicalName();

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J*\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u0001H\u0002J.\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000b2\u0006\u0010\u0015\u001a\u00020\u0001H\u0002J/\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\u001bH\u0001¢\u0006\u0002\b\u001cJ-\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u001e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\u001bH\u0001¢\u0006\u0002\b\u001fJ#\u0010 \u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u001bH\u0001¢\u0006\u0002\b!R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/facebook/GraphResponse$Companion;", "", "()V", "BODY_KEY", "", "CODE_KEY", "NON_JSON_RESPONSE_PROPERTY", "RESPONSE_LOG_TAG", "SUCCESS_KEY", "TAG", "constructErrorResponses", "", "Lcom/facebook/GraphResponse;", "requests", "Lcom/facebook/GraphRequest;", "connection", "Ljava/net/HttpURLConnection;", "error", "Lcom/facebook/FacebookException;", "createResponseFromObject", "request", "sourceObject", "originalResult", "createResponsesFromObject", "createResponsesFromStream", "stream", "Ljava/io/InputStream;", "Lcom/facebook/GraphRequestBatch;", "createResponsesFromStream$facebook_core_release", "createResponsesFromString", "responseString", "createResponsesFromString$facebook_core_release", "fromHttpConnection", "fromHttpConnection$facebook_core_release", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final GraphResponse createResponseFromObject(GraphRequest graphRequest, HttpURLConnection httpURLConnection, Object NULL, Object obj) throws JSONException {
            if (NULL instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) NULL;
                FacebookRequestError checkResponseAndCreateError = FacebookRequestError.Companion.checkResponseAndCreateError(jSONObject, obj, httpURLConnection);
                if (checkResponseAndCreateError != null) {
                    Log.e(GraphResponse.TAG, checkResponseAndCreateError.toString());
                    if (checkResponseAndCreateError.getErrorCode() == 190) {
                        Utility utility = Utility.INSTANCE;
                        if (Utility.isCurrentAccessToken(graphRequest.getAccessToken())) {
                            if (checkResponseAndCreateError.getSubErrorCode() != 493) {
                                AccessToken.Companion.setCurrentAccessToken(null);
                            } else {
                                AccessToken.Companion companion = AccessToken.Companion;
                                AccessToken currentAccessToken = companion.getCurrentAccessToken();
                                if (Intrinsics.areEqual(currentAccessToken != null ? Boolean.valueOf(currentAccessToken.isExpired()) : null, Boolean.FALSE)) {
                                    companion.expireCurrentAccessToken();
                                }
                            }
                        }
                    }
                    return new GraphResponse(graphRequest, httpURLConnection, checkResponseAndCreateError);
                }
                Utility utility2 = Utility.INSTANCE;
                Object stringPropertyAsJSON = Utility.getStringPropertyAsJSON(jSONObject, GraphResponse.BODY_KEY, GraphResponse.NON_JSON_RESPONSE_PROPERTY);
                if (stringPropertyAsJSON instanceof JSONObject) {
                    JSONObject jSONObject2 = (JSONObject) stringPropertyAsJSON;
                    return new GraphResponse(graphRequest, httpURLConnection, jSONObject2.toString(), jSONObject2);
                } else if (stringPropertyAsJSON instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) stringPropertyAsJSON;
                    return new GraphResponse(graphRequest, httpURLConnection, jSONArray.toString(), jSONArray);
                } else {
                    NULL = JSONObject.NULL;
                    Intrinsics.checkNotNullExpressionValue(NULL, "NULL");
                }
            }
            if (NULL == JSONObject.NULL) {
                return new GraphResponse(graphRequest, httpURLConnection, NULL.toString(), (JSONObject) null);
            }
            throw new FacebookException(Intrinsics.stringPlus("Got unexpected object type in response, class: ", NULL.getClass().getSimpleName()));
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0056  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final java.util.List<com.facebook.GraphResponse> createResponsesFromObject(java.net.HttpURLConnection r9, java.util.List<com.facebook.GraphRequest> r10, java.lang.Object r11) throws com.facebook.FacebookException, org.json.JSONException {
            /*
                r8 = this;
                int r0 = r10.size()
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>(r0)
                r2 = 0
                r3 = 1
                if (r0 != r3) goto L51
                java.lang.Object r3 = r10.get(r2)
                com.facebook.GraphRequest r3 = (com.facebook.GraphRequest) r3
                org.json.JSONObject r4 = new org.json.JSONObject     // Catch: java.io.IOException -> L34 org.json.JSONException -> L43
                r4.<init>()     // Catch: java.io.IOException -> L34 org.json.JSONException -> L43
                java.lang.String r5 = "body"
                r4.put(r5, r11)     // Catch: java.io.IOException -> L34 org.json.JSONException -> L43
                if (r9 != 0) goto L22
                r5 = 200(0xc8, float:2.8E-43)
                goto L26
            L22:
                int r5 = r9.getResponseCode()     // Catch: java.io.IOException -> L34 org.json.JSONException -> L43
            L26:
                java.lang.String r6 = "code"
                r4.put(r6, r5)     // Catch: java.io.IOException -> L34 org.json.JSONException -> L43
                org.json.JSONArray r5 = new org.json.JSONArray     // Catch: java.io.IOException -> L34 org.json.JSONException -> L43
                r5.<init>()     // Catch: java.io.IOException -> L34 org.json.JSONException -> L43
                r5.put(r4)     // Catch: java.io.IOException -> L34 org.json.JSONException -> L43
                goto L52
            L34:
                r4 = move-exception
                com.facebook.GraphResponse r5 = new com.facebook.GraphResponse
                com.facebook.FacebookRequestError r6 = new com.facebook.FacebookRequestError
                r6.<init>(r9, r4)
                r5.<init>(r3, r9, r6)
                r1.add(r5)
                goto L51
            L43:
                r4 = move-exception
                com.facebook.GraphResponse r5 = new com.facebook.GraphResponse
                com.facebook.FacebookRequestError r6 = new com.facebook.FacebookRequestError
                r6.<init>(r9, r4)
                r5.<init>(r3, r9, r6)
                r1.add(r5)
            L51:
                r5 = r11
            L52:
                boolean r3 = r5 instanceof org.json.JSONArray
                if (r3 == 0) goto La4
                r3 = r5
                org.json.JSONArray r3 = (org.json.JSONArray) r3
                int r4 = r3.length()
                if (r4 != r0) goto La4
                int r0 = r3.length()
                if (r0 <= 0) goto La3
            L65:
                int r3 = r2 + 1
                java.lang.Object r4 = r10.get(r2)
                com.facebook.GraphRequest r4 = (com.facebook.GraphRequest) r4
                r6 = r5
                org.json.JSONArray r6 = (org.json.JSONArray) r6     // Catch: com.facebook.FacebookException -> L81 org.json.JSONException -> L90
                java.lang.Object r2 = r6.get(r2)     // Catch: com.facebook.FacebookException -> L81 org.json.JSONException -> L90
                java.lang.String r6 = "obj"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r6)     // Catch: com.facebook.FacebookException -> L81 org.json.JSONException -> L90
                com.facebook.GraphResponse r2 = r8.createResponseFromObject(r4, r9, r2, r11)     // Catch: com.facebook.FacebookException -> L81 org.json.JSONException -> L90
                r1.add(r2)     // Catch: com.facebook.FacebookException -> L81 org.json.JSONException -> L90
                goto L9e
            L81:
                r2 = move-exception
                com.facebook.GraphResponse r6 = new com.facebook.GraphResponse
                com.facebook.FacebookRequestError r7 = new com.facebook.FacebookRequestError
                r7.<init>(r9, r2)
                r6.<init>(r4, r9, r7)
                r1.add(r6)
                goto L9e
            L90:
                r2 = move-exception
                com.facebook.GraphResponse r6 = new com.facebook.GraphResponse
                com.facebook.FacebookRequestError r7 = new com.facebook.FacebookRequestError
                r7.<init>(r9, r2)
                r6.<init>(r4, r9, r7)
                r1.add(r6)
            L9e:
                if (r3 < r0) goto La1
                goto La3
            La1:
                r2 = r3
                goto L65
            La3:
                return r1
            La4:
                com.facebook.FacebookException r9 = new com.facebook.FacebookException
                java.lang.String r10 = "Unexpected number of results"
                r9.<init>(r10)
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphResponse.Companion.createResponsesFromObject(java.net.HttpURLConnection, java.util.List, java.lang.Object):java.util.List");
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> constructErrorResponses(@NotNull List<GraphRequest> requests, @Nullable HttpURLConnection httpURLConnection, @Nullable FacebookException facebookException) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(requests, "requests");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(requests, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (GraphRequest graphRequest : requests) {
                arrayList.add(new GraphResponse(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, facebookException)));
            }
            return arrayList;
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> createResponsesFromStream$facebook_core_release(@Nullable InputStream inputStream, @Nullable HttpURLConnection httpURLConnection, @NotNull GraphRequestBatch requests) throws FacebookException, JSONException, IOException {
            Intrinsics.checkNotNullParameter(requests, "requests");
            Utility utility = Utility.INSTANCE;
            String readStreamToString = Utility.readStreamToString(inputStream);
            Logger.Companion.log(LoggingBehavior.INCLUDE_RAW_RESPONSES, GraphResponse.RESPONSE_LOG_TAG, "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(readStreamToString.length()), readStreamToString);
            return createResponsesFromString$facebook_core_release(readStreamToString, httpURLConnection, requests);
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> createResponsesFromString$facebook_core_release(@NotNull String responseString, @Nullable HttpURLConnection httpURLConnection, @NotNull GraphRequestBatch requests) throws FacebookException, JSONException, IOException {
            Intrinsics.checkNotNullParameter(responseString, "responseString");
            Intrinsics.checkNotNullParameter(requests, "requests");
            Object resultObject = new JSONTokener(responseString).nextValue();
            Intrinsics.checkNotNullExpressionValue(resultObject, "resultObject");
            List<GraphResponse> createResponsesFromObject = createResponsesFromObject(httpURLConnection, requests, resultObject);
            Logger.Companion.log(LoggingBehavior.REQUESTS, GraphResponse.RESPONSE_LOG_TAG, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", requests.getId(), Integer.valueOf(responseString.length()), createResponsesFromObject);
            return createResponsesFromObject;
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> fromHttpConnection$facebook_core_release(@NotNull HttpURLConnection connection, @NotNull GraphRequestBatch requests) {
            List<GraphResponse> constructErrorResponses;
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(requests, "requests");
            InputStream inputStream = null;
            try {
                try {
                    try {
                        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                    } catch (Exception e10) {
                        Logger.Companion.log(LoggingBehavior.REQUESTS, GraphResponse.RESPONSE_LOG_TAG, "Response <Error>: %s", e10);
                        constructErrorResponses = constructErrorResponses(requests, connection, new FacebookException(e10));
                    }
                } catch (FacebookException e11) {
                    Logger.Companion.log(LoggingBehavior.REQUESTS, GraphResponse.RESPONSE_LOG_TAG, "Response <Error>: %s", e11);
                    constructErrorResponses = constructErrorResponses(requests, connection, e11);
                }
                if (FacebookSdk.isFullyInitialized()) {
                    if (connection.getResponseCode() >= 400) {
                        inputStream = connection.getErrorStream();
                    } else {
                        inputStream = connection.getInputStream();
                    }
                    constructErrorResponses = createResponsesFromStream$facebook_core_release(inputStream, connection, requests);
                    return constructErrorResponses;
                }
                Log.e(GraphResponse.TAG, "GraphRequest can't be used when Facebook SDK isn't fully initialized");
                throw new FacebookException("GraphRequest can't be used when Facebook SDK isn't fully initialized");
            } finally {
                Utility utility = Utility.INSTANCE;
                Utility.closeQuietly(null);
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/facebook/GraphResponse$PagingDirection;", "", "(Ljava/lang/String;I)V", "NEXT", "PREVIOUS", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum PagingDirection {
        NEXT,
        PREVIOUS;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static PagingDirection[] valuesCustom() {
            PagingDirection[] valuesCustom = values();
            return (PagingDirection[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    public GraphResponse(@NotNull GraphRequest request, @Nullable HttpURLConnection httpURLConnection, @Nullable String str, @Nullable JSONObject jSONObject, @Nullable JSONArray jSONArray, @Nullable FacebookRequestError facebookRequestError) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.request = request;
        this.connection = httpURLConnection;
        this.rawResponse = str;
        this.graphObject = jSONObject;
        this.graphObjectArray = jSONArray;
        this.error = facebookRequestError;
        this.jsonObject = jSONObject;
        this.jsonArray = jSONArray;
    }

    @JvmStatic
    @NotNull
    public static final List<GraphResponse> constructErrorResponses(@NotNull List<GraphRequest> list, @Nullable HttpURLConnection httpURLConnection, @Nullable FacebookException facebookException) {
        return Companion.constructErrorResponses(list, httpURLConnection, facebookException);
    }

    @Nullable
    public final HttpURLConnection getConnection() {
        return this.connection;
    }

    @Nullable
    public final FacebookRequestError getError() {
        return this.error;
    }

    @Nullable
    public final JSONArray getJSONArray() {
        return this.graphObjectArray;
    }

    @Nullable
    public final JSONObject getJSONObject() {
        return this.graphObject;
    }

    @Nullable
    public final JSONArray getJsonArray() {
        return this.jsonArray;
    }

    @Nullable
    public final JSONObject getJsonObject() {
        return this.jsonObject;
    }

    @Nullable
    public final String getRawResponse() {
        return this.rawResponse;
    }

    @NotNull
    public final GraphRequest getRequest() {
        return this.request;
    }

    @Nullable
    public final GraphRequest getRequestForPagedResults(@NotNull PagingDirection direction) {
        String str;
        JSONObject optJSONObject;
        Intrinsics.checkNotNullParameter(direction, "direction");
        JSONObject jSONObject = this.graphObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("paging")) == null) {
            str = null;
        } else if (direction == PagingDirection.NEXT) {
            str = optJSONObject.optString("next");
        } else {
            str = optJSONObject.optString("previous");
        }
        Utility utility = Utility.INSTANCE;
        if (Utility.isNullOrEmpty(str)) {
            return null;
        }
        if (str == null || !Intrinsics.areEqual(str, this.request.getUrlForSingleRequest())) {
            try {
                return new GraphRequest(this.request.getAccessToken(), new URL(str));
            } catch (MalformedURLException unused) {
                return null;
            }
        }
        return null;
    }

    @NotNull
    public String toString() {
        String str;
        try {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Locale locale = Locale.US;
            Object[] objArr = new Object[1];
            HttpURLConnection httpURLConnection = this.connection;
            objArr[0] = Integer.valueOf(httpURLConnection == null ? 200 : httpURLConnection.getResponseCode());
            str = String.format(locale, TimeModel.NUMBER_FORMAT, Arrays.copyOf(objArr, 1));
            Intrinsics.checkNotNullExpressionValue(str, "java.lang.String.format(locale, format, *args)");
        } catch (IOException unused) {
            str = "unknown";
        }
        String str2 = "{Response:  responseCode: " + str + ", graphObject: " + this.graphObject + ", error: " + this.error + "}";
        Intrinsics.checkNotNullExpressionValue(str2, "StringBuilder()\n        .append(\"{Response: \")\n        .append(\" responseCode: \")\n        .append(responseCode)\n        .append(\", graphObject: \")\n        .append(graphObject)\n        .append(\", error: \")\n        .append(error)\n        .append(\"}\")\n        .toString()");
        return str2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GraphResponse(@NotNull GraphRequest request, @Nullable HttpURLConnection httpURLConnection, @NotNull String rawResponse, @Nullable JSONObject jSONObject) {
        this(request, httpURLConnection, rawResponse, jSONObject, null, null);
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(rawResponse, "rawResponse");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GraphResponse(@NotNull GraphRequest request, @Nullable HttpURLConnection httpURLConnection, @NotNull String rawResponse, @NotNull JSONArray graphObjects) {
        this(request, httpURLConnection, rawResponse, null, graphObjects, null);
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(rawResponse, "rawResponse");
        Intrinsics.checkNotNullParameter(graphObjects, "graphObjects");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GraphResponse(@NotNull GraphRequest request, @Nullable HttpURLConnection httpURLConnection, @NotNull FacebookRequestError error) {
        this(request, httpURLConnection, null, null, null, error);
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
    }
}
