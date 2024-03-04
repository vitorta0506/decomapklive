package com.guochao.faceshow.aaspring.beans;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\b\u001d\b\u0086\b\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0010J\t\u00107\u001a\u00020\u0003HÆ\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u00109\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010:\u001a\u00020\u0005HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u008a\u0001\u0010B\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010CJ\u0013\u0010D\u001a\u00020+2\b\u0010E\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010F\u001a\u00020\u0003HÖ\u0001J\t\u0010G\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001e\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0016\"\u0004\b!\u0010\u0018R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0012\"\u0004\b#\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0016\"\u0004\b)\u0010\u0018R\u001e\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e¢\u0006\u0010\n\u0002\u00100\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0016\"\u0004\b2\u0010\u0018R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0012\"\u0004\b4\u0010\u0014R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0016\"\u0004\b6\u0010\u0018¨\u0006H"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;", "", RemoteMessageConst.MSGID, "", "msgTimestamp", "", "messageType", "", "type", "id", ViewHierarchyConstants.TEXT_KEY, "name", "image", "imageWidth", "imageHeight", "url", "(IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getId", "()I", "setId", "(I)V", "getImage", "()Ljava/lang/String;", "setImage", "(Ljava/lang/String;)V", "getImageHeight", "()Ljava/lang/Integer;", "setImageHeight", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getImageWidth", "setImageWidth", "getMessageType", "setMessageType", "getMsgId", "setMsgId", "getMsgTimestamp", "()J", "setMsgTimestamp", "(J)V", "getName", "setName", "shareable", "", "getShareable", "()Ljava/lang/Boolean;", "setShareable", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getText", "setText", "getType", "setType", "getUrl", "setUrl", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;", "equals", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class EventMessageModel {

    /* renamed from: id  reason: collision with root package name */
    private int f16307id;
    @Nullable
    private String image;
    @Nullable
    private Integer imageHeight;
    @Nullable
    private Integer imageWidth;
    @Nullable
    private String messageType;
    private int msgId;
    private long msgTimestamp;
    @Nullable
    private String name;
    @Nullable
    private Boolean shareable = Boolean.TRUE;
    @Nullable
    private String text;
    private int type;
    @Nullable
    private String url;

    public EventMessageModel(int i9, long j10, @Nullable String str, int i10, int i11, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num, @Nullable Integer num2, @Nullable String str5) {
        this.msgId = i9;
        this.msgTimestamp = j10;
        this.messageType = str;
        this.type = i10;
        this.f16307id = i11;
        this.text = str2;
        this.name = str3;
        this.image = str4;
        this.imageWidth = num;
        this.imageHeight = num2;
        this.url = str5;
    }

    public final int component1() {
        return this.msgId;
    }

    @Nullable
    public final Integer component10() {
        return this.imageHeight;
    }

    @Nullable
    public final String component11() {
        return this.url;
    }

    public final long component2() {
        return this.msgTimestamp;
    }

    @Nullable
    public final String component3() {
        return this.messageType;
    }

    public final int component4() {
        return this.type;
    }

    public final int component5() {
        return this.f16307id;
    }

    @Nullable
    public final String component6() {
        return this.text;
    }

    @Nullable
    public final String component7() {
        return this.name;
    }

    @Nullable
    public final String component8() {
        return this.image;
    }

    @Nullable
    public final Integer component9() {
        return this.imageWidth;
    }

    @NotNull
    public final EventMessageModel copy(int i9, long j10, @Nullable String str, int i10, int i11, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num, @Nullable Integer num2, @Nullable String str5) {
        return new EventMessageModel(i9, j10, str, i10, i11, str2, str3, str4, num, num2, str5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EventMessageModel) {
            EventMessageModel eventMessageModel = (EventMessageModel) obj;
            return this.msgId == eventMessageModel.msgId && this.msgTimestamp == eventMessageModel.msgTimestamp && Intrinsics.areEqual(this.messageType, eventMessageModel.messageType) && this.type == eventMessageModel.type && this.f16307id == eventMessageModel.f16307id && Intrinsics.areEqual(this.text, eventMessageModel.text) && Intrinsics.areEqual(this.name, eventMessageModel.name) && Intrinsics.areEqual(this.image, eventMessageModel.image) && Intrinsics.areEqual(this.imageWidth, eventMessageModel.imageWidth) && Intrinsics.areEqual(this.imageHeight, eventMessageModel.imageHeight) && Intrinsics.areEqual(this.url, eventMessageModel.url);
        }
        return false;
    }

    public final int getId() {
        return this.f16307id;
    }

    @Nullable
    public final String getImage() {
        return this.image;
    }

    @Nullable
    public final Integer getImageHeight() {
        return this.imageHeight;
    }

    @Nullable
    public final Integer getImageWidth() {
        return this.imageWidth;
    }

    @Nullable
    public final String getMessageType() {
        return this.messageType;
    }

    public final int getMsgId() {
        return this.msgId;
    }

    public final long getMsgTimestamp() {
        return this.msgTimestamp;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Boolean getShareable() {
        return this.shareable;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    public final int getType() {
        return this.type;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int a10 = ((this.msgId * 31) + b7.b.a(this.msgTimestamp)) * 31;
        String str = this.messageType;
        int hashCode = (((((a10 + (str == null ? 0 : str.hashCode())) * 31) + this.type) * 31) + this.f16307id) * 31;
        String str2 = this.text;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.name;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.image;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.imageWidth;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.imageHeight;
        int hashCode6 = (hashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str5 = this.url;
        return hashCode6 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setId(int i9) {
        this.f16307id = i9;
    }

    public final void setImage(@Nullable String str) {
        this.image = str;
    }

    public final void setImageHeight(@Nullable Integer num) {
        this.imageHeight = num;
    }

    public final void setImageWidth(@Nullable Integer num) {
        this.imageWidth = num;
    }

    public final void setMessageType(@Nullable String str) {
        this.messageType = str;
    }

    public final void setMsgId(int i9) {
        this.msgId = i9;
    }

    public final void setMsgTimestamp(long j10) {
        this.msgTimestamp = j10;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setShareable(@Nullable Boolean bool) {
        this.shareable = bool;
    }

    public final void setText(@Nullable String str) {
        this.text = str;
    }

    public final void setType(int i9) {
        this.type = i9;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }

    @NotNull
    public String toString() {
        return "EventMessageModel(msgId=" + this.msgId + ", msgTimestamp=" + this.msgTimestamp + ", messageType=" + this.messageType + ", type=" + this.type + ", id=" + this.f16307id + ", text=" + this.text + ", name=" + this.name + ", image=" + this.image + ", imageWidth=" + this.imageWidth + ", imageHeight=" + this.imageHeight + ", url=" + this.url + ')';
    }
}
