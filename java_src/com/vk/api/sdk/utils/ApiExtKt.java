package com.vk.api.sdk.utils;

import android.net.Uri;
import androidx.collection.LongSparseArray;
import androidx.exifinterface.media.ExifInterface;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.api.sdk.VKApiConfig;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.internal.VKErrorUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\f\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0007\u001a.\u0010\b\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u0002H\nH\u0086\u0002¢\u0006\u0002\u0010\u000f\u001a\u001e\u0010\u0010\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u001a$\u0010\u0013\u001a\u00020\u0011*\u00020\u00022\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0000¨\u0006\u0015"}, d2 = {"hasExecuteError", "", "", "ignoredErrors", "", "hasSimpleError", "isOAuthBlank", "Landroid/net/Uri;", "set", "", ExifInterface.LONGITUDE_EAST, "Landroidx/collection/LongSparseArray;", "key", "", "value", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)V", "toExecuteError", "Lcom/vk/api/sdk/exceptions/VKApiException;", PushConstants.MZ_PUSH_MESSAGE_METHOD, "toSimpleError", "accessToken", "core_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ApiExtKt {
    public static final boolean hasExecuteError(@NotNull String str, @Nullable int[] iArr) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return VKErrorUtils.INSTANCE.hasExecuteError(str, iArr);
    }

    public static final boolean hasSimpleError(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return VKErrorUtils.INSTANCE.hasSimpleError(str);
    }

    public static final boolean isOAuthBlank(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        return Intrinsics.areEqual(VKApiConfig.DEFAULT_OAUTH_DOMAIN, uri.getHost()) && Intrinsics.areEqual("/blank.html", uri.getPath());
    }

    public static final <E> void set(@NotNull LongSparseArray<E> longSparseArray, long j10, E e10) {
        Intrinsics.checkNotNullParameter(longSparseArray, "<this>");
        longSparseArray.put(j10, e10);
    }

    @NotNull
    public static final VKApiException toExecuteError(@NotNull String str, @NotNull String method, @Nullable int[] iArr) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(method, "method");
        return VKErrorUtils.INSTANCE.parseExecuteError(str, method, iArr);
    }

    @NotNull
    public static final VKApiException toSimpleError(@NotNull String str, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return VKErrorUtils.INSTANCE.parseSimpleError(str, str2, str3);
    }

    public static /* synthetic */ VKApiException toSimpleError$default(String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str2 = null;
        }
        if ((i9 & 2) != 0) {
            str3 = null;
        }
        return toSimpleError(str, str2, str3);
    }
}
