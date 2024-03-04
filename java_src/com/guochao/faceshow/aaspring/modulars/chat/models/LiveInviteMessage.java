package com.guochao.faceshow.aaspring.modulars.chat.models;

import com.google.android.exoplayer2.PlaybackException;
import com.guochao.faceshow.aaspring.beans.HelloLiveInvite;
import com.tencent.imsdk.v2.V2TIMCustomElem;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMMessageManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\"\u0010\b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000e\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\t\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\"\u0010\u0011\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\t\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "", "parseMsg", "", "getSummary", "", "getItemViewType", "liveId", "Ljava/lang/String;", "getLiveId", "()Ljava/lang/String;", "setLiveId", "(Ljava/lang/String;)V", "content", "getContent", "setContent", "contentEnd", "getContentEnd", "setContentEnd", "Lcom/tencent/imsdk/v2/V2TIMMessage;", "message", "<init>", "(Lcom/tencent/imsdk/v2/V2TIMMessage;)V", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class LiveInviteMessage extends a {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private String content;
    @NotNull
    private String contentEnd;
    @NotNull
    private String liveId;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage$Companion;", "", "()V", "from", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;", "helloLiveInvite", "Lcom/guochao/faceshow/aaspring/beans/HelloLiveInvite;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LiveInviteMessage from(@NotNull HelloLiveInvite helloLiveInvite) {
            Intrinsics.checkNotNullParameter(helloLiveInvite, "helloLiveInvite");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("liveId", helloLiveInvite.getLiveId());
                jSONObject.put("content", helloLiveInvite.getContent());
                jSONObject.put("contentEnd", helloLiveInvite.getContentEnd());
                jSONObject.put("msg_type", PlaybackException.ERROR_CODE_DRM_UNSPECIFIED);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "jsonObject.toString()");
            V2TIMMessageManager messageManager = V2TIMManager.getMessageManager();
            byte[] bytes = jSONObject2.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            V2TIMMessage createCustomMessage = messageManager.createCustomMessage(bytes);
            Intrinsics.checkNotNullExpressionValue(createCustomMessage, "getMessageManager().crea…ge(content.toByteArray())");
            return new LiveInviteMessage(createCustomMessage);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveInviteMessage(@NotNull V2TIMMessage message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
        this.liveId = "";
        this.content = "";
        this.contentEnd = "";
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @NotNull
    public final String getContentEnd() {
        return this.contentEnd;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        return isSelf() ? 29 : 30;
    }

    @NotNull
    public final String getLiveId() {
        return this.liveId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    @NotNull
    public String getSummary() {
        return this.content;
    }

    public final void parseMsg() {
        V2TIMCustomElem customElem = this.message.getCustomElem();
        if (customElem == null) {
            return;
        }
        try {
            byte[] data = customElem.getData();
            Intrinsics.checkNotNullExpressionValue(data, "elem.data");
            JSONObject jSONObject = new JSONObject(new String(data, Charsets.UTF_8));
            String optString = jSONObject.optString("liveId");
            Intrinsics.checkNotNullExpressionValue(optString, "jsonObject.optString(\"liveId\")");
            this.liveId = optString;
            String optString2 = jSONObject.optString("content");
            Intrinsics.checkNotNullExpressionValue(optString2, "jsonObject.optString(\"content\")");
            this.content = optString2;
            String optString3 = jSONObject.optString("contentEnd");
            Intrinsics.checkNotNullExpressionValue(optString3, "jsonObject.optString(\"contentEnd\")");
            this.contentEnd = optString3;
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public final void setContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.content = str;
    }

    public final void setContentEnd(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentEnd = str;
    }

    public final void setLiveId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.liveId = str;
    }
}
