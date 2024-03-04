package com.guochao.faceshow.aaspring.base.http.v2;

import android.util.ArrayMap;
import android.util.Base64;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import b7.b;
import com.facebook.GraphResponse;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareInternalUtility;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.utils.GsonGetter;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u0000 ]2\u00020\u00012\u00020\u0002:\u0004^]_`B\u000f\u0012\u0006\u0010?\u001a\u00020\u0003¢\u0006\u0004\b[\u0010\\J\u0018\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001c\u0010\u000b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\fH\u0016J\u001a\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u0012\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\u0012\u0010\u0012\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u001a\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J+\u0010\u001e\u001a\u00020\u00002!\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0016J+\u0010\"\u001a\u00020\u00002!\u0010!\u001a\u001d\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u001c0\u0018H\u0016J+\u0010#\u001a\u00020\u00002!\u0010!\u001a\u001d\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u001c0\u0018H\u0016JA\u0010'\u001a\u00020\u0000\"\u0006\b\u0000\u0010$\u0018\u00012+\b\u0004\u0010'\u001a%\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00018\u00000%¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u001c0\u0018H\u0086\bø\u0001\u0000JC\u0010(\u001a\u00020\u0000\"\u0006\b\u0000\u0010$\u0018\u00012-\b\u0004\u0010(\u001a'\u0012\u001d\u0012\u001b\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010%¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u001c0\u0018H\u0086\bø\u0001\u0000J+\u0010)\u001a\u00020\u00002!\u0010)\u001a\u001d\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0016J+\u0010+\u001a\u00020\u00002!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0016J\u0012\u0010.\u001a\u00020\u00002\b\b\u0002\u0010-\u001a\u00020,H\u0016J\u0012\u00101\u001a\u00020\u00002\b\u00100\u001a\u0004\u0018\u00010/H\u0016J\b\u0010\u001b\u001a\u00020\u0000H\u0016J\u0012\u00102\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0017\u00103\u001a\b\u0012\u0004\u0012\u00028\u00000%\"\u0006\b\u0000\u0010$\u0018\u0001H\u0086\bJ\u001a\u00103\u001a\b\u0012\u0004\u0012\u00028\u00000%\"\u0004\b\u0000\u0010$2\u0006\u00105\u001a\u000204J\u0006\u00107\u001a\u000206J\b\u0010*\u001a\u00020\u001cH\u0016J\u0018\u0010;\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u00132\u0006\u0010:\u001a\u000209H\u0016J)\u0010=\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000%0<\"\u0006\b\u0000\u0010$\u0018\u0001H\u0086Hø\u0001\u0001¢\u0006\u0004\b=\u0010>R\u0017\u0010?\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010BR\u0017\u0010D\u001a\u00020C8\u0006¢\u0006\f\n\u0004\bD\u0010E\u001a\u0004\bF\u0010GR4\u0010J\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050Hj\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0005`I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KRF\u0010M\u001a2\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010L\u0018\u00010Hj\u0018\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010L\u0018\u0001`I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010KR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010NR\"\u0010P\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010QR&\u0010R\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010QR\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010SR\u0018\u0010T\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR \u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010WR\u0018\u00100\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010XR\u0016\u0010Y\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010Z\u0082\u0002\u000b\n\u0005\b\u009920\u0001\n\u0002\b\u0019¨\u0006a"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;", "Lcom/guochao/faceshow/aaspring/base/utils/a;", "Landroidx/lifecycle/LifecycleEventObserver;", "", "key", "", "value", "putBody", "body", "", "override", "putBodyModel", "Ljava/io/File;", ShareInternalUtility.STAGING_PARAM, "addFile", "addQuery", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "bindToLifecycle", "Landroidx/lifecycle/LifecycleOwner;", "removeQuery", "header", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;", PushConstants.MZ_PUSH_MESSAGE_METHOD, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "request", "", "start", "onStart", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;", "progressInfo", "progress", "uploadProgress", "downloadProgress", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "response", GraphResponse.SUCCESS_KEY, "fail", "complete", "cancel", "onCancel", "", "intervalMs", "repeat", "Lkotlinx/coroutines/CoroutineScope;", "scope", "dispatchOn", "getHeaderValue", "execute", "Ljava/lang/reflect/Type;", "typeOfT", "Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;", "buildRequestParams", ShareConstants.FEED_SOURCE_PARAM, "Landroidx/lifecycle/Lifecycle$Event;", "event", "onStateChanged", "Lkotlinx/coroutines/flow/Flow;", "asFlow", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "url", "Ljava/lang/String;", "getUrl", "()Ljava/lang/String;", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;", "callbackHolder", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;", "getCallbackHolder", "()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "contentBody", "Ljava/util/LinkedHashMap;", "", "fileBody", "Ljava/lang/Object;", "", "headers", "Ljava/util/Map;", "queries", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;", "cancellable", "Lcom/guochao/faceshow/aaspring/base/utils/a;", "Ljava/lang/ref/WeakReference;", "Ljava/lang/ref/WeakReference;", "Lkotlinx/coroutines/CoroutineScope;", "repeatInterval", "J", "<init>", "(Ljava/lang/String;)V", "Companion", "CallbackHolder", "Method", "ProgressInfo", "lib_httpclient_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class GCRequest implements com.guochao.faceshow.aaspring.base.utils.a, LifecycleEventObserver {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static String baseUrl = "";
    @Nullable
    private Object body;
    @NotNull
    private final CallbackHolder callbackHolder;
    @Nullable
    private com.guochao.faceshow.aaspring.base.utils.a cancellable;
    @NotNull
    private final LinkedHashMap<String, Object> contentBody;
    @Nullable
    private LinkedHashMap<String, List<File>> fileBody;
    @NotNull
    private final Map<String, String> headers;
    @Nullable
    private WeakReference<Lifecycle> lifecycle;
    @NotNull
    private Method method;
    @Nullable
    private Map<String, String> queries;
    private long repeatInterval;
    @Nullable
    private CoroutineScope scope;
    @NotNull
    private final String url;

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R7\u0010\u0003\u001a\u001f\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR7\u0010\u000e\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000b\"\u0004\b\u0012\u0010\rRA\u0010\u0013\u001a)\u0012\u001d\u0012\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0014¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000b\"\u0004\b\u0017\u0010\rR \u0010\u0018\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR7\u0010\u001e\u001a\u001f\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000b\"\u0004\b \u0010\rR?\u0010!\u001a'\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0014¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000b\"\u0004\b#\u0010\rR\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R7\u0010*\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u000b\"\u0004\b,\u0010\r¨\u0006-"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;", "", "()V", "complete", "Lkotlin/Function1;", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;", "Lkotlin/ParameterName;", "name", "request", "", "getComplete", "()Lkotlin/jvm/functions/Function1;", "setComplete", "(Lkotlin/jvm/functions/Function1;)V", "downloadProgress", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;", "progressInfo", "getDownloadProgress", "setDownloadProgress", "fail", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "response", "getFail", "setFail", "failClz", "Ljava/lang/Class;", "getFailClz", "()Ljava/lang/Class;", "setFailClz", "(Ljava/lang/Class;)V", "onStart", "getOnStart", "setOnStart", GraphResponse.SUCCESS_KEY, "getSuccess", "setSuccess", "successClz", "Ljava/lang/reflect/Type;", "getSuccessClz", "()Ljava/lang/reflect/Type;", "setSuccessClz", "(Ljava/lang/reflect/Type;)V", "uploadProgress", "getUploadProgress", "setUploadProgress", "lib_httpclient_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class CallbackHolder {
        @Nullable
        private Function1<? super GCRequest, Unit> complete;
        @Nullable
        private Function1<? super ProgressInfo, Unit> downloadProgress;
        @Nullable
        private Function1<? super Response<Object>, Unit> fail;
        @Nullable
        private Function1<? super GCRequest, Unit> onStart;
        @Nullable
        private Function1<? super Response<Object>, Unit> success;
        @Nullable
        private Function1<? super ProgressInfo, Unit> uploadProgress;
        @Nullable
        private Type successClz = Object.class;
        @Nullable
        private Class<?> failClz = Object.class;

        @Nullable
        public final Function1<GCRequest, Unit> getComplete() {
            return this.complete;
        }

        @Nullable
        public final Function1<ProgressInfo, Unit> getDownloadProgress() {
            return this.downloadProgress;
        }

        @Nullable
        public final Function1<Response<Object>, Unit> getFail() {
            return this.fail;
        }

        @Nullable
        public final Class<?> getFailClz() {
            return this.failClz;
        }

        @Nullable
        public final Function1<GCRequest, Unit> getOnStart() {
            return this.onStart;
        }

        @Nullable
        public final Function1<Response<Object>, Unit> getSuccess() {
            return this.success;
        }

        @Nullable
        public final Type getSuccessClz() {
            return this.successClz;
        }

        @Nullable
        public final Function1<ProgressInfo, Unit> getUploadProgress() {
            return this.uploadProgress;
        }

        public final void setComplete(@Nullable Function1<? super GCRequest, Unit> function1) {
            this.complete = function1;
        }

        public final void setDownloadProgress(@Nullable Function1<? super ProgressInfo, Unit> function1) {
            this.downloadProgress = function1;
        }

        public final void setFail(@Nullable Function1<? super Response<Object>, Unit> function1) {
            this.fail = function1;
        }

        public final void setFailClz(@Nullable Class<?> cls) {
            this.failClz = cls;
        }

        public final void setOnStart(@Nullable Function1<? super GCRequest, Unit> function1) {
            this.onStart = function1;
        }

        public final void setSuccess(@Nullable Function1<? super Response<Object>, Unit> function1) {
            this.success = function1;
        }

        public final void setSuccessClz(@Nullable Type type) {
            this.successClz = type;
        }

        public final void setUploadProgress(@Nullable Function1<? super ProgressInfo, Unit> function1) {
            this.uploadProgress = function1;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0004H\u0007R\u0018\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Companion;", "", "()V", "baseUrl", "", "getBaseUrl$annotations", "setBaseUrl", "", "url", "lib_httpclient_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        private static /* synthetic */ void getBaseUrl$annotations() {
        }

        @JvmStatic
        public final void setBaseUrl(@NotNull String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            GCRequest.baseUrl = url;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;", "", "(Ljava/lang/String;I)V", "GET", "POST", "lib_httpclient_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Method {
        GET,
        POST
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Method.values().length];
            iArr[Method.GET.ordinal()] = 1;
            iArr[Method.POST.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public GCRequest(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
        this.callbackHolder = new CallbackHolder();
        this.contentBody = new LinkedHashMap<>();
        this.headers = new ArrayMap();
        this.method = Method.POST;
        this.repeatInterval = -1L;
    }

    public static /* synthetic */ GCRequest putBodyModel$default(GCRequest gCRequest, Object obj, boolean z10, int i9, Object obj2) {
        if (obj2 == null) {
            if ((i9 & 2) != 0) {
                z10 = false;
            }
            return gCRequest.putBodyModel(obj, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: putBodyModel");
    }

    public static /* synthetic */ GCRequest repeat$default(GCRequest gCRequest, long j10, int i9, Object obj) {
        if (obj == null) {
            if ((i9 & 1) != 0) {
                j10 = 300;
            }
            return gCRequest.repeat(j10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: repeat");
    }

    @JvmStatic
    public static final void setBaseUrl(@NotNull String str) {
        Companion.setBaseUrl(str);
    }

    @NotNull
    public GCRequest addFile(@NotNull String key, @NotNull File file) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(file, "file");
        LinkedHashMap<String, List<File>> linkedHashMap = this.fileBody;
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap<>();
            this.fileBody = linkedHashMap;
        }
        List<File> list = linkedHashMap.get(key);
        if (list == null) {
            list = new ArrayList<>();
            linkedHashMap.put(key, list);
        }
        list.add(file);
        return this;
    }

    @NotNull
    public GCRequest addQuery(@NotNull String key, @Nullable String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map map = this.queries;
        if (map == null) {
            map = new ArrayMap();
            this.queries = map;
        }
        map.put(key, str);
        return this;
    }

    public final /* synthetic */ <T> Object asFlow(Continuation<? super Flow<Response<T>>> continuation) {
        CoroutineDispatcher io2 = Dispatchers.getIO();
        Intrinsics.needClassReification();
        GCRequest$asFlow$2 gCRequest$asFlow$2 = new GCRequest$asFlow$2(this, null);
        InlineMarker.mark(0);
        Object withContext = BuildersKt.withContext(io2, gCRequest$asFlow$2, continuation);
        InlineMarker.mark(1);
        return withContext;
    }

    @NotNull
    public GCRequest bindToLifecycle(@Nullable Lifecycle lifecycle) {
        Lifecycle lifecycle2;
        WeakReference<Lifecycle> weakReference = this.lifecycle;
        if (weakReference != null && (lifecycle2 = weakReference.get()) != null) {
            lifecycle2.removeObserver(this);
        }
        this.lifecycle = null;
        if (lifecycle != null) {
            this.lifecycle = new WeakReference<>(lifecycle);
            lifecycle.addObserver(this);
        }
        return this;
    }

    @NotNull
    public final RequestParams buildRequestParams() {
        String str;
        String str2 = baseUrl + this.url;
        Object obj = this.body;
        LinkedHashMap<String, Object> linkedHashMap = this.contentBody;
        Map<String, String> map = this.headers;
        Map<String, String> map2 = this.queries;
        LinkedHashMap<String, List<File>> linkedHashMap2 = this.fileBody;
        int i9 = WhenMappings.$EnumSwitchMapping$0[this.method.ordinal()];
        if (i9 == 1) {
            str = "GET";
        } else if (i9 != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            str = "POST";
        }
        return new RequestParams(str2, obj, linkedHashMap, map, map2, linkedHashMap2, str, this.scope, this.repeatInterval, this.callbackHolder);
    }

    @Override // com.guochao.faceshow.aaspring.base.utils.a
    public void cancel() {
        com.guochao.faceshow.aaspring.base.utils.a aVar = this.cancellable;
        if (aVar != null) {
            aVar.cancel();
        }
        this.cancellable = null;
    }

    @NotNull
    public GCRequest complete(@NotNull final Function1<? super GCRequest, Unit> complete) {
        Intrinsics.checkNotNullParameter(complete, "complete");
        this.callbackHolder.setComplete(new Function1<GCRequest, Unit>() { // from class: com.guochao.faceshow.aaspring.base.http.v2.GCRequest$complete$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCRequest gCRequest) {
                invoke2(gCRequest);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCRequest it) {
                Intrinsics.checkNotNullParameter(it, "it");
                complete.invoke(it);
            }
        });
        return this;
    }

    @NotNull
    public GCRequest dispatchOn(@Nullable CoroutineScope coroutineScope) {
        this.scope = coroutineScope;
        return this;
    }

    @NotNull
    public GCRequest downloadProgress(@NotNull final Function1<? super ProgressInfo, Unit> progress) {
        Intrinsics.checkNotNullParameter(progress, "progress");
        this.callbackHolder.setDownloadProgress(new Function1<ProgressInfo, Unit>() { // from class: com.guochao.faceshow.aaspring.base.http.v2.GCRequest$downloadProgress$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCRequest.ProgressInfo progressInfo) {
                invoke2(progressInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCRequest.ProgressInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                progress.invoke(it);
            }
        });
        return this;
    }

    public final /* synthetic */ <T> Response<T> execute() {
        try {
            Requester requester = Requester.INSTANCE;
            RequestParams buildRequestParams = buildRequestParams();
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return requester.execute(this, buildRequestParams, Object.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            Response<T> fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            return fail;
        }
    }

    public final /* synthetic */ <T> GCRequest fail(final Function1<? super Response<T>, Unit> fail) {
        Intrinsics.checkNotNullParameter(fail, "fail");
        CallbackHolder callbackHolder = getCallbackHolder();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        callbackHolder.setFailClz(Object.class);
        getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.base.http.v2.GCRequest$fail$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Function1<Response<T>, Unit> function1 = fail;
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                function1.invoke(response);
            }
        });
        return this;
    }

    @NotNull
    public final CallbackHolder getCallbackHolder() {
        return this.callbackHolder;
    }

    @Nullable
    public String getHeaderValue(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.headers.get("api_common") == null) {
            return null;
        }
        byte[] decode = Base64.decode(URLDecoder.decode(this.headers.get("api_common"), "UTF-8"), 2);
        Intrinsics.checkNotNullExpressionValue(decode, "decode(\n                …e64.NO_WRAP\n            )");
        return (String) ((Map) GsonGetter.getGson().fromJson(new String(decode, Charsets.UTF_8), new TypeToken<Map<String, String>>() { // from class: com.guochao.faceshow.aaspring.base.http.v2.GCRequest$getHeaderValue$requestMap$1
        }.getType())).get(key);
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    @NotNull
    public GCRequest header(@NotNull String key, @Nullable String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.headers.put(key, str);
        return this;
    }

    @NotNull
    public GCRequest method(@NotNull Method method) {
        Intrinsics.checkNotNullParameter(method, "method");
        this.method = method;
        return this;
    }

    @NotNull
    public GCRequest onCancel(@NotNull Function1<? super GCRequest, Unit> cancel) {
        Intrinsics.checkNotNullParameter(cancel, "cancel");
        return this;
    }

    @NotNull
    public GCRequest onStart(@NotNull final Function1<? super GCRequest, Unit> start) {
        Intrinsics.checkNotNullParameter(start, "start");
        this.callbackHolder.setOnStart(new Function1<GCRequest, Unit>() { // from class: com.guochao.faceshow.aaspring.base.http.v2.GCRequest$onStart$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCRequest gCRequest) {
                invoke2(gCRequest);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCRequest it) {
                Intrinsics.checkNotNullParameter(it, "it");
                start.invoke(it);
            }
        });
        return this;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        com.guochao.faceshow.aaspring.base.utils.a aVar;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event != Lifecycle.Event.ON_DESTROY || (aVar = this.cancellable) == null) {
            return;
        }
        aVar.cancel();
    }

    @NotNull
    public GCRequest putBody(@NotNull String key, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.contentBody.put(key, value);
        return this;
    }

    @NotNull
    public GCRequest putBodyModel(@Nullable Object obj, boolean z10) {
        this.body = obj;
        if (z10) {
            this.contentBody.clear();
        }
        return this;
    }

    @NotNull
    public GCRequest removeQuery(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, String> map = this.queries;
        if (map != null) {
            map.remove(key);
        }
        return this;
    }

    @NotNull
    public GCRequest repeat(long j10) {
        this.repeatInterval = j10;
        return this;
    }

    @NotNull
    public GCRequest request() {
        this.cancellable = Requester.request(this, buildRequestParams());
        return this;
    }

    public final /* synthetic */ <T> GCRequest success(final Function1<? super Response<T>, Unit> success) {
        Intrinsics.checkNotNullParameter(success, "success");
        CallbackHolder callbackHolder = getCallbackHolder();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        callbackHolder.setSuccessClz(Object.class);
        getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.base.http.v2.GCRequest$success$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                success.invoke(_response);
            }
        });
        return this;
    }

    @NotNull
    public GCRequest uploadProgress(@NotNull final Function1<? super ProgressInfo, Unit> progress) {
        Intrinsics.checkNotNullParameter(progress, "progress");
        this.callbackHolder.setUploadProgress(new Function1<ProgressInfo, Unit>() { // from class: com.guochao.faceshow.aaspring.base.http.v2.GCRequest$uploadProgress$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCRequest.ProgressInfo progressInfo) {
                invoke2(progressInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCRequest.ProgressInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                progress.invoke(it);
            }
        });
        return this;
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;", "", "current", "", "total", "progress", "", "(JJF)V", "getCurrent", "()J", "getProgress", "()F", "getTotal", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "lib_httpclient_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ProgressInfo {
        private final long current;
        private final float progress;
        private final long total;

        public ProgressInfo() {
            this(0L, 0L, 0.0f, 7, null);
        }

        public ProgressInfo(long j10, long j11, float f10) {
            this.current = j10;
            this.total = j11;
            this.progress = f10;
        }

        public static /* synthetic */ ProgressInfo copy$default(ProgressInfo progressInfo, long j10, long j11, float f10, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                j10 = progressInfo.current;
            }
            long j12 = j10;
            if ((i9 & 2) != 0) {
                j11 = progressInfo.total;
            }
            long j13 = j11;
            if ((i9 & 4) != 0) {
                f10 = progressInfo.progress;
            }
            return progressInfo.copy(j12, j13, f10);
        }

        public final long component1() {
            return this.current;
        }

        public final long component2() {
            return this.total;
        }

        public final float component3() {
            return this.progress;
        }

        @NotNull
        public final ProgressInfo copy(long j10, long j11, float f10) {
            return new ProgressInfo(j10, j11, f10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ProgressInfo) {
                ProgressInfo progressInfo = (ProgressInfo) obj;
                return this.current == progressInfo.current && this.total == progressInfo.total && Intrinsics.areEqual((Object) Float.valueOf(this.progress), (Object) Float.valueOf(progressInfo.progress));
            }
            return false;
        }

        public final long getCurrent() {
            return this.current;
        }

        public final float getProgress() {
            return this.progress;
        }

        public final long getTotal() {
            return this.total;
        }

        public int hashCode() {
            return (((b.a(this.current) * 31) + b.a(this.total)) * 31) + Float.floatToIntBits(this.progress);
        }

        @NotNull
        public String toString() {
            return "ProgressInfo(current=" + this.current + ", total=" + this.total + ", progress=" + this.progress + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ ProgressInfo(long r5, long r7, float r9, int r10, kotlin.jvm.internal.DefaultConstructorMarker r11) {
            /*
                r4 = this;
                r11 = r10 & 1
                r0 = 0
                if (r11 == 0) goto L8
                r2 = r0
                goto L9
            L8:
                r2 = r5
            L9:
                r5 = r10 & 2
                if (r5 == 0) goto Le
                goto Lf
            Le:
                r0 = r7
            Lf:
                r5 = r10 & 4
                if (r5 == 0) goto L1b
                float r5 = (float) r2
                r6 = 1120403456(0x42c80000, float:100.0)
                float r5 = r5 * r6
                float r6 = (float) r0
                float r9 = r5 / r6
            L1b:
                r10 = r9
                r5 = r4
                r6 = r2
                r8 = r0
                r5.<init>(r6, r8, r10)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.base.http.v2.GCRequest.ProgressInfo.<init>(long, long, float, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    @NotNull
    public final <T> Response<T> execute(@NotNull Type typeOfT) {
        Intrinsics.checkNotNullParameter(typeOfT, "typeOfT");
        try {
            return Requester.INSTANCE.execute(this, buildRequestParams(), typeOfT);
        } catch (Exception e10) {
            Response<T> fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            return fail;
        }
    }

    @NotNull
    public GCRequest bindToLifecycle(@Nullable LifecycleOwner lifecycleOwner) {
        return bindToLifecycle(lifecycleOwner != null ? lifecycleOwner.getLifecycle() : null);
    }
}
