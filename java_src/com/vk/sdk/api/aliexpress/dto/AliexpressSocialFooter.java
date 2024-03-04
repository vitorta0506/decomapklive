package com.vk.sdk.api.aliexpress.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseLinkButtonAction;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001fB;\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J?\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/vk/sdk/api/aliexpress/dto/AliexpressSocialFooter;", "", "type", "Lcom/vk/sdk/api/aliexpress/dto/AliexpressSocialFooter$Type;", NativeProtocol.WEB_DIALOG_ACTION, "Lcom/vk/sdk/api/base/dto/BaseLinkButtonAction;", ViewHierarchyConstants.TEXT_KEY, "", "userIds", "", "Lcom/vk/dto/common/id/UserId;", "(Lcom/vk/sdk/api/aliexpress/dto/AliexpressSocialFooter$Type;Lcom/vk/sdk/api/base/dto/BaseLinkButtonAction;Ljava/lang/String;Ljava/util/List;)V", "getAction", "()Lcom/vk/sdk/api/base/dto/BaseLinkButtonAction;", "getText", "()Ljava/lang/String;", "getType", "()Lcom/vk/sdk/api/aliexpress/dto/AliexpressSocialFooter$Type;", "getUserIds", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AliexpressSocialFooter {
    @SerializedName(NativeProtocol.WEB_DIALOG_ACTION)
    @Nullable
    private final BaseLinkButtonAction action;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName("type")
    @Nullable
    private final Type type;
    @SerializedName("user_ids")
    @Nullable
    private final List<UserId> userIds;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/aliexpress/dto/AliexpressSocialFooter$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ALIEXPRESS_CAROUSEL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Type {
        ALIEXPRESS_CAROUSEL("aliexpress_carousel");
        
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

    public AliexpressSocialFooter() {
        this(null, null, null, null, 15, null);
    }

    public AliexpressSocialFooter(@Nullable Type type, @Nullable BaseLinkButtonAction baseLinkButtonAction, @Nullable String str, @Nullable List<UserId> list) {
        this.type = type;
        this.action = baseLinkButtonAction;
        this.text = str;
        this.userIds = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AliexpressSocialFooter copy$default(AliexpressSocialFooter aliexpressSocialFooter, Type type, BaseLinkButtonAction baseLinkButtonAction, String str, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            type = aliexpressSocialFooter.type;
        }
        if ((i9 & 2) != 0) {
            baseLinkButtonAction = aliexpressSocialFooter.action;
        }
        if ((i9 & 4) != 0) {
            str = aliexpressSocialFooter.text;
        }
        if ((i9 & 8) != 0) {
            list = aliexpressSocialFooter.userIds;
        }
        return aliexpressSocialFooter.copy(type, baseLinkButtonAction, str, list);
    }

    @Nullable
    public final Type component1() {
        return this.type;
    }

    @Nullable
    public final BaseLinkButtonAction component2() {
        return this.action;
    }

    @Nullable
    public final String component3() {
        return this.text;
    }

    @Nullable
    public final List<UserId> component4() {
        return this.userIds;
    }

    @NotNull
    public final AliexpressSocialFooter copy(@Nullable Type type, @Nullable BaseLinkButtonAction baseLinkButtonAction, @Nullable String str, @Nullable List<UserId> list) {
        return new AliexpressSocialFooter(type, baseLinkButtonAction, str, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AliexpressSocialFooter) {
            AliexpressSocialFooter aliexpressSocialFooter = (AliexpressSocialFooter) obj;
            return this.type == aliexpressSocialFooter.type && Intrinsics.areEqual(this.action, aliexpressSocialFooter.action) && Intrinsics.areEqual(this.text, aliexpressSocialFooter.text) && Intrinsics.areEqual(this.userIds, aliexpressSocialFooter.userIds);
        }
        return false;
    }

    @Nullable
    public final BaseLinkButtonAction getAction() {
        return this.action;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final Type getType() {
        return this.type;
    }

    @Nullable
    public final List<UserId> getUserIds() {
        return this.userIds;
    }

    public int hashCode() {
        Type type = this.type;
        int hashCode = (type == null ? 0 : type.hashCode()) * 31;
        BaseLinkButtonAction baseLinkButtonAction = this.action;
        int hashCode2 = (hashCode + (baseLinkButtonAction == null ? 0 : baseLinkButtonAction.hashCode())) * 31;
        String str = this.text;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        List<UserId> list = this.userIds;
        return hashCode3 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Type type = this.type;
        BaseLinkButtonAction baseLinkButtonAction = this.action;
        String str = this.text;
        List<UserId> list = this.userIds;
        return "AliexpressSocialFooter(type=" + type + ", action=" + baseLinkButtonAction + ", text=" + str + ", userIds=" + list + ")";
    }

    public /* synthetic */ AliexpressSocialFooter(Type type, BaseLinkButtonAction baseLinkButtonAction, String str, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : type, (i9 & 2) != 0 ? null : baseLinkButtonAction, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : list);
    }
}
