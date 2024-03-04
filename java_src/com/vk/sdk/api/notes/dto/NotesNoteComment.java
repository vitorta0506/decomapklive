package com.vk.sdk.api.notes.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014JV\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020\u0006HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\r¨\u0006%"}, d2 = {"Lcom/vk/sdk/api/notes/dto/NotesNoteComment;", "", "date", "", "id", "message", "", "nid", "oid", "uid", "replyTo", "(IILjava/lang/String;IIILjava/lang/Integer;)V", "getDate", "()I", "getId", "getMessage", "()Ljava/lang/String;", "getNid", "getOid", "getReplyTo", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUid", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(IILjava/lang/String;IIILjava/lang/Integer;)Lcom/vk/sdk/api/notes/dto/NotesNoteComment;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NotesNoteComment {
    @SerializedName("date")
    private final int date;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35958id;
    @SerializedName("message")
    @NotNull
    private final String message;
    @SerializedName("nid")
    private final int nid;
    @SerializedName("oid")
    private final int oid;
    @SerializedName("reply_to")
    @Nullable
    private final Integer replyTo;
    @SerializedName("uid")
    private final int uid;

    public NotesNoteComment(int i9, int i10, @NotNull String message, int i11, int i12, int i13, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.date = i9;
        this.f35958id = i10;
        this.message = message;
        this.nid = i11;
        this.oid = i12;
        this.uid = i13;
        this.replyTo = num;
    }

    public static /* synthetic */ NotesNoteComment copy$default(NotesNoteComment notesNoteComment, int i9, int i10, String str, int i11, int i12, int i13, Integer num, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i9 = notesNoteComment.date;
        }
        if ((i14 & 2) != 0) {
            i10 = notesNoteComment.f35958id;
        }
        int i15 = i10;
        if ((i14 & 4) != 0) {
            str = notesNoteComment.message;
        }
        String str2 = str;
        if ((i14 & 8) != 0) {
            i11 = notesNoteComment.nid;
        }
        int i16 = i11;
        if ((i14 & 16) != 0) {
            i12 = notesNoteComment.oid;
        }
        int i17 = i12;
        if ((i14 & 32) != 0) {
            i13 = notesNoteComment.uid;
        }
        int i18 = i13;
        if ((i14 & 64) != 0) {
            num = notesNoteComment.replyTo;
        }
        return notesNoteComment.copy(i9, i15, str2, i16, i17, i18, num);
    }

    public final int component1() {
        return this.date;
    }

    public final int component2() {
        return this.f35958id;
    }

    @NotNull
    public final String component3() {
        return this.message;
    }

    public final int component4() {
        return this.nid;
    }

    public final int component5() {
        return this.oid;
    }

    public final int component6() {
        return this.uid;
    }

    @Nullable
    public final Integer component7() {
        return this.replyTo;
    }

    @NotNull
    public final NotesNoteComment copy(int i9, int i10, @NotNull String message, int i11, int i12, int i13, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(message, "message");
        return new NotesNoteComment(i9, i10, message, i11, i12, i13, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotesNoteComment) {
            NotesNoteComment notesNoteComment = (NotesNoteComment) obj;
            return this.date == notesNoteComment.date && this.f35958id == notesNoteComment.f35958id && Intrinsics.areEqual(this.message, notesNoteComment.message) && this.nid == notesNoteComment.nid && this.oid == notesNoteComment.oid && this.uid == notesNoteComment.uid && Intrinsics.areEqual(this.replyTo, notesNoteComment.replyTo);
        }
        return false;
    }

    public final int getDate() {
        return this.date;
    }

    public final int getId() {
        return this.f35958id;
    }

    @NotNull
    public final String getMessage() {
        return this.message;
    }

    public final int getNid() {
        return this.nid;
    }

    public final int getOid() {
        return this.oid;
    }

    @Nullable
    public final Integer getReplyTo() {
        return this.replyTo;
    }

    public final int getUid() {
        return this.uid;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.date * 31) + this.f35958id) * 31) + this.message.hashCode()) * 31) + this.nid) * 31) + this.oid) * 31) + this.uid) * 31;
        Integer num = this.replyTo;
        return hashCode + (num == null ? 0 : num.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.date;
        int i10 = this.f35958id;
        String str = this.message;
        int i11 = this.nid;
        int i12 = this.oid;
        int i13 = this.uid;
        Integer num = this.replyTo;
        return "NotesNoteComment(date=" + i9 + ", id=" + i10 + ", message=" + str + ", nid=" + i11 + ", oid=" + i12 + ", uid=" + i13 + ", replyTo=" + num + ")";
    }

    public /* synthetic */ NotesNoteComment(int i9, int i10, String str, int i11, int i12, int i13, Integer num, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, str, i11, i12, i13, (i14 & 64) != 0 ? null : num);
    }
}
