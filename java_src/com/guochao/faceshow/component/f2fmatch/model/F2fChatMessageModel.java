package com.guochao.faceshow.component.f2fmatch.model;

import com.guochao.faceshow.aaspring.modulars.chat.models.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0015\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0001\u0010\f\u001a\u00020\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b(\u0010)J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\nHÆ\u0003JC\u0010\u0011\u001a\u00020\u00002\b\b\u0003\u0010\f\u001a\u00020\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\nHÆ\u0001J\t\u0010\u0012\u001a\u00020\bHÖ\u0001J\t\u0010\u0013\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0019\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u000f\u0010 \u001a\u0004\b!\u0010\"R$\u0010\u0010\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;", "", "", "component1", "", "component2", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "component3", "", "component4", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;", "component5", "messageType", "msg", "imMessage", "translatedMsg", "f2fSpeechToTextResultModel", "copy", "toString", "hashCode", "other", "", "equals", "I", "getMessageType", "()I", "Ljava/lang/CharSequence;", "getMsg", "()Ljava/lang/CharSequence;", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "getImMessage", "()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "Ljava/lang/String;", "getTranslatedMsg", "()Ljava/lang/String;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;", "getF2fSpeechToTextResultModel", "()Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;", "setF2fSpeechToTextResultModel", "(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V", "<init>", "(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class F2fChatMessageModel {
    @Nullable
    private F2fSpeechToTextResultModel f2fSpeechToTextResultModel;
    @Nullable
    private final a imMessage;
    private final int messageType;
    @Nullable
    private final CharSequence msg;
    @Nullable
    private final String translatedMsg;

    public F2fChatMessageModel(int i9, @Nullable CharSequence charSequence, @Nullable a aVar, @Nullable String str, @Nullable F2fSpeechToTextResultModel f2fSpeechToTextResultModel) {
        this.messageType = i9;
        this.msg = charSequence;
        this.imMessage = aVar;
        this.translatedMsg = str;
        this.f2fSpeechToTextResultModel = f2fSpeechToTextResultModel;
    }

    public static /* synthetic */ F2fChatMessageModel copy$default(F2fChatMessageModel f2fChatMessageModel, int i9, CharSequence charSequence, a aVar, String str, F2fSpeechToTextResultModel f2fSpeechToTextResultModel, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = f2fChatMessageModel.messageType;
        }
        if ((i10 & 2) != 0) {
            charSequence = f2fChatMessageModel.msg;
        }
        CharSequence charSequence2 = charSequence;
        if ((i10 & 4) != 0) {
            aVar = f2fChatMessageModel.imMessage;
        }
        a aVar2 = aVar;
        if ((i10 & 8) != 0) {
            str = f2fChatMessageModel.translatedMsg;
        }
        String str2 = str;
        if ((i10 & 16) != 0) {
            f2fSpeechToTextResultModel = f2fChatMessageModel.f2fSpeechToTextResultModel;
        }
        return f2fChatMessageModel.copy(i9, charSequence2, aVar2, str2, f2fSpeechToTextResultModel);
    }

    public final int component1() {
        return this.messageType;
    }

    @Nullable
    public final CharSequence component2() {
        return this.msg;
    }

    @Nullable
    public final a component3() {
        return this.imMessage;
    }

    @Nullable
    public final String component4() {
        return this.translatedMsg;
    }

    @Nullable
    public final F2fSpeechToTextResultModel component5() {
        return this.f2fSpeechToTextResultModel;
    }

    @NotNull
    public final F2fChatMessageModel copy(int i9, @Nullable CharSequence charSequence, @Nullable a aVar, @Nullable String str, @Nullable F2fSpeechToTextResultModel f2fSpeechToTextResultModel) {
        return new F2fChatMessageModel(i9, charSequence, aVar, str, f2fSpeechToTextResultModel);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof F2fChatMessageModel) {
            F2fChatMessageModel f2fChatMessageModel = (F2fChatMessageModel) obj;
            return this.messageType == f2fChatMessageModel.messageType && Intrinsics.areEqual(this.msg, f2fChatMessageModel.msg) && Intrinsics.areEqual(this.imMessage, f2fChatMessageModel.imMessage) && Intrinsics.areEqual(this.translatedMsg, f2fChatMessageModel.translatedMsg) && Intrinsics.areEqual(this.f2fSpeechToTextResultModel, f2fChatMessageModel.f2fSpeechToTextResultModel);
        }
        return false;
    }

    @Nullable
    public final F2fSpeechToTextResultModel getF2fSpeechToTextResultModel() {
        return this.f2fSpeechToTextResultModel;
    }

    @Nullable
    public final a getImMessage() {
        return this.imMessage;
    }

    public final int getMessageType() {
        return this.messageType;
    }

    @Nullable
    public final CharSequence getMsg() {
        return this.msg;
    }

    @Nullable
    public final String getTranslatedMsg() {
        return this.translatedMsg;
    }

    public int hashCode() {
        int i9 = this.messageType * 31;
        CharSequence charSequence = this.msg;
        int hashCode = (i9 + (charSequence == null ? 0 : charSequence.hashCode())) * 31;
        a aVar = this.imMessage;
        int hashCode2 = (hashCode + (aVar == null ? 0 : aVar.hashCode())) * 31;
        String str = this.translatedMsg;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        F2fSpeechToTextResultModel f2fSpeechToTextResultModel = this.f2fSpeechToTextResultModel;
        return hashCode3 + (f2fSpeechToTextResultModel != null ? f2fSpeechToTextResultModel.hashCode() : 0);
    }

    public final void setF2fSpeechToTextResultModel(@Nullable F2fSpeechToTextResultModel f2fSpeechToTextResultModel) {
        this.f2fSpeechToTextResultModel = f2fSpeechToTextResultModel;
    }

    @NotNull
    public String toString() {
        return "F2fChatMessageModel(messageType=" + this.messageType + ", msg=" + ((Object) this.msg) + ", imMessage=" + this.imMessage + ", translatedMsg=" + this.translatedMsg + ", f2fSpeechToTextResultModel=" + this.f2fSpeechToTextResultModel + ')';
    }

    public /* synthetic */ F2fChatMessageModel(int i9, CharSequence charSequence, a aVar, String str, F2fSpeechToTextResultModel f2fSpeechToTextResultModel, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : charSequence, (i10 & 4) != 0 ? null : aVar, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : f2fSpeechToTextResultModel);
    }
}
