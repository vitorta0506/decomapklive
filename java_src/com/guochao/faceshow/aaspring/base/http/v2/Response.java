package com.guochao.faceshow.aaspring.base.http.v2;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.GraphResponse;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\b\u0018\u0000 '*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001'B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u001d\u001a\u00020\u0004HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00018\u0000HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\tHÆ\u0003JB\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020\u00172\b\u0010$\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010%\u001a\u00020\u0004HÖ\u0001J\t\u0010&\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\"\u0010\u0005\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0018R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006("}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", ExifInterface.GPS_DIRECTION_TRUE, "", "code", "", "data", "msg", "", "error", "", "(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V", "getCode", "()I", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "getError", "()Ljava/lang/Throwable;", "setError", "(Ljava/lang/Throwable;)V", "isSuccessful", "", "()Z", "getMsg", "()Ljava/lang/String;", "setMsg", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "copy", "(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "equals", "other", "hashCode", "toString", "Companion", "lib_httpclient_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Response<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @SerializedName(alternate = {"status"}, value = "code")
    private final int code;
    @SerializedName("data")
    @Nullable
    private T data;
    @Nullable
    private transient Throwable error;
    @SerializedName("message")
    @Nullable
    private String msg;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J9\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u0001H\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0002\u0010\u000bJ1\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0001\u0010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u0001H\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;", "", "()V", "fail", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", ExifInterface.GPS_DIRECTION_TRUE, "code", "", "data", "msg", "", "(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", GraphResponse.SUCCESS_KEY, "(Ljava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "lib_httpclient_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Response fail$default(Companion companion, int i9, Object obj, String str, int i10, Object obj2) {
            if ((i10 & 2) != 0) {
                obj = null;
            }
            if ((i10 & 4) != 0) {
                str = null;
            }
            return companion.fail(i9, obj, str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Response success$default(Companion companion, Object obj, String str, int i9, Object obj2) {
            if ((i9 & 1) != 0) {
                obj = null;
            }
            if ((i9 & 2) != 0) {
                str = null;
            }
            return companion.success(obj, str);
        }

        @JvmStatic
        @NotNull
        public final <T> Response<T> fail(int i9, @Nullable T t10, @Nullable String str) {
            return new Response<>(i9, t10, str, null, 8, null);
        }

        @JvmStatic
        @NotNull
        public final <T> Response<T> success(@Nullable T t10, @Nullable String str) {
            return new Response<>(1, t10, str, null, 8, null);
        }
    }

    public Response(int i9, @Nullable T t10, @Nullable String str, @Nullable Throwable th2) {
        this.code = i9;
        this.data = t10;
        this.msg = str;
        this.error = th2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Response copy$default(Response response, int i9, Object obj, String str, Throwable th2, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            i9 = response.code;
        }
        if ((i10 & 2) != 0) {
            obj = response.data;
        }
        if ((i10 & 4) != 0) {
            str = response.msg;
        }
        if ((i10 & 8) != 0) {
            th2 = response.error;
        }
        return response.copy(i9, obj, str, th2);
    }

    @JvmStatic
    @NotNull
    public static final <T> Response<T> fail(int i9, @Nullable T t10, @Nullable String str) {
        return Companion.fail(i9, t10, str);
    }

    @JvmStatic
    @NotNull
    public static final <T> Response<T> success(@Nullable T t10, @Nullable String str) {
        return Companion.success(t10, str);
    }

    public final int component1() {
        return this.code;
    }

    @Nullable
    public final T component2() {
        return this.data;
    }

    @Nullable
    public final String component3() {
        return this.msg;
    }

    @Nullable
    public final Throwable component4() {
        return this.error;
    }

    @NotNull
    public final Response<T> copy(int i9, @Nullable T t10, @Nullable String str, @Nullable Throwable th2) {
        return new Response<>(i9, t10, str, th2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Response) {
            Response response = (Response) obj;
            return this.code == response.code && Intrinsics.areEqual(this.data, response.data) && Intrinsics.areEqual(this.msg, response.msg) && Intrinsics.areEqual(this.error, response.error);
        }
        return false;
    }

    public final int getCode() {
        return this.code;
    }

    @Nullable
    public final T getData() {
        return this.data;
    }

    @Nullable
    public final Throwable getError() {
        return this.error;
    }

    @Nullable
    public final String getMsg() {
        return this.msg;
    }

    public int hashCode() {
        int i9 = this.code * 31;
        T t10 = this.data;
        int hashCode = (i9 + (t10 == null ? 0 : t10.hashCode())) * 31;
        String str = this.msg;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Throwable th2 = this.error;
        return hashCode2 + (th2 != null ? th2.hashCode() : 0);
    }

    public final boolean isSuccessful() {
        return this.code == 1;
    }

    public final void setData(@Nullable T t10) {
        this.data = t10;
    }

    public final void setError(@Nullable Throwable th2) {
        this.error = th2;
    }

    public final void setMsg(@Nullable String str) {
        this.msg = str;
    }

    @NotNull
    public String toString() {
        return "Response(code=" + this.code + ", data=" + this.data + ", msg=" + this.msg + ", error=" + this.error + ')';
    }

    public /* synthetic */ Response(int i9, Object obj, String str, Throwable th2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : obj, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : th2);
    }
}
