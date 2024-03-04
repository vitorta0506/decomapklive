package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseLinkApplicationStore;", "", "id", "", "name", "", "(Ljava/lang/Float;Ljava/lang/String;)V", "getId", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getName", "()Ljava/lang/String;", "component1", "component2", "copy", "(Ljava/lang/Float;Ljava/lang/String;)Lcom/vk/sdk/api/base/dto/BaseLinkApplicationStore;", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseLinkApplicationStore {
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Float f35746id;
    @SerializedName("name")
    @Nullable
    private final String name;

    public BaseLinkApplicationStore() {
        this(null, null, 3, null);
    }

    public BaseLinkApplicationStore(@Nullable Float f10, @Nullable String str) {
        this.f35746id = f10;
        this.name = str;
    }

    public static /* synthetic */ BaseLinkApplicationStore copy$default(BaseLinkApplicationStore baseLinkApplicationStore, Float f10, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f10 = baseLinkApplicationStore.f35746id;
        }
        if ((i9 & 2) != 0) {
            str = baseLinkApplicationStore.name;
        }
        return baseLinkApplicationStore.copy(f10, str);
    }

    @Nullable
    public final Float component1() {
        return this.f35746id;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final BaseLinkApplicationStore copy(@Nullable Float f10, @Nullable String str) {
        return new BaseLinkApplicationStore(f10, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseLinkApplicationStore) {
            BaseLinkApplicationStore baseLinkApplicationStore = (BaseLinkApplicationStore) obj;
            return Intrinsics.areEqual((Object) this.f35746id, (Object) baseLinkApplicationStore.f35746id) && Intrinsics.areEqual(this.name, baseLinkApplicationStore.name);
        }
        return false;
    }

    @Nullable
    public final Float getId() {
        return this.f35746id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        Float f10 = this.f35746id;
        int hashCode = (f10 == null ? 0 : f10.hashCode()) * 31;
        String str = this.name;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Float f10 = this.f35746id;
        String str = this.name;
        return "BaseLinkApplicationStore(id=" + f10 + ", name=" + str + ")";
    }

    public /* synthetic */ BaseLinkApplicationStore(Float f10, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : f10, (i9 & 2) != 0 ? null : str);
    }
}
