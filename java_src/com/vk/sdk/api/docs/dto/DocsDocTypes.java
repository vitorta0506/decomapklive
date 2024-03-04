package com.vk.sdk.api.docs.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/docs/dto/DocsDocTypes;", "", "id", "", "name", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "(ILjava/lang/String;I)V", "getCount", "()I", "getId", "getName", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DocsDocTypes {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35782id;
    @SerializedName("name")
    @NotNull
    private final String name;

    public DocsDocTypes(int i9, @NotNull String name, int i10) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f35782id = i9;
        this.name = name;
        this.count = i10;
    }

    public static /* synthetic */ DocsDocTypes copy$default(DocsDocTypes docsDocTypes, int i9, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = docsDocTypes.f35782id;
        }
        if ((i11 & 2) != 0) {
            str = docsDocTypes.name;
        }
        if ((i11 & 4) != 0) {
            i10 = docsDocTypes.count;
        }
        return docsDocTypes.copy(i9, str, i10);
    }

    public final int component1() {
        return this.f35782id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    public final int component3() {
        return this.count;
    }

    @NotNull
    public final DocsDocTypes copy(int i9, @NotNull String name, int i10) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new DocsDocTypes(i9, name, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DocsDocTypes) {
            DocsDocTypes docsDocTypes = (DocsDocTypes) obj;
            return this.f35782id == docsDocTypes.f35782id && Intrinsics.areEqual(this.name, docsDocTypes.name) && this.count == docsDocTypes.count;
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    public final int getId() {
        return this.f35782id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (((this.f35782id * 31) + this.name.hashCode()) * 31) + this.count;
    }

    @NotNull
    public String toString() {
        int i9 = this.f35782id;
        String str = this.name;
        int i10 = this.count;
        return "DocsDocTypes(id=" + i9 + ", name=" + str + ", count=" + i10 + ")";
    }
}
