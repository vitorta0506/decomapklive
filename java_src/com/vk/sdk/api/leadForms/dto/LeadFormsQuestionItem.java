package com.vk.sdk.api.leadForms.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001dB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/leadForms/dto/LeadFormsQuestionItem;", "", "key", "", "type", "Lcom/vk/sdk/api/leadForms/dto/LeadFormsQuestionItem$Type;", AnnotatedPrivateKey.LABEL, "options", "", "Lcom/vk/sdk/api/leadForms/dto/LeadFormsQuestionItemOption;", "(Ljava/lang/String;Lcom/vk/sdk/api/leadForms/dto/LeadFormsQuestionItem$Type;Ljava/lang/String;Ljava/util/List;)V", "getKey", "()Ljava/lang/String;", "getLabel", "getOptions", "()Ljava/util/List;", "getType", "()Lcom/vk/sdk/api/leadForms/dto/LeadFormsQuestionItem$Type;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class LeadFormsQuestionItem {
    @SerializedName("key")
    @NotNull
    private final String key;
    @SerializedName(AnnotatedPrivateKey.LABEL)
    @Nullable
    private final String label;
    @SerializedName("options")
    @Nullable
    private final List<LeadFormsQuestionItemOption> options;
    @SerializedName("type")
    @NotNull
    private final Type type;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/vk/sdk/api/leadForms/dto/LeadFormsQuestionItem$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "INPUT", "TEXTAREA", "RADIO", "CHECKBOX", "SELECT", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Type {
        INPUT("input"),
        TEXTAREA("textarea"),
        RADIO("radio"),
        CHECKBOX("checkbox"),
        SELECT("select");
        
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

    public LeadFormsQuestionItem(@NotNull String key, @NotNull Type type, @Nullable String str, @Nullable List<LeadFormsQuestionItemOption> list) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(type, "type");
        this.key = key;
        this.type = type;
        this.label = str;
        this.options = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LeadFormsQuestionItem copy$default(LeadFormsQuestionItem leadFormsQuestionItem, String str, Type type, String str2, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = leadFormsQuestionItem.key;
        }
        if ((i9 & 2) != 0) {
            type = leadFormsQuestionItem.type;
        }
        if ((i9 & 4) != 0) {
            str2 = leadFormsQuestionItem.label;
        }
        if ((i9 & 8) != 0) {
            list = leadFormsQuestionItem.options;
        }
        return leadFormsQuestionItem.copy(str, type, str2, list);
    }

    @NotNull
    public final String component1() {
        return this.key;
    }

    @NotNull
    public final Type component2() {
        return this.type;
    }

    @Nullable
    public final String component3() {
        return this.label;
    }

    @Nullable
    public final List<LeadFormsQuestionItemOption> component4() {
        return this.options;
    }

    @NotNull
    public final LeadFormsQuestionItem copy(@NotNull String key, @NotNull Type type, @Nullable String str, @Nullable List<LeadFormsQuestionItemOption> list) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(type, "type");
        return new LeadFormsQuestionItem(key, type, str, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LeadFormsQuestionItem) {
            LeadFormsQuestionItem leadFormsQuestionItem = (LeadFormsQuestionItem) obj;
            return Intrinsics.areEqual(this.key, leadFormsQuestionItem.key) && this.type == leadFormsQuestionItem.type && Intrinsics.areEqual(this.label, leadFormsQuestionItem.label) && Intrinsics.areEqual(this.options, leadFormsQuestionItem.options);
        }
        return false;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @Nullable
    public final String getLabel() {
        return this.label;
    }

    @Nullable
    public final List<LeadFormsQuestionItemOption> getOptions() {
        return this.options;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((this.key.hashCode() * 31) + this.type.hashCode()) * 31;
        String str = this.label;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<LeadFormsQuestionItemOption> list = this.options;
        return hashCode2 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.key;
        Type type = this.type;
        String str2 = this.label;
        List<LeadFormsQuestionItemOption> list = this.options;
        return "LeadFormsQuestionItem(key=" + str + ", type=" + type + ", label=" + str2 + ", options=" + list + ")";
    }

    public /* synthetic */ LeadFormsQuestionItem(String str, Type type, String str2, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, type, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : list);
    }
}
