package com.vk.sdk.api.newsfeed.dto;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPromoButtonAction;", "", "url", "", "type", TypedValues.AttributesType.S_TARGET, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getTarget", "()Ljava/lang/String;", "getType", "getUrl", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemPromoButtonAction {
    @SerializedName(TypedValues.AttributesType.S_TARGET)
    @Nullable
    private final String target;
    @SerializedName("type")
    @Nullable
    private final String type;
    @SerializedName("url")
    @Nullable
    private final String url;

    public NewsfeedItemPromoButtonAction() {
        this(null, null, null, 7, null);
    }

    public NewsfeedItemPromoButtonAction(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.url = str;
        this.type = str2;
        this.target = str3;
    }

    public static /* synthetic */ NewsfeedItemPromoButtonAction copy$default(NewsfeedItemPromoButtonAction newsfeedItemPromoButtonAction, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = newsfeedItemPromoButtonAction.url;
        }
        if ((i9 & 2) != 0) {
            str2 = newsfeedItemPromoButtonAction.type;
        }
        if ((i9 & 4) != 0) {
            str3 = newsfeedItemPromoButtonAction.target;
        }
        return newsfeedItemPromoButtonAction.copy(str, str2, str3);
    }

    @Nullable
    public final String component1() {
        return this.url;
    }

    @Nullable
    public final String component2() {
        return this.type;
    }

    @Nullable
    public final String component3() {
        return this.target;
    }

    @NotNull
    public final NewsfeedItemPromoButtonAction copy(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        return new NewsfeedItemPromoButtonAction(str, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemPromoButtonAction) {
            NewsfeedItemPromoButtonAction newsfeedItemPromoButtonAction = (NewsfeedItemPromoButtonAction) obj;
            return Intrinsics.areEqual(this.url, newsfeedItemPromoButtonAction.url) && Intrinsics.areEqual(this.type, newsfeedItemPromoButtonAction.type) && Intrinsics.areEqual(this.target, newsfeedItemPromoButtonAction.target);
        }
        return false;
    }

    @Nullable
    public final String getTarget() {
        return this.target;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.url;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.type;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.target;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.url;
        String str2 = this.type;
        String str3 = this.target;
        return "NewsfeedItemPromoButtonAction(url=" + str + ", type=" + str2 + ", target=" + str3 + ")";
    }

    public /* synthetic */ NewsfeedItemPromoButtonAction(String str, String str2, String str3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : str3);
    }
}
