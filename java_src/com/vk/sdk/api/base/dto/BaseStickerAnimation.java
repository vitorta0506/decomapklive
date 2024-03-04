package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0014B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseStickerAnimation;", "", "type", "Lcom/vk/sdk/api/base/dto/BaseStickerAnimation$Type;", "url", "", "(Lcom/vk/sdk/api/base/dto/BaseStickerAnimation$Type;Ljava/lang/String;)V", "getType", "()Lcom/vk/sdk/api/base/dto/BaseStickerAnimation$Type;", "getUrl", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseStickerAnimation {
    @SerializedName("type")
    @Nullable
    private final Type type;
    @SerializedName("url")
    @Nullable
    private final String url;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseStickerAnimation$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "LIGHT", "DARK", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Type {
        LIGHT("light"),
        DARK("dark");
        
        @NotNull
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public BaseStickerAnimation() {
        this(null, null, 3, null);
    }

    public BaseStickerAnimation(@Nullable Type type, @Nullable String str) {
        this.type = type;
        this.url = str;
    }

    public static /* synthetic */ BaseStickerAnimation copy$default(BaseStickerAnimation baseStickerAnimation, Type type, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            type = baseStickerAnimation.type;
        }
        if ((i9 & 2) != 0) {
            str = baseStickerAnimation.url;
        }
        return baseStickerAnimation.copy(type, str);
    }

    @Nullable
    public final Type component1() {
        return this.type;
    }

    @Nullable
    public final String component2() {
        return this.url;
    }

    @NotNull
    public final BaseStickerAnimation copy(@Nullable Type type, @Nullable String str) {
        return new BaseStickerAnimation(type, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseStickerAnimation) {
            BaseStickerAnimation baseStickerAnimation = (BaseStickerAnimation) obj;
            return this.type == baseStickerAnimation.type && Intrinsics.areEqual(this.url, baseStickerAnimation.url);
        }
        return false;
    }

    @Nullable
    public final Type getType() {
        return this.type;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        Type type = this.type;
        int hashCode = (type == null ? 0 : type.hashCode()) * 31;
        String str = this.url;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Type type = this.type;
        String str = this.url;
        return "BaseStickerAnimation(type=" + type + ", url=" + str + ")";
    }

    public /* synthetic */ BaseStickerAnimation(Type type, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : type, (i9 & 2) != 0 ? null : str);
    }
}
