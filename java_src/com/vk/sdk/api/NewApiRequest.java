package com.vk.sdk.api;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.vk.api.sdk.VKApiConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u001d\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0002\u0010\u0007J,\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000eJ*\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00102\b\b\u0002\u0010\r\u001a\u00020\u00112\b\b\u0002\u0010\u000f\u001a\u00020\u0011J*\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00122\b\b\u0002\u0010\r\u001a\u00020\u00122\b\b\u0002\u0010\u000f\u001a\u00020\u0012J*\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000e2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000eJ,\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u0012J0\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u00162\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000eJ\u0015\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0002\u0010\u0019J\u0016\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\u001cH\u0096\u0001¢\u0006\u0002\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/NewApiRequest;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/ApiResponseParser;", "methodName", "", "parser", "(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V", "addParam", "", "name", "value", "Lcom/vk/dto/common/id/UserId;", "min", "", "max", "", "", "", "minLength", "maxLength", "values", "", "parse", "response", "(Ljava/lang/String;)Ljava/lang/Object;", "parseResponse", "json", "Lcom/google/gson/JsonElement;", "(Lcom/google/gson/JsonElement;)Ljava/lang/Object;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class NewApiRequest<T> extends VKRequest<T> implements ApiResponseParser<T> {
    private final /* synthetic */ ApiResponseParser<T> $$delegate_0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewApiRequest(@NotNull String methodName, @NotNull ApiResponseParser<T> parser) {
        super(methodName, VKApiConfig.DEFAULT_API_VERSION);
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parser, "parser");
        this.$$delegate_0 = parser;
    }

    public static /* synthetic */ void addParam$default(NewApiRequest newApiRequest, String str, String str2, int i9, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i9 = 0;
        }
        if ((i11 & 8) != 0) {
            i10 = Integer.MAX_VALUE;
        }
        newApiRequest.addParam(str, str2, i9, i10);
    }

    public final void addParam(@NotNull String name, @Nullable String str, int i9, int i10) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (str != null) {
            int length = str.length();
            boolean z10 = false;
            if (i9 <= length && length <= i10) {
                z10 = true;
            }
            if (z10) {
                getParams().put(name, str);
                return;
            }
            throw new IllegalArgumentException("Param " + name + " not in " + i9 + ".." + i10);
        }
    }

    @Override // com.vk.api.sdk.requests.VKRequest, com.vk.api.sdk.e
    public T parse(@NotNull String response) {
        Intrinsics.checkNotNullParameter(response, "response");
        JsonElement responseJson = JsonParser.parseString(response).getAsJsonObject().get("response");
        Intrinsics.checkNotNullExpressionValue(responseJson, "responseJson");
        return parseResponse(responseJson);
    }

    @Override // com.vk.sdk.api.ApiResponseParser
    public T parseResponse(@NotNull JsonElement json) {
        Intrinsics.checkNotNullParameter(json, "json");
        return this.$$delegate_0.parseResponse(json);
    }

    public static /* synthetic */ void addParam$default(NewApiRequest newApiRequest, String str, int i9, int i10, int i11, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i10 = Integer.MIN_VALUE;
        }
        if ((i12 & 8) != 0) {
            i11 = Integer.MAX_VALUE;
        }
        newApiRequest.addParam(str, i9, i10, i11);
    }

    public static /* synthetic */ void addParam$default(NewApiRequest newApiRequest, String str, float f10, double d10, double d11, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            d10 = Double.MIN_VALUE;
        }
        double d12 = d10;
        if ((i9 & 8) != 0) {
            d11 = Double.MAX_VALUE;
        }
        newApiRequest.addParam(str, f10, d12, d11);
    }

    public final void addParam(@NotNull String name, int i9, int i10, int i11) {
        Intrinsics.checkNotNullParameter(name, "name");
        boolean z10 = false;
        if (i10 <= i9 && i9 <= i11) {
            z10 = true;
        }
        if (z10) {
            getParams().put(name, String.valueOf(i9));
            return;
        }
        throw new IllegalArgumentException("Param " + name + " not in " + i10 + ".." + i11);
    }

    public static /* synthetic */ void addParam$default(NewApiRequest newApiRequest, String str, UserId userId, long j10, long j11, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            j10 = Long.MIN_VALUE;
        }
        long j12 = j10;
        if ((i9 & 8) != 0) {
            j11 = Long.MAX_VALUE;
        }
        newApiRequest.addParam(str, userId, j12, j11);
    }

    public static /* synthetic */ void addParam$default(NewApiRequest newApiRequest, String str, List list, long j10, long j11, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            j10 = Long.MIN_VALUE;
        }
        long j12 = j10;
        if ((i9 & 8) != 0) {
            j11 = Long.MAX_VALUE;
        }
        newApiRequest.addParam(str, list, j12, j11);
    }

    public final void addParam(@NotNull String name, long j10, long j11, long j12) {
        Intrinsics.checkNotNullParameter(name, "name");
        boolean z10 = false;
        if (j11 <= j10 && j10 <= j12) {
            z10 = true;
        }
        if (z10) {
            getParams().put(name, String.valueOf(j10));
            return;
        }
        throw new IllegalArgumentException("Param " + name + " not in " + j11 + ".." + j12);
    }

    public final void addParam(@NotNull String name, float f10, double d10, double d11) {
        Intrinsics.checkNotNullParameter(name, "name");
        double d12 = f10;
        boolean z10 = false;
        if (d10 <= d12 && d12 <= d11) {
            z10 = true;
        }
        if (z10) {
            getParams().put(name, String.valueOf(f10));
            return;
        }
        throw new IllegalArgumentException("Param " + name + " not in " + d10 + ".." + d11);
    }

    public final void addParam(@NotNull String name, @Nullable UserId userId, long j10, long j11) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (userId != null) {
            long value = userId.getValue();
            boolean z10 = false;
            if (j10 <= value && value <= j11) {
                z10 = true;
            }
            if (z10) {
                getParams().put(name, String.valueOf(userId.getValue()));
                return;
            }
            throw new IllegalArgumentException("Param " + name + " not in " + j10 + ".." + j11);
        }
    }

    public final void addParam(@NotNull final String name, @NotNull List<UserId> values, final long j10, final long j11) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(values, "values");
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(values, ",", null, null, 0, null, new Function1<UserId, CharSequence>() { // from class: com.vk.sdk.api.NewApiRequest$addParam$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CharSequence invoke(@NotNull UserId it) {
                Intrinsics.checkNotNullParameter(it, "it");
                long value = it.getValue();
                boolean z10 = false;
                if (j10 <= value && value <= j11) {
                    z10 = true;
                }
                if (z10) {
                    return String.valueOf(it.getValue());
                }
                String str = name;
                long j12 = j10;
                long j13 = j11;
                throw new IllegalArgumentException("Param " + str + " not in " + j12 + ".." + j13);
            }
        }, 30, null);
        addParam(name, joinToString$default);
    }
}
