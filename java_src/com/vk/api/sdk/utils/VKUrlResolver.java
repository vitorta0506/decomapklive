package com.vk.api.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007\b\u0000¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/utils/VKUrlResolver;", "", "()V", "open", "", "context", "Landroid/content/Context;", "url", "", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKUrlResolver {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String VK_APP_PACKAGE_NAME = "com.vkontakte.android";

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/utils/VKUrlResolver$Companion;", "", "()V", "VK_APP_PACKAGE_NAME", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void open(@NotNull Context context, @NotNull String url) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
        intent.addFlags(268435456);
        if (VKUtils.isAppInstalled(context, "com.vkontakte.android")) {
            intent.setPackage("com.vkontakte.android");
        }
        context.startActivity(intent);
    }
}
