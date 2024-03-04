package com.guochao.faceshow.aaspring.base.test;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/test/TestModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", ViewHierarchyConstants.TEXT_KEY, "", "(Ljava/lang/String;)V", "getText", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TestModel extends BaseModel {
    @NotNull
    private final String text;

    public TestModel() {
        this(null, 1, null);
    }

    public TestModel(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.text = text;
    }

    public static /* synthetic */ TestModel copy$default(TestModel testModel, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = testModel.text;
        }
        return testModel.copy(str);
    }

    @NotNull
    public final String component1() {
        return this.text;
    }

    @NotNull
    public final TestModel copy(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new TestModel(text);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TestModel) && Intrinsics.areEqual(this.text, ((TestModel) obj).text);
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        return this.text.hashCode();
    }

    @NotNull
    public String toString() {
        return "TestModel(text=" + this.text + ')';
    }

    public /* synthetic */ TestModel(String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? "123" : str);
    }
}
