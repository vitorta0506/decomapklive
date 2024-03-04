package com.vk.sdk.api.leadForms.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/leadForms/dto/LeadFormsAnswer;", "", "key", "", "answer", "Lcom/vk/sdk/api/leadForms/dto/LeadFormsAnswerItem;", "(Ljava/lang/String;Lcom/vk/sdk/api/leadForms/dto/LeadFormsAnswerItem;)V", "getAnswer", "()Lcom/vk/sdk/api/leadForms/dto/LeadFormsAnswerItem;", "getKey", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class LeadFormsAnswer {
    @SerializedName("answer")
    @NotNull
    private final LeadFormsAnswerItem answer;
    @SerializedName("key")
    @NotNull
    private final String key;

    public LeadFormsAnswer(@NotNull String key, @NotNull LeadFormsAnswerItem answer) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(answer, "answer");
        this.key = key;
        this.answer = answer;
    }

    public static /* synthetic */ LeadFormsAnswer copy$default(LeadFormsAnswer leadFormsAnswer, String str, LeadFormsAnswerItem leadFormsAnswerItem, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = leadFormsAnswer.key;
        }
        if ((i9 & 2) != 0) {
            leadFormsAnswerItem = leadFormsAnswer.answer;
        }
        return leadFormsAnswer.copy(str, leadFormsAnswerItem);
    }

    @NotNull
    public final String component1() {
        return this.key;
    }

    @NotNull
    public final LeadFormsAnswerItem component2() {
        return this.answer;
    }

    @NotNull
    public final LeadFormsAnswer copy(@NotNull String key, @NotNull LeadFormsAnswerItem answer) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(answer, "answer");
        return new LeadFormsAnswer(key, answer);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LeadFormsAnswer) {
            LeadFormsAnswer leadFormsAnswer = (LeadFormsAnswer) obj;
            return Intrinsics.areEqual(this.key, leadFormsAnswer.key) && Intrinsics.areEqual(this.answer, leadFormsAnswer.answer);
        }
        return false;
    }

    @NotNull
    public final LeadFormsAnswerItem getAnswer() {
        return this.answer;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public int hashCode() {
        return (this.key.hashCode() * 31) + this.answer.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.key;
        LeadFormsAnswerItem leadFormsAnswerItem = this.answer;
        return "LeadFormsAnswer(key=" + str + ", answer=" + leadFormsAnswerItem + ")";
    }
}
