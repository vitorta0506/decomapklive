package com.vk.sdk.api.streaming.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/streaming/dto/StreamingGetServerUrlResponse;", "", "endpoint", "", "key", "(Ljava/lang/String;Ljava/lang/String;)V", "getEndpoint", "()Ljava/lang/String;", "getKey", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StreamingGetServerUrlResponse {
    @SerializedName("endpoint")
    @Nullable
    private final String endpoint;
    @SerializedName("key")
    @Nullable
    private final String key;

    public StreamingGetServerUrlResponse() {
        this(null, null, 3, null);
    }

    public StreamingGetServerUrlResponse(@Nullable String str, @Nullable String str2) {
        this.endpoint = str;
        this.key = str2;
    }

    public static /* synthetic */ StreamingGetServerUrlResponse copy$default(StreamingGetServerUrlResponse streamingGetServerUrlResponse, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = streamingGetServerUrlResponse.endpoint;
        }
        if ((i9 & 2) != 0) {
            str2 = streamingGetServerUrlResponse.key;
        }
        return streamingGetServerUrlResponse.copy(str, str2);
    }

    @Nullable
    public final String component1() {
        return this.endpoint;
    }

    @Nullable
    public final String component2() {
        return this.key;
    }

    @NotNull
    public final StreamingGetServerUrlResponse copy(@Nullable String str, @Nullable String str2) {
        return new StreamingGetServerUrlResponse(str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StreamingGetServerUrlResponse) {
            StreamingGetServerUrlResponse streamingGetServerUrlResponse = (StreamingGetServerUrlResponse) obj;
            return Intrinsics.areEqual(this.endpoint, streamingGetServerUrlResponse.endpoint) && Intrinsics.areEqual(this.key, streamingGetServerUrlResponse.key);
        }
        return false;
    }

    @Nullable
    public final String getEndpoint() {
        return this.endpoint;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    public int hashCode() {
        String str = this.endpoint;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.key;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.endpoint;
        String str2 = this.key;
        return "StreamingGetServerUrlResponse(endpoint=" + str + ", key=" + str2 + ")";
    }

    public /* synthetic */ StreamingGetServerUrlResponse(String str, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2);
    }
}
