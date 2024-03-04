package com.guochao.faceshow.aaspring.modulars.push.messagehandler;

import android.content.Context;
import android.graphics.Bitmap;
import com.guochao.faceshow.aaspring.utils.PushNotificationUtils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0010¢\u0006\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/CommonDisplayer;", "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;", "()V", "onShowNotification", "", "context", "Landroid/content/Context;", "map", "", "", "", "largeIcon", "Landroid/graphics/Bitmap;", "largeImage", "onShowNotification$app_GooglePlayRelease", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CommonDisplayer extends PushNotificationDisplayer {
    @NotNull
    public static final CommonDisplayer INSTANCE = new CommonDisplayer();

    private CommonDisplayer() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.messagehandler.PushNotificationDisplayer
    public void onShowNotification$app_GooglePlayRelease(@NotNull Context context, @NotNull Map<String, Object> map, @Nullable Bitmap bitmap, @Nullable Bitmap bitmap2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(map, "map");
        PushNotificationUtils.INSTANCE.showNormalNotification(map, bitmap, bitmap2);
    }
}
