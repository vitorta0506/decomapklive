package com.vk.sdk.api.pages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\bHÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\bHÖ\u0001R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/pages/dto/PagesWikipageHistory;", "", "id", "", "length", "date", "editorId", "editorName", "", "(IIIILjava/lang/String;)V", "getDate", "()I", "getEditorId", "getEditorName", "()Ljava/lang/String;", "getId", "getLength", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PagesWikipageHistory {
    @SerializedName("date")
    private final int date;
    @SerializedName("editor_id")
    private final int editorId;
    @SerializedName("editor_name")
    @NotNull
    private final String editorName;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35980id;
    @SerializedName("length")
    private final int length;

    public PagesWikipageHistory(int i9, int i10, int i11, int i12, @NotNull String editorName) {
        Intrinsics.checkNotNullParameter(editorName, "editorName");
        this.f35980id = i9;
        this.length = i10;
        this.date = i11;
        this.editorId = i12;
        this.editorName = editorName;
    }

    public static /* synthetic */ PagesWikipageHistory copy$default(PagesWikipageHistory pagesWikipageHistory, int i9, int i10, int i11, int i12, String str, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i9 = pagesWikipageHistory.f35980id;
        }
        if ((i13 & 2) != 0) {
            i10 = pagesWikipageHistory.length;
        }
        int i14 = i10;
        if ((i13 & 4) != 0) {
            i11 = pagesWikipageHistory.date;
        }
        int i15 = i11;
        if ((i13 & 8) != 0) {
            i12 = pagesWikipageHistory.editorId;
        }
        int i16 = i12;
        if ((i13 & 16) != 0) {
            str = pagesWikipageHistory.editorName;
        }
        return pagesWikipageHistory.copy(i9, i14, i15, i16, str);
    }

    public final int component1() {
        return this.f35980id;
    }

    public final int component2() {
        return this.length;
    }

    public final int component3() {
        return this.date;
    }

    public final int component4() {
        return this.editorId;
    }

    @NotNull
    public final String component5() {
        return this.editorName;
    }

    @NotNull
    public final PagesWikipageHistory copy(int i9, int i10, int i11, int i12, @NotNull String editorName) {
        Intrinsics.checkNotNullParameter(editorName, "editorName");
        return new PagesWikipageHistory(i9, i10, i11, i12, editorName);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PagesWikipageHistory) {
            PagesWikipageHistory pagesWikipageHistory = (PagesWikipageHistory) obj;
            return this.f35980id == pagesWikipageHistory.f35980id && this.length == pagesWikipageHistory.length && this.date == pagesWikipageHistory.date && this.editorId == pagesWikipageHistory.editorId && Intrinsics.areEqual(this.editorName, pagesWikipageHistory.editorName);
        }
        return false;
    }

    public final int getDate() {
        return this.date;
    }

    public final int getEditorId() {
        return this.editorId;
    }

    @NotNull
    public final String getEditorName() {
        return this.editorName;
    }

    public final int getId() {
        return this.f35980id;
    }

    public final int getLength() {
        return this.length;
    }

    public int hashCode() {
        return (((((((this.f35980id * 31) + this.length) * 31) + this.date) * 31) + this.editorId) * 31) + this.editorName.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.f35980id;
        int i10 = this.length;
        int i11 = this.date;
        int i12 = this.editorId;
        String str = this.editorName;
        return "PagesWikipageHistory(id=" + i9 + ", length=" + i10 + ", date=" + i11 + ", editorId=" + i12 + ", editorName=" + str + ")";
    }
}
