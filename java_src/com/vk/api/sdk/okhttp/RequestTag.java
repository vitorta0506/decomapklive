package com.vk.api.sdk.okhttp;

import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0010$\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0011J>\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\tHÖ\u0001J\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010 J\t\u0010!\u001a\u00020\u0007HÖ\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014¨\u0006\""}, d2 = {"Lcom/vk/api/sdk/okhttp/RequestTag;", "", "uid", "", "awaitNetwork", "", "reason", "", "retryCount", "", "(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V", "getAwaitNetwork", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getReason", "()Ljava/lang/String;", "getRetryCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUid", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/api/sdk/okhttp/RequestTag;", "equals", "other", "hashCode", "toMap", "", "toString", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class RequestTag {
    @Nullable
    private final Boolean awaitNetwork;
    @Nullable
    private final String reason;
    @Nullable
    private final Integer retryCount;
    @Nullable
    private final Long uid;

    @JvmOverloads
    public RequestTag() {
        this(null, null, null, null, 15, null);
    }

    @JvmOverloads
    public RequestTag(@Nullable Long l10) {
        this(l10, null, null, null, 14, null);
    }

    @JvmOverloads
    public RequestTag(@Nullable Long l10, @Nullable Boolean bool) {
        this(l10, bool, null, null, 12, null);
    }

    @JvmOverloads
    public RequestTag(@Nullable Long l10, @Nullable Boolean bool, @Nullable String str) {
        this(l10, bool, str, null, 8, null);
    }

    @JvmOverloads
    public RequestTag(@Nullable Long l10, @Nullable Boolean bool, @Nullable String str, @Nullable Integer num) {
        this.uid = l10;
        this.awaitNetwork = bool;
        this.reason = str;
        this.retryCount = num;
    }

    public static /* synthetic */ RequestTag copy$default(RequestTag requestTag, Long l10, Boolean bool, String str, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            l10 = requestTag.uid;
        }
        if ((i9 & 2) != 0) {
            bool = requestTag.awaitNetwork;
        }
        if ((i9 & 4) != 0) {
            str = requestTag.reason;
        }
        if ((i9 & 8) != 0) {
            num = requestTag.retryCount;
        }
        return requestTag.copy(l10, bool, str, num);
    }

    @Nullable
    public final Long component1() {
        return this.uid;
    }

    @Nullable
    public final Boolean component2() {
        return this.awaitNetwork;
    }

    @Nullable
    public final String component3() {
        return this.reason;
    }

    @Nullable
    public final Integer component4() {
        return this.retryCount;
    }

    @NotNull
    public final RequestTag copy(@Nullable Long l10, @Nullable Boolean bool, @Nullable String str, @Nullable Integer num) {
        return new RequestTag(l10, bool, str, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RequestTag) {
            RequestTag requestTag = (RequestTag) obj;
            return Intrinsics.areEqual(this.uid, requestTag.uid) && Intrinsics.areEqual(this.awaitNetwork, requestTag.awaitNetwork) && Intrinsics.areEqual(this.reason, requestTag.reason) && Intrinsics.areEqual(this.retryCount, requestTag.retryCount);
        }
        return false;
    }

    @Nullable
    public final Boolean getAwaitNetwork() {
        return this.awaitNetwork;
    }

    @Nullable
    public final String getReason() {
        return this.reason;
    }

    @Nullable
    public final Integer getRetryCount() {
        return this.retryCount;
    }

    @Nullable
    public final Long getUid() {
        return this.uid;
    }

    public int hashCode() {
        Long l10 = this.uid;
        int hashCode = (l10 == null ? 0 : l10.hashCode()) * 31;
        Boolean bool = this.awaitNetwork;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.reason;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.retryCount;
        return hashCode3 + (num != null ? num.hashCode() : 0);
    }

    @Nullable
    public final Map<String, Object> toMap() {
        Map<String, Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.to("UID", this.uid), TuplesKt.to("AWAIT_NETWORK", this.awaitNetwork), TuplesKt.to("REASON", this.reason), TuplesKt.to("RETRY_COUNT", this.retryCount));
        return mutableMapOf;
    }

    @NotNull
    public String toString() {
        return "RequestTag(uid=" + this.uid + ", awaitNetwork=" + this.awaitNetwork + ", reason=" + ((Object) this.reason) + ", retryCount=" + this.retryCount + ')';
    }

    public /* synthetic */ RequestTag(Long l10, Boolean bool, String str, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : l10, (i9 & 2) != 0 ? null : bool, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : num);
    }
}
