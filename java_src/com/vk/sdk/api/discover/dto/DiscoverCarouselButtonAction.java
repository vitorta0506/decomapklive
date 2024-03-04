package com.vk.sdk.api.discover.dto;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003J7\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\tHÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonAction;", "", "type", "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonActionType;", "context", "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonContext;", TypedValues.AttributesType.S_TARGET, "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonActionTarget;", "url", "", "(Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonActionType;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonContext;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonActionTarget;Ljava/lang/String;)V", "getContext", "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonContext;", "getTarget", "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonActionTarget;", "getType", "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonActionType;", "getUrl", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DiscoverCarouselButtonAction {
    @SerializedName("context")
    @Nullable
    private final DiscoverCarouselButtonContext context;
    @SerializedName(TypedValues.AttributesType.S_TARGET)
    @Nullable
    private final DiscoverCarouselButtonActionTarget target;
    @SerializedName("type")
    @NotNull
    private final DiscoverCarouselButtonActionType type;
    @SerializedName("url")
    @Nullable
    private final String url;

    public DiscoverCarouselButtonAction(@NotNull DiscoverCarouselButtonActionType type, @Nullable DiscoverCarouselButtonContext discoverCarouselButtonContext, @Nullable DiscoverCarouselButtonActionTarget discoverCarouselButtonActionTarget, @Nullable String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.context = discoverCarouselButtonContext;
        this.target = discoverCarouselButtonActionTarget;
        this.url = str;
    }

    public static /* synthetic */ DiscoverCarouselButtonAction copy$default(DiscoverCarouselButtonAction discoverCarouselButtonAction, DiscoverCarouselButtonActionType discoverCarouselButtonActionType, DiscoverCarouselButtonContext discoverCarouselButtonContext, DiscoverCarouselButtonActionTarget discoverCarouselButtonActionTarget, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            discoverCarouselButtonActionType = discoverCarouselButtonAction.type;
        }
        if ((i9 & 2) != 0) {
            discoverCarouselButtonContext = discoverCarouselButtonAction.context;
        }
        if ((i9 & 4) != 0) {
            discoverCarouselButtonActionTarget = discoverCarouselButtonAction.target;
        }
        if ((i9 & 8) != 0) {
            str = discoverCarouselButtonAction.url;
        }
        return discoverCarouselButtonAction.copy(discoverCarouselButtonActionType, discoverCarouselButtonContext, discoverCarouselButtonActionTarget, str);
    }

    @NotNull
    public final DiscoverCarouselButtonActionType component1() {
        return this.type;
    }

    @Nullable
    public final DiscoverCarouselButtonContext component2() {
        return this.context;
    }

    @Nullable
    public final DiscoverCarouselButtonActionTarget component3() {
        return this.target;
    }

    @Nullable
    public final String component4() {
        return this.url;
    }

    @NotNull
    public final DiscoverCarouselButtonAction copy(@NotNull DiscoverCarouselButtonActionType type, @Nullable DiscoverCarouselButtonContext discoverCarouselButtonContext, @Nullable DiscoverCarouselButtonActionTarget discoverCarouselButtonActionTarget, @Nullable String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new DiscoverCarouselButtonAction(type, discoverCarouselButtonContext, discoverCarouselButtonActionTarget, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DiscoverCarouselButtonAction) {
            DiscoverCarouselButtonAction discoverCarouselButtonAction = (DiscoverCarouselButtonAction) obj;
            return this.type == discoverCarouselButtonAction.type && Intrinsics.areEqual(this.context, discoverCarouselButtonAction.context) && this.target == discoverCarouselButtonAction.target && Intrinsics.areEqual(this.url, discoverCarouselButtonAction.url);
        }
        return false;
    }

    @Nullable
    public final DiscoverCarouselButtonContext getContext() {
        return this.context;
    }

    @Nullable
    public final DiscoverCarouselButtonActionTarget getTarget() {
        return this.target;
    }

    @NotNull
    public final DiscoverCarouselButtonActionType getType() {
        return this.type;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        DiscoverCarouselButtonContext discoverCarouselButtonContext = this.context;
        int hashCode2 = (hashCode + (discoverCarouselButtonContext == null ? 0 : discoverCarouselButtonContext.hashCode())) * 31;
        DiscoverCarouselButtonActionTarget discoverCarouselButtonActionTarget = this.target;
        int hashCode3 = (hashCode2 + (discoverCarouselButtonActionTarget == null ? 0 : discoverCarouselButtonActionTarget.hashCode())) * 31;
        String str = this.url;
        return hashCode3 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        DiscoverCarouselButtonActionType discoverCarouselButtonActionType = this.type;
        DiscoverCarouselButtonContext discoverCarouselButtonContext = this.context;
        DiscoverCarouselButtonActionTarget discoverCarouselButtonActionTarget = this.target;
        String str = this.url;
        return "DiscoverCarouselButtonAction(type=" + discoverCarouselButtonActionType + ", context=" + discoverCarouselButtonContext + ", target=" + discoverCarouselButtonActionTarget + ", url=" + str + ")";
    }

    public /* synthetic */ DiscoverCarouselButtonAction(DiscoverCarouselButtonActionType discoverCarouselButtonActionType, DiscoverCarouselButtonContext discoverCarouselButtonContext, DiscoverCarouselButtonActionTarget discoverCarouselButtonActionTarget, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(discoverCarouselButtonActionType, (i9 & 2) != 0 ? null : discoverCarouselButtonContext, (i9 & 4) != 0 ? null : discoverCarouselButtonActionTarget, (i9 & 8) != 0 ? null : str);
    }
}
