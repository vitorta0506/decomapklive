package com.guochao.faceshow.aaspring.modulars.chat.models;

import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMMessageManager;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "", "isOnlineMessage", "showNotification", "", "f2f_cmd", "Ljava/lang/String;", "getF2f_cmd", "()Ljava/lang/String;", "Lcom/tencent/imsdk/v2/V2TIMMessage;", "message", "<init>", "(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;)V", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class F2fCmdMessage extends a {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String F2F_FOCUS = "c2c_follow";
    @NotNull
    public static final String F2F_REMOVE_GUASS = "c2c_rmGuass";
    @NotNull
    private final String f2f_cmd;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;", "", "()V", "F2F_FOCUS", "", "F2F_REMOVE_GUASS", "newMessage", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;", "cmd", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final F2fCmdMessage newMessage(@NotNull String cmd) {
            Intrinsics.checkNotNullParameter(cmd, "cmd");
            V2TIMMessageManager messageManager = V2TIMManager.getMessageManager();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("f2f_cmd", cmd);
            Unit unit = Unit.INSTANCE;
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "JSONObject().apply {\n   …             }.toString()");
            Charset forName = Charset.forName("utf-8");
            Intrinsics.checkNotNullExpressionValue(forName, "forName(\"utf-8\")");
            byte[] bytes = jSONObject2.getBytes(forName);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            V2TIMMessage createCustomMessage = messageManager.createCustomMessage(bytes);
            Intrinsics.checkNotNullExpressionValue(createCustomMessage, "getMessageManager().crea…harset.forName(\"utf-8\")))");
            return new F2fCmdMessage(cmd, createCustomMessage);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fCmdMessage(@NotNull String f2f_cmd, @NotNull V2TIMMessage message) {
        super(message);
        Intrinsics.checkNotNullParameter(f2f_cmd, "f2f_cmd");
        Intrinsics.checkNotNullParameter(message, "message");
        this.f2f_cmd = f2f_cmd;
    }

    @JvmStatic
    @NotNull
    public static final F2fCmdMessage newMessage(@NotNull String str) {
        return Companion.newMessage(str);
    }

    @NotNull
    public final String getF2f_cmd() {
        return this.f2f_cmd;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean isOnlineMessage() {
        return true;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean showNotification() {
        return false;
    }
}
