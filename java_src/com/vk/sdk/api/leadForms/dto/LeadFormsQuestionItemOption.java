package com.vk.sdk.api.leadForms.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/leadForms/dto/LeadFormsQuestionItemOption;", "", AnnotatedPrivateKey.LABEL, "", "key", "(Ljava/lang/String;Ljava/lang/String;)V", "getKey", "()Ljava/lang/String;", "getLabel", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class LeadFormsQuestionItemOption {
    @SerializedName("key")
    @Nullable
    private final String key;
    @SerializedName(AnnotatedPrivateKey.LABEL)
    @NotNull
    private final String label;

    public LeadFormsQuestionItemOption(@NotNull String label, @Nullable String str) {
        Intrinsics.checkNotNullParameter(label, "label");
        this.label = label;
        this.key = str;
    }

    public static /* synthetic */ LeadFormsQuestionItemOption copy$default(LeadFormsQuestionItemOption leadFormsQuestionItemOption, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = leadFormsQuestionItemOption.label;
        }
        if ((i9 & 2) != 0) {
            str2 = leadFormsQuestionItemOption.key;
        }
        return leadFormsQuestionItemOption.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.label;
    }

    @Nullable
    public final String component2() {
        return this.key;
    }

    @NotNull
    public final LeadFormsQuestionItemOption copy(@NotNull String label, @Nullable String str) {
        Intrinsics.checkNotNullParameter(label, "label");
        return new LeadFormsQuestionItemOption(label, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LeadFormsQuestionItemOption) {
            LeadFormsQuestionItemOption leadFormsQuestionItemOption = (LeadFormsQuestionItemOption) obj;
            return Intrinsics.areEqual(this.label, leadFormsQuestionItemOption.label) && Intrinsics.areEqual(this.key, leadFormsQuestionItemOption.key);
        }
        return false;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final String getLabel() {
        return this.label;
    }

    public int hashCode() {
        int hashCode = this.label.hashCode() * 31;
        String str = this.key;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        String str = this.label;
        String str2 = this.key;
        return "LeadFormsQuestionItemOption(label=" + str + ", key=" + str2 + ")";
    }

    public /* synthetic */ LeadFormsQuestionItemOption(String str, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? null : str2);
    }
}
