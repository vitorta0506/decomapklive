package com.facebook.appevents.cloudbridge;

import com.facebook.GraphRequest;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.UninitializedPropertyAccessException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import org.light.utils.FileUtils;
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010!\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001@B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J)\u0010 \u001a\u00020!2\u001a\u0010\"\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00010\u001b\u0018\u00010#H\u0000¢\u0006\u0002\b$J \u0010%\u001a\u00020!2\u0006\u0010&\u001a\u00020\f2\u0006\u0010'\u001a\u00020\f2\u0006\u0010(\u001a\u00020\fH\u0007J\n\u0010)\u001a\u0004\u0018\u00010\fH\u0007J=\u0010*\u001a\u00020!2\b\u0010+\u001a\u0004\u0018\u00010\u00052\u0018\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00010\u001b0#2\b\b\u0002\u0010-\u001a\u00020\u0005H\u0000¢\u0006\u0004\b.\u0010/J\u0085\u0001\u00100\u001a\u00020!2\u0006\u00101\u001a\u00020\f2\u0006\u00102\u001a\u00020\f2\b\u00103\u001a\u0004\u0018\u00010\f2\u0014\u00104\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010\u001b2\b\b\u0002\u00105\u001a\u00020\u00052<\u00106\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(:\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020!\u0018\u000107H\u0000¢\u0006\u0002\b;J$\u0010<\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00010\u001b\u0018\u00010#2\u0006\u0010=\u001a\u00020>H\u0002J\u0010\u0010?\u001a\u00020!2\u0006\u0010=\u001a\u00020>H\u0007R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R,\u0010\u0019\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00010\u001b0\u001aX\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006A"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;", "", "()V", "ACCEPTABLE_HTTP_RESPONSE", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "MAX_CACHED_TRANSFORMED_EVENTS", "MAX_PROCESSED_TRANSFORMED_EVENTS", "MAX_RETRY_COUNT", "RETRY_EVENTS_HTTP_RESPONSE", "TAG", "", "TIMEOUT_INTERVAL", "credentials", "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$CloudBridgeCredentials;", "getCredentials$facebook_core_release", "()Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$CloudBridgeCredentials;", "setCredentials$facebook_core_release", "(Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$CloudBridgeCredentials;)V", "currentRetryCount", "getCurrentRetryCount$facebook_core_release", "()I", "setCurrentRetryCount$facebook_core_release", "(I)V", "transformedEvents", "", "", "getTransformedEvents$facebook_core_release", "()Ljava/util/List;", "setTransformedEvents$facebook_core_release", "(Ljava/util/List;)V", "appendEvents", "", "events", "", "appendEvents$facebook_core_release", "configure", "datasetID", "url", "accessKey", "getCredentials", "handleError", "responseCode", "processedEvents", "maxRetryCount", "handleError$facebook_core_release", "(Ljava/lang/Integer;Ljava/util/List;I)V", "makeHttpRequest", "urlStr", "requestMethod", "jsonBodyStr", "requestProperties", "timeOutInterval", "requestCallback", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "requestResult", "makeHttpRequest$facebook_core_release", "transformAppEventRequestForCAPIG", "request", "Lcom/facebook/GraphRequest;", "transformGraphRequestAndSendToCAPIGEndPoint", "CloudBridgeCredentials", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventsConversionsAPITransformerWebRequests {
    @NotNull
    private static final HashSet<Integer> ACCEPTABLE_HTTP_RESPONSE;
    @NotNull
    public static final AppEventsConversionsAPITransformerWebRequests INSTANCE = new AppEventsConversionsAPITransformerWebRequests();
    public static final int MAX_CACHED_TRANSFORMED_EVENTS = 1000;
    private static final int MAX_PROCESSED_TRANSFORMED_EVENTS = 10;
    public static final int MAX_RETRY_COUNT = 5;
    @NotNull
    private static final HashSet<Integer> RETRY_EVENTS_HTTP_RESPONSE;
    @NotNull
    private static final String TAG = "CAPITransformerWebRequests";
    private static final int TIMEOUT_INTERVAL = 60000;
    public static CloudBridgeCredentials credentials;
    private static int currentRetryCount;
    public static List<Map<String, Object>> transformedEvents;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$CloudBridgeCredentials;", "", "datasetID", "", "cloudBridgeURL", "accessKey", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAccessKey", "()Ljava/lang/String;", "getCloudBridgeURL", "getDatasetID", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class CloudBridgeCredentials {
        @NotNull
        private final String accessKey;
        @NotNull
        private final String cloudBridgeURL;
        @NotNull
        private final String datasetID;

        public CloudBridgeCredentials(@NotNull String datasetID, @NotNull String cloudBridgeURL, @NotNull String accessKey) {
            Intrinsics.checkNotNullParameter(datasetID, "datasetID");
            Intrinsics.checkNotNullParameter(cloudBridgeURL, "cloudBridgeURL");
            Intrinsics.checkNotNullParameter(accessKey, "accessKey");
            this.datasetID = datasetID;
            this.cloudBridgeURL = cloudBridgeURL;
            this.accessKey = accessKey;
        }

        public static /* synthetic */ CloudBridgeCredentials copy$default(CloudBridgeCredentials cloudBridgeCredentials, String str, String str2, String str3, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                str = cloudBridgeCredentials.datasetID;
            }
            if ((i9 & 2) != 0) {
                str2 = cloudBridgeCredentials.cloudBridgeURL;
            }
            if ((i9 & 4) != 0) {
                str3 = cloudBridgeCredentials.accessKey;
            }
            return cloudBridgeCredentials.copy(str, str2, str3);
        }

        @NotNull
        public final String component1() {
            return this.datasetID;
        }

        @NotNull
        public final String component2() {
            return this.cloudBridgeURL;
        }

        @NotNull
        public final String component3() {
            return this.accessKey;
        }

        @NotNull
        public final CloudBridgeCredentials copy(@NotNull String datasetID, @NotNull String cloudBridgeURL, @NotNull String accessKey) {
            Intrinsics.checkNotNullParameter(datasetID, "datasetID");
            Intrinsics.checkNotNullParameter(cloudBridgeURL, "cloudBridgeURL");
            Intrinsics.checkNotNullParameter(accessKey, "accessKey");
            return new CloudBridgeCredentials(datasetID, cloudBridgeURL, accessKey);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof CloudBridgeCredentials) {
                CloudBridgeCredentials cloudBridgeCredentials = (CloudBridgeCredentials) obj;
                return Intrinsics.areEqual(this.datasetID, cloudBridgeCredentials.datasetID) && Intrinsics.areEqual(this.cloudBridgeURL, cloudBridgeCredentials.cloudBridgeURL) && Intrinsics.areEqual(this.accessKey, cloudBridgeCredentials.accessKey);
            }
            return false;
        }

        @NotNull
        public final String getAccessKey() {
            return this.accessKey;
        }

        @NotNull
        public final String getCloudBridgeURL() {
            return this.cloudBridgeURL;
        }

        @NotNull
        public final String getDatasetID() {
            return this.datasetID;
        }

        public int hashCode() {
            return (((this.datasetID.hashCode() * 31) + this.cloudBridgeURL.hashCode()) * 31) + this.accessKey.hashCode();
        }

        @NotNull
        public String toString() {
            return "CloudBridgeCredentials(datasetID=" + this.datasetID + ", cloudBridgeURL=" + this.cloudBridgeURL + ", accessKey=" + this.accessKey + ')';
        }
    }

    static {
        HashSet<Integer> hashSetOf;
        HashSet<Integer> hashSetOf2;
        hashSetOf = SetsKt__SetsKt.hashSetOf(200, 202);
        ACCEPTABLE_HTTP_RESPONSE = hashSetOf;
        hashSetOf2 = SetsKt__SetsKt.hashSetOf(503, 504, 429);
        RETRY_EVENTS_HTTP_RESPONSE = hashSetOf2;
    }

    private AppEventsConversionsAPITransformerWebRequests() {
    }

    @JvmStatic
    public static final void configure(@NotNull String datasetID, @NotNull String url, @NotNull String accessKey) {
        Intrinsics.checkNotNullParameter(datasetID, "datasetID");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(accessKey, "accessKey");
        Logger.Companion companion = Logger.Companion;
        LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
        AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = INSTANCE;
        companion.log(loggingBehavior, TAG, " \n\nCloudbridge Configured: \n================\ndatasetID: %s\nurl: %s\naccessKey: %s\n\n", datasetID, url, accessKey);
        appEventsConversionsAPITransformerWebRequests.setCredentials$facebook_core_release(new CloudBridgeCredentials(datasetID, url, accessKey));
        appEventsConversionsAPITransformerWebRequests.setTransformedEvents$facebook_core_release(new ArrayList());
    }

    @JvmStatic
    @Nullable
    public static final String getCredentials() {
        try {
            CloudBridgeCredentials credentials$facebook_core_release = INSTANCE.getCredentials$facebook_core_release();
            if (credentials$facebook_core_release == null) {
                return null;
            }
            return credentials$facebook_core_release.toString();
        } catch (UninitializedPropertyAccessException unused) {
            return null;
        }
    }

    public static /* synthetic */ void handleError$facebook_core_release$default(AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests, Integer num, List list, int i9, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            i9 = 5;
        }
        appEventsConversionsAPITransformerWebRequests.handleError$facebook_core_release(num, list, i9);
    }

    private final List<Map<String, Object>> transformAppEventRequestForCAPIG(GraphRequest graphRequest) {
        Map<String, ? extends Object> mutableMap;
        JSONObject graphObject = graphRequest.getGraphObject();
        if (graphObject != null) {
            Utility utility = Utility.INSTANCE;
            mutableMap = MapsKt__MapsKt.toMutableMap(Utility.convertJSONObjectToHashMap(graphObject));
            Object tag = graphRequest.getTag();
            Objects.requireNonNull(tag, "null cannot be cast to non-null type kotlin.Any");
            mutableMap.put("custom_events", tag);
            StringBuilder sb2 = new StringBuilder();
            for (String str : mutableMap.keySet()) {
                sb2.append(str);
                sb2.append(" : ");
                sb2.append(mutableMap.get(str));
                sb2.append(System.getProperty("line.separator"));
            }
            Logger.Companion.log(LoggingBehavior.APP_EVENTS, TAG, "\nGraph Request data: \n\n%s \n\n", sb2);
            return AppEventsConversionsAPITransformer.INSTANCE.conversionsAPICompatibleEvent$facebook_core_release(mutableMap);
        }
        return null;
    }

    @JvmStatic
    public static final void transformGraphRequestAndSendToCAPIGEndPoint(@NotNull final GraphRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Utility utility = Utility.INSTANCE;
        Utility.runOnNonUiThread(new Runnable() { // from class: com.facebook.appevents.cloudbridge.b
            @Override // java.lang.Runnable
            public final void run() {
                AppEventsConversionsAPITransformerWebRequests.m84transformGraphRequestAndSendToCAPIGEndPoint$lambda0(GraphRequest.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: transformGraphRequestAndSendToCAPIGEndPoint$lambda-0  reason: not valid java name */
    public static final void m84transformGraphRequestAndSendToCAPIGEndPoint$lambda0(GraphRequest request) {
        List slice;
        Map<String, String> mapOf;
        Intrinsics.checkNotNullParameter(request, "$request");
        String graphPath = request.getGraphPath();
        List split$default = graphPath == null ? null : StringsKt__StringsKt.split$default((CharSequence) graphPath, new String[]{FileUtils.RES_PREFIX_STORAGE}, false, 0, 6, (Object) null);
        if (split$default != null && split$default.size() == 2) {
            try {
                AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = INSTANCE;
                String str = appEventsConversionsAPITransformerWebRequests.getCredentials$facebook_core_release().getCloudBridgeURL() + "/capi/" + appEventsConversionsAPITransformerWebRequests.getCredentials$facebook_core_release().getDatasetID() + "/events";
                List<Map<String, Object>> transformAppEventRequestForCAPIG = appEventsConversionsAPITransformerWebRequests.transformAppEventRequestForCAPIG(request);
                if (transformAppEventRequestForCAPIG == null) {
                    return;
                }
                appEventsConversionsAPITransformerWebRequests.appendEvents$facebook_core_release(transformAppEventRequestForCAPIG);
                int min = Math.min(appEventsConversionsAPITransformerWebRequests.getTransformedEvents$facebook_core_release().size(), 10);
                slice = CollectionsKt___CollectionsKt.slice((List) appEventsConversionsAPITransformerWebRequests.getTransformedEvents$facebook_core_release(), new IntRange(0, min - 1));
                appEventsConversionsAPITransformerWebRequests.getTransformedEvents$facebook_core_release().subList(0, min).clear();
                JSONArray jSONArray = new JSONArray((Collection) slice);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("data", jSONArray);
                linkedHashMap.put("accessKey", appEventsConversionsAPITransformerWebRequests.getCredentials$facebook_core_release().getAccessKey());
                JSONObject jSONObject = new JSONObject(linkedHashMap);
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                String jSONObject2 = jSONObject.toString(2);
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "jsonBodyStr.toString(2)");
                companion.log(loggingBehavior, TAG, "\nTransformed_CAPI_JSON:\nURL: %s\nFROM=========\n%s\n>>>>>>TO>>>>>>\n%s\n=============\n", str, request, jSONObject2);
                String jSONObject3 = jSONObject.toString();
                mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.to("Content-Type", "application/json"));
                appEventsConversionsAPITransformerWebRequests.makeHttpRequest$facebook_core_release(str, "POST", jSONObject3, mapOf, TIMEOUT_INTERVAL, new AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1(slice));
                return;
            } catch (UninitializedPropertyAccessException e10) {
                Logger.Companion.log(LoggingBehavior.DEVELOPER_ERRORS, TAG, "\n Credentials not initialized Error when logging: \n%s", e10);
                return;
            }
        }
        Logger.Companion.log(LoggingBehavior.DEVELOPER_ERRORS, TAG, "\n GraphPathComponents Error when logging: \n%s", request);
    }

    public final void appendEvents$facebook_core_release(@Nullable List<? extends Map<String, ? extends Object>> list) {
        List drop;
        if (list != null) {
            getTransformedEvents$facebook_core_release().addAll(list);
        }
        int max = Math.max(0, getTransformedEvents$facebook_core_release().size() - 1000);
        if (max > 0) {
            drop = CollectionsKt___CollectionsKt.drop(getTransformedEvents$facebook_core_release(), max);
            setTransformedEvents$facebook_core_release(TypeIntrinsics.asMutableList(drop));
        }
    }

    @NotNull
    public final CloudBridgeCredentials getCredentials$facebook_core_release() {
        CloudBridgeCredentials cloudBridgeCredentials = credentials;
        if (cloudBridgeCredentials != null) {
            return cloudBridgeCredentials;
        }
        Intrinsics.throwUninitializedPropertyAccessException("credentials");
        throw null;
    }

    public final int getCurrentRetryCount$facebook_core_release() {
        return currentRetryCount;
    }

    @NotNull
    public final List<Map<String, Object>> getTransformedEvents$facebook_core_release() {
        List<Map<String, Object>> list = transformedEvents;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("transformedEvents");
        throw null;
    }

    public final void handleError$facebook_core_release(@Nullable Integer num, @NotNull List<? extends Map<String, ? extends Object>> processedEvents, int i9) {
        boolean contains;
        Intrinsics.checkNotNullParameter(processedEvents, "processedEvents");
        contains = CollectionsKt___CollectionsKt.contains(RETRY_EVENTS_HTTP_RESPONSE, num);
        if (contains) {
            if (currentRetryCount >= i9) {
                getTransformedEvents$facebook_core_release().clear();
                currentRetryCount = 0;
                return;
            }
            getTransformedEvents$facebook_core_release().addAll(0, processedEvents);
            currentRetryCount++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x009b A[Catch: IOException -> 0x00f7, UnknownHostException -> 0x010a, TRY_LEAVE, TryCatch #4 {UnknownHostException -> 0x010a, IOException -> 0x00f7, blocks: (B:3:0x0011, B:5:0x001c, B:15:0x0045, B:17:0x0051, B:22:0x0061, B:24:0x009b, B:29:0x00b5, B:34:0x00bc, B:35:0x00bf, B:36:0x00c0, B:38:0x00e3, B:8:0x0024, B:11:0x002b, B:12:0x002f, B:14:0x0035, B:39:0x00ef, B:40:0x00f6), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e3 A[Catch: IOException -> 0x00f7, UnknownHostException -> 0x010a, TryCatch #4 {UnknownHostException -> 0x010a, IOException -> 0x00f7, blocks: (B:3:0x0011, B:5:0x001c, B:15:0x0045, B:17:0x0051, B:22:0x0061, B:24:0x009b, B:29:0x00b5, B:34:0x00bc, B:35:0x00bf, B:36:0x00c0, B:38:0x00e3, B:8:0x0024, B:11:0x002b, B:12:0x002f, B:14:0x0035, B:39:0x00ef, B:40:0x00f6), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void makeHttpRequest$facebook_core_release(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull java.lang.String r9, @org.jetbrains.annotations.Nullable java.lang.String r10, @org.jetbrains.annotations.Nullable java.util.Map<java.lang.String, java.lang.String> r11, int r12, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super java.lang.String, ? super java.lang.Integer, kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests.makeHttpRequest$facebook_core_release(java.lang.String, java.lang.String, java.lang.String, java.util.Map, int, kotlin.jvm.functions.Function2):void");
    }

    public final void setCredentials$facebook_core_release(@NotNull CloudBridgeCredentials cloudBridgeCredentials) {
        Intrinsics.checkNotNullParameter(cloudBridgeCredentials, "<set-?>");
        credentials = cloudBridgeCredentials;
    }

    public final void setCurrentRetryCount$facebook_core_release(int i9) {
        currentRetryCount = i9;
    }

    public final void setTransformedEvents$facebook_core_release(@NotNull List<Map<String, Object>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        transformedEvents = list;
    }
}
