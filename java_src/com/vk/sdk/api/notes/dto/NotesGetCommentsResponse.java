package com.vk.sdk.api.notes.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/notes/dto/NotesGetCommentsResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/notes/dto/NotesNoteComment;", "(ILjava/util/List;)V", "getCount", "()I", "getItems", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NotesGetCommentsResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("items")
    @NotNull
    private final List<NotesNoteComment> items;

    public NotesGetCommentsResponse(int i9, @NotNull List<NotesNoteComment> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.items = items;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NotesGetCommentsResponse copy$default(NotesGetCommentsResponse notesGetCommentsResponse, int i9, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = notesGetCommentsResponse.count;
        }
        if ((i10 & 2) != 0) {
            list = notesGetCommentsResponse.items;
        }
        return notesGetCommentsResponse.copy(i9, list);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<NotesNoteComment> component2() {
        return this.items;
    }

    @NotNull
    public final NotesGetCommentsResponse copy(int i9, @NotNull List<NotesNoteComment> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new NotesGetCommentsResponse(i9, items);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotesGetCommentsResponse) {
            NotesGetCommentsResponse notesGetCommentsResponse = (NotesGetCommentsResponse) obj;
            return this.count == notesGetCommentsResponse.count && Intrinsics.areEqual(this.items, notesGetCommentsResponse.items);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @NotNull
    public final List<NotesNoteComment> getItems() {
        return this.items;
    }

    public int hashCode() {
        return (this.count * 31) + this.items.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<NotesNoteComment> list = this.items;
        return "NotesGetCommentsResponse(count=" + i9 + ", items=" + list + ")";
    }
}
