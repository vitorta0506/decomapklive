package com.guochao.faceshow.aaspring.base.http.v2;

import android.os.CancellationSignal;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.gson.Gson;
import com.google.gson.internal.C$Gson$Types;
import com.guochao.faceshow.aaspring.utils.ContentTypeUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MapUtils;
import com.guochao.faceshow.aaspring.utils.RsaUtils;
import com.guochao.faceshow.utils.GsonGetter;
import com.huawei.hms.framework.common.ContainerUtils;
import j7.b;
import java.io.File;
import java.lang.reflect.Type;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@Metadata(bv = {}, d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b>\u0010*J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J \u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J+\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ \u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u0015\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001aH\u0002J\u0018\u0010 \u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0013H\u0002J*\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010!2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"R\"\u0010'\u001a\n &*\u0004\u0018\u00010%0%8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b'\u0010(\u0012\u0004\b)\u0010*R\u0014\u0010+\u001a\u00020\u00138\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010,R\u001a\u0010.\u001a\u00020-8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b.\u0010/\u0012\u0004\b0\u0010*R\u001a\u00101\u001a\u00020-8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b1\u0010/\u0012\u0004\b2\u0010*R\u0014\u00104\u001a\u0002038\u0002X\u0082T¢\u0006\u0006\n\u0004\b4\u00105R\u001a\u00107\u001a\u0002068\u0002X\u0083\u0004¢\u0006\f\n\u0004\b7\u00108\u0012\u0004\b9\u0010*R\u001a\u0010;\u001a\u00020:8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b;\u0010<\u0012\u0004\b=\u0010*\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006?"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;", "", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;", "gcRequest", "Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;", "requestParams", "Lcom/guochao/faceshow/aaspring/base/utils/a;", "request", "Lokhttp3/Response;", "response", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "handleHttpResponse", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "callServer", "(Lokhttp3/Call;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "realCallServer", "Lokhttp3/Request;", "makeRequest", "", "content", "makeSesign", "Lokhttp3/RequestBody;", "makeBody", "Lcom/guochao/faceshow/aaspring/base/http/request/a;", "makeJsonBody", "Lokhttp3/MultipartBody$Builder;", "makeFileBody", "builder", "", "makeFormBody", "url", "makeUrl", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/reflect/Type;", "typeOfT", "execute", "Lcom/google/gson/Gson;", "kotlin.jvm.PlatformType", "gson", "Lcom/google/gson/Gson;", "getGson$annotations", "()V", "PUBLIC_KEY", "Ljava/lang/String;", "Lokhttp3/MediaType;", "CONTENT_TYPE_JSON", "Lokhttp3/MediaType;", "getCONTENT_TYPE_JSON$annotations", "CONTENT_TYPE_FILE", "getCONTENT_TYPE_FILE$annotations", "", "TIME_OUT", "J", "Lkotlinx/coroutines/CoroutineScope;", "httpScope", "Lkotlinx/coroutines/CoroutineScope;", "getHttpScope$annotations", "Lokhttp3/OkHttpClient;", "httpClient", "Lokhttp3/OkHttpClient;", "getHttpClient$annotations", "<init>", "lib_httpclient_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class Requester {
    @NotNull
    private static final MediaType CONTENT_TYPE_FILE;
    @NotNull
    private static final MediaType CONTENT_TYPE_JSON;
    @NotNull
    public static final String PUBLIC_KEY = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQClLNqG6B67jvz1ngUn8e4imUKuuGbE3F7R2E41M5H2xoLe9VrTbx7FM67S9/vK0KHLPfvXBYY1X+no1rAKldAlXXkIu/20b9FjLZUOZAbUtmm7/luszNx0Ef3IoUPMfc/H7kv9kO7v7f4p3K4Om/GQT6ayqSJU8oqT/SF9+ZUjSwIDAQAB";
    private static final long TIME_OUT = 30;
    @NotNull
    private static final OkHttpClient httpClient;
    @NotNull
    private static final CoroutineScope httpScope;
    @NotNull
    public static final Requester INSTANCE = new Requester();
    private static final Gson gson = GsonGetter.getGson();

    static {
        MediaType.Companion companion = MediaType.Companion;
        CONTENT_TYPE_JSON = companion.get("application/json;charset=utf-8");
        CONTENT_TYPE_FILE = companion.get("multipart/form-data;charset=utf-8");
        httpScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.connectTimeout(TIME_OUT, timeUnit);
        builder.writeTimeout(TIME_OUT, timeUnit);
        builder.readTimeout(TIME_OUT, timeUnit);
        builder.addInterceptor(new b());
        httpClient = builder.build();
    }

    private Requester() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object callServer(Call call, GCRequest gCRequest, Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new Requester$callServer$2(call, gCRequest, null), continuation);
    }

    @JvmStatic
    private static /* synthetic */ void getCONTENT_TYPE_FILE$annotations() {
    }

    @JvmStatic
    private static /* synthetic */ void getCONTENT_TYPE_JSON$annotations() {
    }

    @JvmStatic
    private static /* synthetic */ void getGson$annotations() {
    }

    @JvmStatic
    private static /* synthetic */ void getHttpClient$annotations() {
    }

    @JvmStatic
    private static /* synthetic */ void getHttpScope$annotations() {
    }

    private final Response<Object> handleHttpResponse(okhttp3.Response response, GCRequest gCRequest) throws Exception {
        Response<Object> response2;
        try {
            int code = response.code();
            ResponseBody body = response.body();
            String string = body != null ? body.string() : null;
            if (code != 200) {
                response2 = Response.Companion.fail(code, null, null);
                response2.setError(new RuntimeException("Http Error , ResponseCode is " + code + " , body is [" + string + ']'));
            } else if (TextUtils.isEmpty(string)) {
                response2 = Response.Companion.fail(-1, null, "response is empty");
                response2.setError(new NullPointerException("response is empty"));
            } else if (Intrinsics.areEqual(new JSONObject(string).opt("code"), (Object) 1)) {
                response2 = (Response) gson.fromJson(string, C$Gson$Types.newParameterizedTypeWithOwner(null, Response.class, gCRequest.getCallbackHolder().getSuccessClz()));
            } else {
                response2 = (Response) gson.fromJson(string, C$Gson$Types.newParameterizedTypeWithOwner(null, Response.class, gCRequest.getCallbackHolder().getFailClz()));
            }
            return response2 == null ? Response.Companion.fail(-1000, null, "no result") : response2;
        } finally {
            Util.closeQuietly(response);
        }
    }

    private final RequestBody makeBody(RequestParams requestParams) {
        if (Intrinsics.areEqual(requestParams.getMethod(), "GET")) {
            return null;
        }
        if (requestParams.getFileBody() == null) {
            return makeJsonBody(requestParams);
        }
        MultipartBody.Builder makeFileBody = makeFileBody(requestParams);
        makeFormBody(requestParams, makeFileBody);
        return makeFileBody.build();
    }

    private final MultipartBody.Builder makeFileBody(RequestParams requestParams) {
        MediaType mediaType;
        LinkedHashMap<String, List<File>> fileBody = requestParams.getFileBody();
        MultipartBody.Builder builder = new MultipartBody.Builder(null, 1, null);
        if (fileBody != null) {
            for (Map.Entry<String, List<File>> entry : fileBody.entrySet()) {
                List<File> value = entry.getValue();
                if (value != null) {
                    for (File file : value) {
                        String findContentType = ContentTypeUtils.findContentType(file.getAbsolutePath());
                        if (findContentType != null) {
                            MediaType.Companion companion = MediaType.Companion;
                            Intrinsics.checkNotNullExpressionValue(findContentType, "findContentType(it.absolutePath)");
                            mediaType = companion.get(findContentType);
                            if (mediaType != null) {
                                builder.addFormDataPart(entry.getKey(), file.getAbsolutePath(), RequestBody.Companion.create(file, mediaType));
                            }
                        }
                        mediaType = CONTENT_TYPE_FILE;
                        builder.addFormDataPart(entry.getKey(), file.getAbsolutePath(), RequestBody.Companion.create(file, mediaType));
                    }
                }
            }
        }
        return builder.setType(MultipartBody.FORM);
    }

    private final void makeFormBody(RequestParams requestParams, MultipartBody.Builder builder) {
        Map<String, Object> map;
        LinkedHashMap<String, Object> contentBody = requestParams.getContentBody();
        Object body = requestParams.getBody();
        if (body != null && (map = MapUtils.toMap(new JSONObject(gson.toJson(body)))) != null && contentBody != null) {
            contentBody.putAll(map);
        }
        if (contentBody != null) {
            for (Map.Entry<String, Object> entry : contentBody.entrySet()) {
                builder.addFormDataPart(entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
    }

    private final com.guochao.faceshow.aaspring.base.http.request.a makeJsonBody(RequestParams requestParams) {
        Object body = requestParams.getBody();
        if (body != null) {
            String json = gson.toJson(body);
            LogUtils.i("jsonRequst:", json);
            return new com.guochao.faceshow.aaspring.base.http.request.a(CONTENT_TYPE_JSON, json);
        }
        return new com.guochao.faceshow.aaspring.base.http.request.a(CONTENT_TYPE_JSON, gson.toJson(requestParams.getContentBody()));
    }

    private final Request makeRequest(GCRequest gCRequest, RequestParams requestParams) {
        boolean endsWith$default;
        Request.Builder builder = new Request.Builder();
        builder.url(INSTANCE.makeUrl(requestParams, requestParams.getUrl()));
        Map<String, String> headers = requestParams.getHeaders();
        if (headers != null) {
            for (Map.Entry<String, String> entry : headers.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (value == null) {
                    value = "";
                }
                builder.header(key, value);
            }
        }
        if (Intrinsics.areEqual(requestParams.getMethod(), "GET")) {
            builder.method(requestParams.getMethod(), null);
        } else {
            Requester requester = INSTANCE;
            RequestBody makeBody = requester.makeBody(requestParams);
            if (makeBody instanceof com.guochao.faceshow.aaspring.base.http.request.a) {
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(gCRequest.getUrl(), "/_vse", false, 2, null);
                if (endsWith$default) {
                    builder.addHeader("sesign", requester.makeSesign(((com.guochao.faceshow.aaspring.base.http.request.a) makeBody).a()));
                    builder.method(requestParams.getMethod(), RequestBody.Companion.create("{}", CONTENT_TYPE_JSON));
                }
            }
            builder.method(requestParams.getMethod(), makeBody);
        }
        return builder.build();
    }

    private final String makeSesign(String str) {
        try {
            String encode = URLEncoder.encode(RsaUtils.encodeByPublicKey(str, RsaUtils.getRsaPublicKey(PUBLIC_KEY)), StandardCharsets.UTF_8.displayName());
            Intrinsics.checkNotNullExpressionValue(encode, "encode(\n                …splayName()\n            )");
            return encode;
        } catch (Exception e10) {
            e10.printStackTrace();
            return str == null ? "" : str;
        }
    }

    private final String makeUrl(RequestParams requestParams, String str) {
        int indexOf$default;
        Map<String, String> queries = requestParams.getQueries();
        if (queries == null || queries.isEmpty()) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, "?", 0, false, 6, (Object) null);
        if (indexOf$default < 0) {
            sb2.append("?");
        }
        for (Map.Entry<String, String> entry : queries.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append(entry.getValue());
            sb2.append(ContainerUtils.FIELD_DELIMITER);
        }
        return str + sb2.substring(0, sb2.lastIndexOf(ContainerUtils.FIELD_DELIMITER));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Response<Object> realCallServer(Call call, GCRequest gCRequest) {
        return handleHttpResponse(call.execute(), gCRequest);
    }

    @JvmStatic
    @NotNull
    public static final com.guochao.faceshow.aaspring.base.utils.a request(@NotNull GCRequest gcRequest, @NotNull RequestParams requestParams) {
        Intrinsics.checkNotNullParameter(gcRequest, "gcRequest");
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        Function1<GCRequest, Unit> before = RequestInterceptor.INSTANCE.getBefore();
        if (before != null) {
            before.invoke(gcRequest);
        }
        Function1<GCRequest, Unit> onStart = gcRequest.getCallbackHolder().getOnStart();
        if (onStart != null) {
            onStart.invoke(gcRequest);
        }
        Request makeRequest = INSTANCE.makeRequest(gcRequest, requestParams);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        CoroutineScope scope = requestParams.getScope();
        if (scope == null) {
            scope = httpScope;
        }
        long repeatInterval = requestParams.getRepeatInterval();
        final CancellationSignal cancellationSignal = new CancellationSignal();
        final Job launch$default = BuildersKt.launch$default(scope, Dispatchers.getMain(), null, new Requester$request$job$1(objectRef, makeRequest, repeatInterval, requestParams, cancellationSignal, gcRequest, null), 2, null);
        return new com.guochao.faceshow.aaspring.base.utils.a() { // from class: com.guochao.faceshow.aaspring.base.http.v2.a
            @Override // com.guochao.faceshow.aaspring.base.utils.a
            public final void cancel() {
                Requester.m333request$lambda1(Job.this, objectRef, cancellationSignal);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: request$lambda-1  reason: not valid java name */
    public static final void m333request$lambda1(Job job, Ref.ObjectRef call, CancellationSignal cancelSign) {
        Intrinsics.checkNotNullParameter(job, "$job");
        Intrinsics.checkNotNullParameter(call, "$call");
        Intrinsics.checkNotNullParameter(cancelSign, "$cancelSign");
        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        Call call2 = (Call) call.element;
        if (call2 != null) {
            call2.cancel();
        }
        cancelSign.cancel();
    }

    @NotNull
    public final <T> Response<T> execute(@NotNull GCRequest gcRequest, @NotNull RequestParams requestParams, @NotNull Type typeOfT) throws Exception {
        Intrinsics.checkNotNullParameter(gcRequest, "gcRequest");
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        Intrinsics.checkNotNullParameter(typeOfT, "typeOfT");
        Function1<GCRequest, Unit> before = RequestInterceptor.INSTANCE.getBefore();
        if (before != null) {
            before.invoke(gcRequest);
        }
        gcRequest.getCallbackHolder().setSuccessClz(typeOfT);
        Response<T> response = (Response<T>) handleHttpResponse(httpClient.newCall(makeRequest(gcRequest, requestParams)).execute(), gcRequest);
        Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.Requester.execute>");
        return response;
    }
}
