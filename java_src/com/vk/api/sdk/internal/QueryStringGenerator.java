package com.vk.api.sdk.internal;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import com.guochao.faceshow.utils.TCConstants;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.vk.api.sdk.utils.ThreadLocalDelegate;
import com.vk.api.sdk.utils.ThreadLocalDelegateKt;
import com.vk.api.sdk.utils.VKUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JT\u0010\n\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u000e\u001a\u00020\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u001a\b\u0002\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00130\rJh\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u000e\u001a\u00020\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u001a\b\u0002\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00130\rJF\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000b2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u001a\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u0011JH\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u000b2\u001a\b\u0002\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00130\rR\u001f\u0010\u0003\u001a\u00060\u0004j\u0002`\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001c"}, d2 = {"Lcom/vk/api/sdk/internal/QueryStringGenerator;", "", "()V", "strBuilder", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "getStrBuilder", "()Ljava/lang/StringBuilder;", "strBuilder$delegate", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "buildNotSignedQueryString", "", "args", "", "version", "accessToken", "appId", "", "arrayArgs", "", "buildSignedQueryString", TCConstants.VIDEO_RECORD_VIDEPATH, "secret", "buildSignedQueryStringForMethod", "methodName", "methodArgs", "methodVersion", "buildSignedQueryStringForce", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class QueryStringGenerator {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(QueryStringGenerator.class, "strBuilder", "getStrBuilder()Ljava/lang/StringBuilder;", 0))};
    @NotNull
    public static final QueryStringGenerator INSTANCE = new QueryStringGenerator();
    @NotNull
    private static final ThreadLocalDelegate strBuilder$delegate = ThreadLocalDelegateKt.threadLocal(new Function0<StringBuilder>() { // from class: com.vk.api.sdk.internal.QueryStringGenerator$strBuilder$2
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final StringBuilder invoke() {
            return new StringBuilder();
        }
    });

    private QueryStringGenerator() {
    }

    public static /* synthetic */ String buildNotSignedQueryString$default(QueryStringGenerator queryStringGenerator, Map map, String str, String str2, int i9, Map map2, int i10, Object obj) {
        Map emptyMap;
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        String str3 = str2;
        int i11 = (i10 & 8) != 0 ? 0 : i9;
        Map map3 = map2;
        if ((i10 & 16) != 0) {
            emptyMap = MapsKt__MapsKt.emptyMap();
            map3 = emptyMap;
        }
        return queryStringGenerator.buildNotSignedQueryString(map, str, str3, i11, map3);
    }

    public static /* synthetic */ String buildSignedQueryString$default(QueryStringGenerator queryStringGenerator, String str, Map map, String str2, String str3, String str4, int i9, Map map2, int i10, Object obj) {
        Map map3;
        Map emptyMap;
        String str5 = (i10 & 8) != 0 ? null : str3;
        String str6 = (i10 & 16) != 0 ? null : str4;
        int i11 = (i10 & 32) != 0 ? 0 : i9;
        if ((i10 & 64) != 0) {
            emptyMap = MapsKt__MapsKt.emptyMap();
            map3 = emptyMap;
        } else {
            map3 = map2;
        }
        return queryStringGenerator.buildSignedQueryString(str, map, str2, str5, str6, i11, map3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String buildSignedQueryStringForce$default(QueryStringGenerator queryStringGenerator, String str, Map map, String str2, Map map2, int i9, Object obj) {
        if ((i9 & 8) != 0) {
            map2 = MapsKt__MapsKt.emptyMap();
        }
        return queryStringGenerator.buildSignedQueryStringForce(str, map, str2, map2);
    }

    private final StringBuilder getStrBuilder() {
        return (StringBuilder) strBuilder$delegate.getValue(this, $$delegatedProperties[0]);
    }

    @NotNull
    public final String buildNotSignedQueryString(@NotNull Map<String, String> args, @NotNull String version, @Nullable String str, int i9, @NotNull Map<String, ? extends List<String>> arrayArgs) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(arrayArgs, "arrayArgs");
        return buildSignedQueryString("", args, version, str, null, i9, arrayArgs);
    }

    @NotNull
    public final String buildSignedQueryString(@NotNull String path, @NotNull Map<String, String> args, @NotNull String version, @Nullable String str, @Nullable String str2, int i9, @NotNull Map<String, ? extends List<String>> arrayArgs) {
        Map<String, String> mutableMap;
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(arrayArgs, "arrayArgs");
        mutableMap = MapsKt__MapsKt.toMutableMap(args);
        mutableMap.put(NotifyType.VIBRATE, version);
        mutableMap.put(ProxyConfig.MATCH_HTTPS, "1");
        if (!(str == null || str.length() == 0)) {
            mutableMap.put("access_token", str);
        } else if (i9 != 0) {
            mutableMap.put("api_id", String.valueOf(i9));
        }
        return buildSignedQueryStringForce(path, mutableMap, str2, arrayArgs);
    }

    @NotNull
    public final String buildSignedQueryStringForMethod(@NotNull String methodName, @NotNull Map<String, String> methodArgs, @NotNull String methodVersion, @Nullable String str, @Nullable String str2, int i9) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(methodArgs, "methodArgs");
        Intrinsics.checkNotNullParameter(methodVersion, "methodVersion");
        return buildSignedQueryString$default(this, Intrinsics.stringPlus("/method/", methodName), methodArgs, methodVersion, str, str2, i9, null, 64, null);
    }

    @NotNull
    public final String buildSignedQueryStringForce(@NotNull String path, @NotNull Map<String, String> args, @Nullable String str, @NotNull Map<String, ? extends List<String>> arrayArgs) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(arrayArgs, "arrayArgs");
        Uri.Builder builder = new Uri.Builder();
        Iterator<T> it = args.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!Intrinsics.areEqual(entry.getKey(), "sig")) {
                builder.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
            }
        }
        Iterator<T> it2 = arrayArgs.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            String str2 = (String) entry2.getKey();
            for (String str3 : (List) entry2.getValue()) {
                builder.appendQueryParameter(Intrinsics.stringPlus(str2, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI), str3);
            }
        }
        Uri build = builder.build();
        boolean z10 = true;
        if (str == null || str.length() == 0) {
            String encodedQuery = build.getEncodedQuery();
            return encodedQuery == null ? "" : encodedQuery;
        }
        String query = build.getQuery();
        getStrBuilder().setLength(0);
        StringBuilder strBuilder = getStrBuilder();
        strBuilder.append(path);
        strBuilder.append('?');
        if (query != null) {
            isBlank = StringsKt__StringsJVMKt.isBlank(query);
            if (!isBlank) {
                z10 = false;
            }
        }
        if (!z10) {
            getStrBuilder().append(query);
        }
        getStrBuilder().append(str);
        String sb2 = getStrBuilder().toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "strBuilder.toString()");
        String encodedQuery2 = build.buildUpon().appendQueryParameter("sig", VKUtils.MD5.convert(sb2)).build().getEncodedQuery();
        return encodedQuery2 == null ? "" : encodedQuery2;
    }
}
