package com.guochao.faceshow.aaspring.base.http.v2;

import b7.b;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bß\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012,\b\u0002\u0010\u0005\u001a&\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0006j\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u0007\u0012\u0018\b\u0002\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t\u0012\u0018\b\u0002\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t\u00128\b\u0002\u0010\u000b\u001a2\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0018\u00010\u0006j\u0018\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0018\u0001`\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\u0002\u0010\u0015J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0001HÆ\u0003J-\u0010*\u001a&\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0006j\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u0007HÆ\u0003J\u0019\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\tHÆ\u0003J\u0019\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\tHÆ\u0003J9\u0010-\u001a2\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0018\u00010\u0006j\u0018\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0018\u0001`\u0007HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\t\u00100\u001a\u00020\u0012HÆ\u0003Jç\u0001\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012,\b\u0002\u0010\u0005\u001a&\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0006j\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u00072\u0018\b\u0002\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t2\u0018\b\u0002\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t28\b\u0002\u0010\u000b\u001a2\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0018\u00010\u0006j\u0018\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0018\u0001`\u00072\b\b\u0002\u0010\u000e\u001a\u00020\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÆ\u0001J\u0013\u00102\u001a\u0002032\b\u00104\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00105\u001a\u000206HÖ\u0001J\t\u00107\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R5\u0010\u0005\u001a&\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0006j\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bRA\u0010\u000b\u001a2\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0018\u00010\u0006j\u0018\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0018\u0001`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR!\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R!\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001eR\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010 ¨\u00068"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;", "", "url", "", "body", "contentBody", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "headers", "", "queries", "fileBody", "", "Ljava/io/File;", PushConstants.MZ_PUSH_MESSAGE_METHOD, "scope", "Lkotlinx/coroutines/CoroutineScope;", "repeatInterval", "", "callbackHolder", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;", "(Ljava/lang/String;Ljava/lang/Object;Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;JLcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;)V", "getBody", "()Ljava/lang/Object;", "getCallbackHolder", "()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;", "getContentBody", "()Ljava/util/LinkedHashMap;", "getFileBody", "getHeaders", "()Ljava/util/Map;", "getMethod", "()Ljava/lang/String;", "getQueries", "getRepeatInterval", "()J", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "getUrl", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "lib_httpclient_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RequestParams {
    @Nullable
    private final Object body;
    @Nullable
    private final GCRequest.CallbackHolder callbackHolder;
    @Nullable
    private final LinkedHashMap<String, Object> contentBody;
    @Nullable
    private final LinkedHashMap<String, List<File>> fileBody;
    @Nullable
    private final Map<String, String> headers;
    @NotNull
    private final String method;
    @Nullable
    private final Map<String, String> queries;
    private final long repeatInterval;
    @Nullable
    private final CoroutineScope scope;
    @NotNull
    private final String url;

    public RequestParams(@NotNull String url, @Nullable Object obj, @Nullable LinkedHashMap<String, Object> linkedHashMap, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable LinkedHashMap<String, List<File>> linkedHashMap2, @NotNull String method, @Nullable CoroutineScope coroutineScope, long j10, @Nullable GCRequest.CallbackHolder callbackHolder) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        this.url = url;
        this.body = obj;
        this.contentBody = linkedHashMap;
        this.headers = map;
        this.queries = map2;
        this.fileBody = linkedHashMap2;
        this.method = method;
        this.scope = coroutineScope;
        this.repeatInterval = j10;
        this.callbackHolder = callbackHolder;
    }

    @NotNull
    public final String component1() {
        return this.url;
    }

    @Nullable
    public final GCRequest.CallbackHolder component10() {
        return this.callbackHolder;
    }

    @Nullable
    public final Object component2() {
        return this.body;
    }

    @Nullable
    public final LinkedHashMap<String, Object> component3() {
        return this.contentBody;
    }

    @Nullable
    public final Map<String, String> component4() {
        return this.headers;
    }

    @Nullable
    public final Map<String, String> component5() {
        return this.queries;
    }

    @Nullable
    public final LinkedHashMap<String, List<File>> component6() {
        return this.fileBody;
    }

    @NotNull
    public final String component7() {
        return this.method;
    }

    @Nullable
    public final CoroutineScope component8() {
        return this.scope;
    }

    public final long component9() {
        return this.repeatInterval;
    }

    @NotNull
    public final RequestParams copy(@NotNull String url, @Nullable Object obj, @Nullable LinkedHashMap<String, Object> linkedHashMap, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable LinkedHashMap<String, List<File>> linkedHashMap2, @NotNull String method, @Nullable CoroutineScope coroutineScope, long j10, @Nullable GCRequest.CallbackHolder callbackHolder) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        return new RequestParams(url, obj, linkedHashMap, map, map2, linkedHashMap2, method, coroutineScope, j10, callbackHolder);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RequestParams) {
            RequestParams requestParams = (RequestParams) obj;
            return Intrinsics.areEqual(this.url, requestParams.url) && Intrinsics.areEqual(this.body, requestParams.body) && Intrinsics.areEqual(this.contentBody, requestParams.contentBody) && Intrinsics.areEqual(this.headers, requestParams.headers) && Intrinsics.areEqual(this.queries, requestParams.queries) && Intrinsics.areEqual(this.fileBody, requestParams.fileBody) && Intrinsics.areEqual(this.method, requestParams.method) && Intrinsics.areEqual(this.scope, requestParams.scope) && this.repeatInterval == requestParams.repeatInterval && Intrinsics.areEqual(this.callbackHolder, requestParams.callbackHolder);
        }
        return false;
    }

    @Nullable
    public final Object getBody() {
        return this.body;
    }

    @Nullable
    public final GCRequest.CallbackHolder getCallbackHolder() {
        return this.callbackHolder;
    }

    @Nullable
    public final LinkedHashMap<String, Object> getContentBody() {
        return this.contentBody;
    }

    @Nullable
    public final LinkedHashMap<String, List<File>> getFileBody() {
        return this.fileBody;
    }

    @Nullable
    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    @NotNull
    public final String getMethod() {
        return this.method;
    }

    @Nullable
    public final Map<String, String> getQueries() {
        return this.queries;
    }

    public final long getRepeatInterval() {
        return this.repeatInterval;
    }

    @Nullable
    public final CoroutineScope getScope() {
        return this.scope;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = this.url.hashCode() * 31;
        Object obj = this.body;
        int hashCode2 = (hashCode + (obj == null ? 0 : obj.hashCode())) * 31;
        LinkedHashMap<String, Object> linkedHashMap = this.contentBody;
        int hashCode3 = (hashCode2 + (linkedHashMap == null ? 0 : linkedHashMap.hashCode())) * 31;
        Map<String, String> map = this.headers;
        int hashCode4 = (hashCode3 + (map == null ? 0 : map.hashCode())) * 31;
        Map<String, String> map2 = this.queries;
        int hashCode5 = (hashCode4 + (map2 == null ? 0 : map2.hashCode())) * 31;
        LinkedHashMap<String, List<File>> linkedHashMap2 = this.fileBody;
        int hashCode6 = (((hashCode5 + (linkedHashMap2 == null ? 0 : linkedHashMap2.hashCode())) * 31) + this.method.hashCode()) * 31;
        CoroutineScope coroutineScope = this.scope;
        int hashCode7 = (((hashCode6 + (coroutineScope == null ? 0 : coroutineScope.hashCode())) * 31) + b.a(this.repeatInterval)) * 31;
        GCRequest.CallbackHolder callbackHolder = this.callbackHolder;
        return hashCode7 + (callbackHolder != null ? callbackHolder.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "RequestParams(url=" + this.url + ", body=" + this.body + ", contentBody=" + this.contentBody + ", headers=" + this.headers + ", queries=" + this.queries + ", fileBody=" + this.fileBody + ", method=" + this.method + ", scope=" + this.scope + ", repeatInterval=" + this.repeatInterval + ", callbackHolder=" + this.callbackHolder + ')';
    }

    public /* synthetic */ RequestParams(String str, Object obj, LinkedHashMap linkedHashMap, Map map, Map map2, LinkedHashMap linkedHashMap2, String str2, CoroutineScope coroutineScope, long j10, GCRequest.CallbackHolder callbackHolder, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? null : obj, (i9 & 4) != 0 ? null : linkedHashMap, (i9 & 8) != 0 ? null : map, (i9 & 16) != 0 ? null : map2, (i9 & 32) != 0 ? null : linkedHashMap2, str2, (i9 & 128) != 0 ? null : coroutineScope, (i9 & 256) != 0 ? -1L : j10, (i9 & 512) != 0 ? null : callbackHolder);
    }
}
