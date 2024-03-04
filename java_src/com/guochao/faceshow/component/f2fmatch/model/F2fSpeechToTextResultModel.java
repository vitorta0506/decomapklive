package com.guochao.faceshow.component.f2fmatch.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;", "", "result", "", "finalResult", "", "cancel", "(Ljava/lang/String;ZZ)V", "getCancel", "()Z", "getFinalResult", "getResult", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fSpeechToTextResultModel {
    private final boolean cancel;
    private final boolean finalResult;
    @NotNull
    private final String result;

    public F2fSpeechToTextResultModel(@NotNull String result, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.result = result;
        this.finalResult = z10;
        this.cancel = z11;
    }

    public static /* synthetic */ F2fSpeechToTextResultModel copy$default(F2fSpeechToTextResultModel f2fSpeechToTextResultModel, String str, boolean z10, boolean z11, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = f2fSpeechToTextResultModel.result;
        }
        if ((i9 & 2) != 0) {
            z10 = f2fSpeechToTextResultModel.finalResult;
        }
        if ((i9 & 4) != 0) {
            z11 = f2fSpeechToTextResultModel.cancel;
        }
        return f2fSpeechToTextResultModel.copy(str, z10, z11);
    }

    @NotNull
    public final String component1() {
        return this.result;
    }

    public final boolean component2() {
        return this.finalResult;
    }

    public final boolean component3() {
        return this.cancel;
    }

    @NotNull
    public final F2fSpeechToTextResultModel copy(@NotNull String result, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(result, "result");
        return new F2fSpeechToTextResultModel(result, z10, z11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof F2fSpeechToTextResultModel) {
            F2fSpeechToTextResultModel f2fSpeechToTextResultModel = (F2fSpeechToTextResultModel) obj;
            return Intrinsics.areEqual(this.result, f2fSpeechToTextResultModel.result) && this.finalResult == f2fSpeechToTextResultModel.finalResult && this.cancel == f2fSpeechToTextResultModel.cancel;
        }
        return false;
    }

    public final boolean getCancel() {
        return this.cancel;
    }

    public final boolean getFinalResult() {
        return this.finalResult;
    }

    @NotNull
    public final String getResult() {
        return this.result;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.result.hashCode() * 31;
        boolean z10 = this.finalResult;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        int i10 = (hashCode + i9) * 31;
        boolean z11 = this.cancel;
        return i10 + (z11 ? 1 : z11 ? 1 : 0);
    }

    @NotNull
    public String toString() {
        return "F2fSpeechToTextResultModel(result=" + this.result + ", finalResult=" + this.finalResult + ", cancel=" + this.cancel + ')';
    }

    public /* synthetic */ F2fSpeechToTextResultModel(String str, boolean z10, boolean z11, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? false : z10, (i9 & 4) != 0 ? false : z11);
    }
}
