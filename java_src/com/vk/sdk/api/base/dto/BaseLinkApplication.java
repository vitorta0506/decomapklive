package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseLinkApplication;", "", "appId", "", "store", "Lcom/vk/sdk/api/base/dto/BaseLinkApplicationStore;", "(Ljava/lang/Float;Lcom/vk/sdk/api/base/dto/BaseLinkApplicationStore;)V", "getAppId", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getStore", "()Lcom/vk/sdk/api/base/dto/BaseLinkApplicationStore;", "component1", "component2", "copy", "(Ljava/lang/Float;Lcom/vk/sdk/api/base/dto/BaseLinkApplicationStore;)Lcom/vk/sdk/api/base/dto/BaseLinkApplication;", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseLinkApplication {
    @SerializedName("app_id")
    @Nullable
    private final Float appId;
    @SerializedName("store")
    @Nullable
    private final BaseLinkApplicationStore store;

    public BaseLinkApplication() {
        this(null, null, 3, null);
    }

    public BaseLinkApplication(@Nullable Float f10, @Nullable BaseLinkApplicationStore baseLinkApplicationStore) {
        this.appId = f10;
        this.store = baseLinkApplicationStore;
    }

    public static /* synthetic */ BaseLinkApplication copy$default(BaseLinkApplication baseLinkApplication, Float f10, BaseLinkApplicationStore baseLinkApplicationStore, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f10 = baseLinkApplication.appId;
        }
        if ((i9 & 2) != 0) {
            baseLinkApplicationStore = baseLinkApplication.store;
        }
        return baseLinkApplication.copy(f10, baseLinkApplicationStore);
    }

    @Nullable
    public final Float component1() {
        return this.appId;
    }

    @Nullable
    public final BaseLinkApplicationStore component2() {
        return this.store;
    }

    @NotNull
    public final BaseLinkApplication copy(@Nullable Float f10, @Nullable BaseLinkApplicationStore baseLinkApplicationStore) {
        return new BaseLinkApplication(f10, baseLinkApplicationStore);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseLinkApplication) {
            BaseLinkApplication baseLinkApplication = (BaseLinkApplication) obj;
            return Intrinsics.areEqual((Object) this.appId, (Object) baseLinkApplication.appId) && Intrinsics.areEqual(this.store, baseLinkApplication.store);
        }
        return false;
    }

    @Nullable
    public final Float getAppId() {
        return this.appId;
    }

    @Nullable
    public final BaseLinkApplicationStore getStore() {
        return this.store;
    }

    public int hashCode() {
        Float f10 = this.appId;
        int hashCode = (f10 == null ? 0 : f10.hashCode()) * 31;
        BaseLinkApplicationStore baseLinkApplicationStore = this.store;
        return hashCode + (baseLinkApplicationStore != null ? baseLinkApplicationStore.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Float f10 = this.appId;
        BaseLinkApplicationStore baseLinkApplicationStore = this.store;
        return "BaseLinkApplication(appId=" + f10 + ", store=" + baseLinkApplicationStore + ")";
    }

    public /* synthetic */ BaseLinkApplication(Float f10, BaseLinkApplicationStore baseLinkApplicationStore, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : f10, (i9 & 2) != 0 ? null : baseLinkApplicationStore);
    }
}
