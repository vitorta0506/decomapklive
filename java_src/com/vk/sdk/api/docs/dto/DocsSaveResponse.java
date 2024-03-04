package com.vk.sdk.api.docs.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.messages.dto.MessagesAudioMessage;
import com.vk.sdk.api.messages.dto.MessagesGraffiti;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003J9\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/docs/dto/DocsSaveResponse;", "", "type", "Lcom/vk/sdk/api/docs/dto/DocsDocAttachmentType;", "audioMessage", "Lcom/vk/sdk/api/messages/dto/MessagesAudioMessage;", "doc", "Lcom/vk/sdk/api/docs/dto/DocsDoc;", "graffiti", "Lcom/vk/sdk/api/messages/dto/MessagesGraffiti;", "(Lcom/vk/sdk/api/docs/dto/DocsDocAttachmentType;Lcom/vk/sdk/api/messages/dto/MessagesAudioMessage;Lcom/vk/sdk/api/docs/dto/DocsDoc;Lcom/vk/sdk/api/messages/dto/MessagesGraffiti;)V", "getAudioMessage", "()Lcom/vk/sdk/api/messages/dto/MessagesAudioMessage;", "getDoc", "()Lcom/vk/sdk/api/docs/dto/DocsDoc;", "getGraffiti", "()Lcom/vk/sdk/api/messages/dto/MessagesGraffiti;", "getType", "()Lcom/vk/sdk/api/docs/dto/DocsDocAttachmentType;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DocsSaveResponse {
    @SerializedName("audio_message")
    @Nullable
    private final MessagesAudioMessage audioMessage;
    @SerializedName("doc")
    @Nullable
    private final DocsDoc doc;
    @SerializedName("graffiti")
    @Nullable
    private final MessagesGraffiti graffiti;
    @SerializedName("type")
    @Nullable
    private final DocsDocAttachmentType type;

    public DocsSaveResponse() {
        this(null, null, null, null, 15, null);
    }

    public DocsSaveResponse(@Nullable DocsDocAttachmentType docsDocAttachmentType, @Nullable MessagesAudioMessage messagesAudioMessage, @Nullable DocsDoc docsDoc, @Nullable MessagesGraffiti messagesGraffiti) {
        this.type = docsDocAttachmentType;
        this.audioMessage = messagesAudioMessage;
        this.doc = docsDoc;
        this.graffiti = messagesGraffiti;
    }

    public static /* synthetic */ DocsSaveResponse copy$default(DocsSaveResponse docsSaveResponse, DocsDocAttachmentType docsDocAttachmentType, MessagesAudioMessage messagesAudioMessage, DocsDoc docsDoc, MessagesGraffiti messagesGraffiti, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            docsDocAttachmentType = docsSaveResponse.type;
        }
        if ((i9 & 2) != 0) {
            messagesAudioMessage = docsSaveResponse.audioMessage;
        }
        if ((i9 & 4) != 0) {
            docsDoc = docsSaveResponse.doc;
        }
        if ((i9 & 8) != 0) {
            messagesGraffiti = docsSaveResponse.graffiti;
        }
        return docsSaveResponse.copy(docsDocAttachmentType, messagesAudioMessage, docsDoc, messagesGraffiti);
    }

    @Nullable
    public final DocsDocAttachmentType component1() {
        return this.type;
    }

    @Nullable
    public final MessagesAudioMessage component2() {
        return this.audioMessage;
    }

    @Nullable
    public final DocsDoc component3() {
        return this.doc;
    }

    @Nullable
    public final MessagesGraffiti component4() {
        return this.graffiti;
    }

    @NotNull
    public final DocsSaveResponse copy(@Nullable DocsDocAttachmentType docsDocAttachmentType, @Nullable MessagesAudioMessage messagesAudioMessage, @Nullable DocsDoc docsDoc, @Nullable MessagesGraffiti messagesGraffiti) {
        return new DocsSaveResponse(docsDocAttachmentType, messagesAudioMessage, docsDoc, messagesGraffiti);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DocsSaveResponse) {
            DocsSaveResponse docsSaveResponse = (DocsSaveResponse) obj;
            return this.type == docsSaveResponse.type && Intrinsics.areEqual(this.audioMessage, docsSaveResponse.audioMessage) && Intrinsics.areEqual(this.doc, docsSaveResponse.doc) && Intrinsics.areEqual(this.graffiti, docsSaveResponse.graffiti);
        }
        return false;
    }

    @Nullable
    public final MessagesAudioMessage getAudioMessage() {
        return this.audioMessage;
    }

    @Nullable
    public final DocsDoc getDoc() {
        return this.doc;
    }

    @Nullable
    public final MessagesGraffiti getGraffiti() {
        return this.graffiti;
    }

    @Nullable
    public final DocsDocAttachmentType getType() {
        return this.type;
    }

    public int hashCode() {
        DocsDocAttachmentType docsDocAttachmentType = this.type;
        int hashCode = (docsDocAttachmentType == null ? 0 : docsDocAttachmentType.hashCode()) * 31;
        MessagesAudioMessage messagesAudioMessage = this.audioMessage;
        int hashCode2 = (hashCode + (messagesAudioMessage == null ? 0 : messagesAudioMessage.hashCode())) * 31;
        DocsDoc docsDoc = this.doc;
        int hashCode3 = (hashCode2 + (docsDoc == null ? 0 : docsDoc.hashCode())) * 31;
        MessagesGraffiti messagesGraffiti = this.graffiti;
        return hashCode3 + (messagesGraffiti != null ? messagesGraffiti.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        DocsDocAttachmentType docsDocAttachmentType = this.type;
        MessagesAudioMessage messagesAudioMessage = this.audioMessage;
        DocsDoc docsDoc = this.doc;
        MessagesGraffiti messagesGraffiti = this.graffiti;
        return "DocsSaveResponse(type=" + docsDocAttachmentType + ", audioMessage=" + messagesAudioMessage + ", doc=" + docsDoc + ", graffiti=" + messagesGraffiti + ")";
    }

    public /* synthetic */ DocsSaveResponse(DocsDocAttachmentType docsDocAttachmentType, MessagesAudioMessage messagesAudioMessage, DocsDoc docsDoc, MessagesGraffiti messagesGraffiti, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : docsDocAttachmentType, (i9 & 2) != 0 ? null : messagesAudioMessage, (i9 & 4) != 0 ? null : docsDoc, (i9 & 8) != 0 ? null : messagesGraffiti);
    }
}
