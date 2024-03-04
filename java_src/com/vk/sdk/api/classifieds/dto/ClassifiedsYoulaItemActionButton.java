package com.vk.sdk.api.classifieds.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0014B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionButton;", "", "type", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionButton$Type;", "url", "", "(Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionButton$Type;Ljava/lang/String;)V", "getType", "()Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionButton$Type;", "getUrl", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaItemActionButton {
    @SerializedName("type")
    @NotNull
    private final Type type;
    @SerializedName("url")
    @Nullable
    private final String url;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionButton$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "MENU_EDIT", "MENU_SUPPORT", "MENU_DELETE", "MENU_SHARE", "BTN_MAIN", "BTN_CREATE", "BTN_DELETE", "BTN_SUPPORT", "BTN_EDIT", "BTN_REPUBLISH", "BTN_PROMOTION", "BTN_CROSSPOSTING", "BTN_STOP_PUBLISH", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Type {
        MENU_EDIT("menu_edit"),
        MENU_SUPPORT("menu_support"),
        MENU_DELETE("menu_delete"),
        MENU_SHARE("menu_share"),
        BTN_MAIN("btn_main"),
        BTN_CREATE("btn_create"),
        BTN_DELETE("btn_delete"),
        BTN_SUPPORT("btn_support"),
        BTN_EDIT("btn_edit"),
        BTN_REPUBLISH("btn_republish"),
        BTN_PROMOTION("btn_promotion"),
        BTN_CROSSPOSTING("btn_crossposting"),
        BTN_STOP_PUBLISH("btn_stop_publish");
        
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

    public ClassifiedsYoulaItemActionButton(@NotNull Type type, @Nullable String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.url = str;
    }

    public static /* synthetic */ ClassifiedsYoulaItemActionButton copy$default(ClassifiedsYoulaItemActionButton classifiedsYoulaItemActionButton, Type type, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            type = classifiedsYoulaItemActionButton.type;
        }
        if ((i9 & 2) != 0) {
            str = classifiedsYoulaItemActionButton.url;
        }
        return classifiedsYoulaItemActionButton.copy(type, str);
    }

    @NotNull
    public final Type component1() {
        return this.type;
    }

    @Nullable
    public final String component2() {
        return this.url;
    }

    @NotNull
    public final ClassifiedsYoulaItemActionButton copy(@NotNull Type type, @Nullable String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new ClassifiedsYoulaItemActionButton(type, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifiedsYoulaItemActionButton) {
            ClassifiedsYoulaItemActionButton classifiedsYoulaItemActionButton = (ClassifiedsYoulaItemActionButton) obj;
            return this.type == classifiedsYoulaItemActionButton.type && Intrinsics.areEqual(this.url, classifiedsYoulaItemActionButton.url);
        }
        return false;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        String str = this.url;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        Type type = this.type;
        String str = this.url;
        return "ClassifiedsYoulaItemActionButton(type=" + type + ", url=" + str + ")";
    }

    public /* synthetic */ ClassifiedsYoulaItemActionButton(Type type, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(type, (i9 & 2) != 0 ? null : str);
    }
}
