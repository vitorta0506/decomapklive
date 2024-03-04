package com.vk.api.sdk.utils;

import android.graphics.Point;
import android.os.Build;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\b\u0010\u001c\u001a\u00020\u0003H\u0016J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\nR\u001b\u0010\u000f\u001a\u00020\u00038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0010\u0010\n¨\u0006 "}, d2 = {"Lcom/vk/api/sdk/utils/DefaultUserAgent;", "Lcom/vk/api/sdk/utils/UserAgentProvider;", "prefix", "", "appVersion", "appBuild", "displaySize", "Landroid/graphics/Point;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;)V", "getAppBuild", "()Ljava/lang/String;", "getAppVersion", "getDisplaySize", "()Landroid/graphics/Point;", "getPrefix", "stringify", "getStringify", "stringify$delegate", "Lkotlin/Lazy;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "getUserAgent", "hashCode", "", "toString", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DefaultUserAgent implements UserAgentProvider {
    @NotNull
    private final String appBuild;
    @NotNull
    private final String appVersion;
    @NotNull
    private final Point displaySize;
    @NotNull
    private final String prefix;
    @NotNull
    private final Lazy stringify$delegate;

    public DefaultUserAgent(@NotNull String prefix, @NotNull String appVersion, @NotNull String appBuild, @NotNull Point displaySize) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(appVersion, "appVersion");
        Intrinsics.checkNotNullParameter(appBuild, "appBuild");
        Intrinsics.checkNotNullParameter(displaySize, "displaySize");
        this.prefix = prefix;
        this.appVersion = appVersion;
        this.appBuild = appBuild;
        this.displaySize = displaySize;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.vk.api.sdk.utils.DefaultUserAgent$stringify$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(Locale.US, "%s/%s-%s (Android %s; SDK %d; %s; %s %s; %s; %dx%d)", Arrays.copyOf(new Object[]{DefaultUserAgent.this.getPrefix(), DefaultUserAgent.this.getAppVersion(), DefaultUserAgent.this.getAppBuild(), Build.VERSION.RELEASE, Integer.valueOf(Build.VERSION.SDK_INT), Build.CPU_ABI, Build.MANUFACTURER, Build.MODEL, System.getProperty("user.language"), Integer.valueOf(Math.max(DefaultUserAgent.this.getDisplaySize().x, DefaultUserAgent.this.getDisplaySize().y)), Integer.valueOf(Math.min(DefaultUserAgent.this.getDisplaySize().x, DefaultUserAgent.this.getDisplaySize().y))}, 11));
                Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(locale, format, *args)");
                return VKUtils.toHumanReadableAscii(format);
            }
        });
        this.stringify$delegate = lazy;
    }

    public static /* synthetic */ DefaultUserAgent copy$default(DefaultUserAgent defaultUserAgent, String str, String str2, String str3, Point point, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = defaultUserAgent.prefix;
        }
        if ((i9 & 2) != 0) {
            str2 = defaultUserAgent.appVersion;
        }
        if ((i9 & 4) != 0) {
            str3 = defaultUserAgent.appBuild;
        }
        if ((i9 & 8) != 0) {
            point = defaultUserAgent.displaySize;
        }
        return defaultUserAgent.copy(str, str2, str3, point);
    }

    private final String getStringify() {
        return (String) this.stringify$delegate.getValue();
    }

    @NotNull
    public final String component1() {
        return this.prefix;
    }

    @NotNull
    public final String component2() {
        return this.appVersion;
    }

    @NotNull
    public final String component3() {
        return this.appBuild;
    }

    @NotNull
    public final Point component4() {
        return this.displaySize;
    }

    @NotNull
    public final DefaultUserAgent copy(@NotNull String prefix, @NotNull String appVersion, @NotNull String appBuild, @NotNull Point displaySize) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(appVersion, "appVersion");
        Intrinsics.checkNotNullParameter(appBuild, "appBuild");
        Intrinsics.checkNotNullParameter(displaySize, "displaySize");
        return new DefaultUserAgent(prefix, appVersion, appBuild, displaySize);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DefaultUserAgent) {
            DefaultUserAgent defaultUserAgent = (DefaultUserAgent) obj;
            return Intrinsics.areEqual(this.prefix, defaultUserAgent.prefix) && Intrinsics.areEqual(this.appVersion, defaultUserAgent.appVersion) && Intrinsics.areEqual(this.appBuild, defaultUserAgent.appBuild) && Intrinsics.areEqual(this.displaySize, defaultUserAgent.displaySize);
        }
        return false;
    }

    @NotNull
    public final String getAppBuild() {
        return this.appBuild;
    }

    @NotNull
    public final String getAppVersion() {
        return this.appVersion;
    }

    @NotNull
    public final Point getDisplaySize() {
        return this.displaySize;
    }

    @NotNull
    public final String getPrefix() {
        return this.prefix;
    }

    @Override // com.vk.api.sdk.utils.UserAgentProvider
    @NotNull
    public String getUserAgent() {
        return getStringify();
    }

    public int hashCode() {
        return (((((this.prefix.hashCode() * 31) + this.appVersion.hashCode()) * 31) + this.appBuild.hashCode()) * 31) + this.displaySize.hashCode();
    }

    @NotNull
    public String toString() {
        return "DefaultUserAgent(prefix=" + this.prefix + ", appVersion=" + this.appVersion + ", appBuild=" + this.appBuild + ", displaySize=" + this.displaySize + ')';
    }
}
