package com.guochao.faceshow.aaspring.modulars.push.messagehandler;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.File;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JA\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bH ¢\u0006\u0002\b\rJ\"\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\b¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;", "", "()V", "onShowNotification", "", "context", "Landroid/content/Context;", "map", "", "", "largeIcon", "Landroid/graphics/Bitmap;", "largeImage", "onShowNotification$app_GooglePlayRelease", "showNotification", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class PushNotificationDisplayer {
    public static /* synthetic */ void onShowNotification$app_GooglePlayRelease$default(PushNotificationDisplayer pushNotificationDisplayer, Context context, Map map, Bitmap bitmap, Bitmap bitmap2, int i9, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onShowNotification");
        }
        if ((i9 & 4) != 0) {
            bitmap = null;
        }
        if ((i9 & 8) != 0) {
            bitmap2 = null;
        }
        pushNotificationDisplayer.onShowNotification$app_GooglePlayRelease(context, map, bitmap, bitmap2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r8v15, types: [T, android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r8v22, types: [T, android.graphics.Bitmap] */
    /* renamed from: showNotification$lambda-3  reason: not valid java name */
    public static final void m552showNotification$lambda3(Ref.ObjectRef largeIcon, final Context context, Object obj, final PushNotificationDisplayer this$0, final Map map) {
        Runnable runnable;
        File file;
        Intrinsics.checkNotNullParameter(largeIcon, "$largeIcon");
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(map, "$map");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        try {
            try {
                if (!TextUtils.isEmpty(String.valueOf(largeIcon.element))) {
                    int dp2px = DensityUtil.dp2px(64.0f);
                    File file2 = com.bumptech.glide.c.u(context).d().Y0(largeIcon.element).I0(dp2px, dp2px).get(10L, TimeUnit.SECONDS);
                    if (file2 != null) {
                        objectRef.element = BitmapFactory.decodeFile(file2.getAbsolutePath());
                    }
                }
                if (!TextUtils.isEmpty(String.valueOf(obj)) && (file = com.bumptech.glide.c.u(context).d().Y0(obj).I0(Integer.MIN_VALUE, Integer.MIN_VALUE).get(10L, TimeUnit.SECONDS)) != null) {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                    if (options.outWidth > context.getResources().getDisplayMetrics().widthPixels - DensityUtil.dp2px(60.0f)) {
                        options.inSampleSize = 2;
                    }
                    options.inJustDecodeBounds = false;
                    objectRef2.element = BitmapFactory.decodeFile(file.getAbsolutePath());
                }
                runnable = new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.push.messagehandler.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        PushNotificationDisplayer.m553showNotification$lambda3$lambda2(PushNotificationDisplayer.this, context, map, objectRef, objectRef2);
                    }
                };
            } catch (Exception e10) {
                Log.e(PushNotificationDisplayerKt.TAG, "showNotification: ", e10);
                runnable = new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.push.messagehandler.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        PushNotificationDisplayer.m553showNotification$lambda3$lambda2(PushNotificationDisplayer.this, context, map, objectRef, objectRef2);
                    }
                };
            }
            HandlerGetter.runOnUIThread$default(runnable, null, 2, null);
        } catch (Throwable th2) {
            HandlerGetter.runOnUIThread$default(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.push.messagehandler.d
                @Override // java.lang.Runnable
                public final void run() {
                    PushNotificationDisplayer.m553showNotification$lambda3$lambda2(PushNotificationDisplayer.this, context, map, objectRef, objectRef2);
                }
            }, null, 2, null);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showNotification$lambda-3$lambda-2  reason: not valid java name */
    public static final void m553showNotification$lambda3$lambda2(PushNotificationDisplayer this$0, Context context, Map map, Ref.ObjectRef lageIconBitmap, Ref.ObjectRef lageImageBitmap) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(map, "$map");
        Intrinsics.checkNotNullParameter(lageIconBitmap, "$lageIconBitmap");
        Intrinsics.checkNotNullParameter(lageImageBitmap, "$lageImageBitmap");
        this$0.onShowNotification$app_GooglePlayRelease(context, map, (Bitmap) lageIconBitmap.element, (Bitmap) lageImageBitmap.element);
    }

    public abstract void onShowNotification$app_GooglePlayRelease(@NotNull Context context, @NotNull Map<String, Object> map, @Nullable Bitmap bitmap, @Nullable Bitmap bitmap2);

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v0, types: [T, java.lang.Object] */
    public final void showNotification(@NotNull final Context context, @NotNull final Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(map, "map");
        final ?? r42 = map.get("large_img");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? r02 = map.get(RemoteMessageConst.Notification.ICON);
        objectRef.element = r02;
        if (r02 == 0) {
            objectRef.element = r42;
        }
        if (objectRef.element == 0 && r42 == 0) {
            onShowNotification$app_GooglePlayRelease$default(this, context, map, null, null, 12, null);
        } else {
            PushNotificationDisplayerKt.getExecutor().execute(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.push.messagehandler.e
                @Override // java.lang.Runnable
                public final void run() {
                    PushNotificationDisplayer.m552showNotification$lambda3(Ref.ObjectRef.this, context, r42, this, map);
                }
            });
        }
    }
}
