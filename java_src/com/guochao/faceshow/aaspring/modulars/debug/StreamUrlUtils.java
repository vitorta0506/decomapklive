package com.guochao.faceshow.aaspring.modulars.debug;

import b8.e;
import com.guochao.faceshow.utils.BaseConfig;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0011\u0012B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0003J\u0014\u0010\t\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0007J\b\u0010\u000b\u001a\u00020\fH\u0007J\u001c\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0007R\u0018\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002¨\u0006\u0013"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;", "", "()V", "replacer", "Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;", "getReplacer$annotations", "getStreamId", "", "url", "getStreamUrl", "streamUrl", "setGrey", "", "streamEquals", "", "oldUrl", "newUrl", "DebugStreamUrlReplacer", "StreamUrlReplacer", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class StreamUrlUtils {
    @NotNull
    public static final StreamUrlUtils INSTANCE = new StreamUrlUtils();
    @NotNull
    private static StreamUrlReplacer replacer = new StreamUrlReplacer();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$DebugStreamUrlReplacer;", "Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;", "()V", "getStreamUrl", "", "streamUrl", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DebugStreamUrlReplacer extends StreamUrlReplacer {
        @Override // com.guochao.faceshow.aaspring.modulars.debug.StreamUrlUtils.StreamUrlReplacer
        @Nullable
        public String getStreamUrl(@Nullable String str) {
            String streamUrl;
            String replace$default;
            if (str == null || (streamUrl = super.getStreamUrl(str)) == null) {
                return str;
            }
            replace$default = StringsKt__StringsJVMKt.replace$default(streamUrl, BaseConfig.LIVE_DOMAIN_NAME, "testlive.gchao.com", false, 4, (Object) null);
            return replace$default;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;", "", "()V", "getStreamUrl", "", "streamUrl", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static class StreamUrlReplacer {
        @Nullable
        public String getStreamUrl(@Nullable String str) {
            int indexOf$default;
            int indexOf$default2;
            if (str == null) {
                return str;
            }
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, "uid=", 0, false, 6, (Object) null);
            if (indexOf$default >= 0) {
                return str;
            }
            indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, "?", 0, false, 6, (Object) null);
            StringBuilder sb2 = new StringBuilder(str);
            if (indexOf$default2 < 0) {
                sb2.append("?");
            } else {
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
            sb2.append("uid=");
            sb2.append(e.g().getUserId());
            return sb2.toString();
        }
    }

    private StreamUrlUtils() {
    }

    @JvmStatic
    private static /* synthetic */ void getReplacer$annotations() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0011, code lost:
        r0 = kotlin.text.StringsKt__StringsKt.lastIndexOf$default((java.lang.CharSequence) r8, org.light.utils.FileUtils.RES_PREFIX_STORAGE, 0, false, 6, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001f, code lost:
        r2 = kotlin.text.StringsKt__StringsKt.lastIndexOf$default((java.lang.CharSequence) r8, ".", 0, false, 6, (java.lang.Object) null);
     */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.lang.String getStreamId(java.lang.String r8) {
        /*
            if (r8 == 0) goto Lb
            int r0 = r8.length()
            if (r0 != 0) goto L9
            goto Lb
        L9:
            r0 = 0
            goto Lc
        Lb:
            r0 = 1
        Lc:
            java.lang.String r1 = ""
            if (r0 == 0) goto L11
            return r1
        L11:
            r4 = 0
            r5 = 0
            r6 = 6
            r7 = 0
            java.lang.String r3 = "/"
            r2 = r8
            int r0 = kotlin.text.StringsKt.lastIndexOf$default(r2, r3, r4, r5, r6, r7)
            if (r0 >= 0) goto L1f
            return r1
        L1f:
            r4 = 0
            r5 = 0
            r6 = 6
            r7 = 0
            java.lang.String r3 = "."
            r2 = r8
            int r2 = kotlin.text.StringsKt.lastIndexOf$default(r2, r3, r4, r5, r6, r7)
            if (r2 >= 0) goto L2d
            return r1
        L2d:
            if (r2 >= r0) goto L30
            return r8
        L30:
            java.lang.String r8 = r8.substring(r0, r2)
            java.lang.String r0 = "this as java.lang.String…ing(startIndex, endIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.debug.StreamUrlUtils.getStreamId(java.lang.String):java.lang.String");
    }

    @JvmStatic
    @Nullable
    public static final String getStreamUrl(@Nullable String str) {
        return replacer.getStreamUrl(str);
    }

    @JvmStatic
    public static final void setGrey() {
        replacer = new StreamUrlReplacer();
    }

    @JvmStatic
    public static final boolean streamEquals(@Nullable String str, @Nullable String str2) {
        if (Objects.equals(str, str2)) {
            return true;
        }
        try {
            return Objects.equals(getStreamId(str), getStreamId(str2));
        } catch (Exception unused) {
            return false;
        }
    }
}
