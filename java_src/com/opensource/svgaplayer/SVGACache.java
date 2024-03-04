package com.opensource.svgaplayer;

import android.content.Context;
import java.io.File;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u0010\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0018\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0007\u001a\u00020\bR\u0016\u0010\u0003\u001a\u00020\u00048BX\u0082\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/opensource/svgaplayer/SVGACache;", "", "()V", "cacheDir", "", "getCacheDir", "()Ljava/lang/String;", "type", "Lcom/opensource/svgaplayer/SVGACache$Type;", "buildAudioFile", "Ljava/io/File;", "audio", "buildCacheDir", "cacheKey", "buildCacheKey", "url", "Ljava/net/URL;", "str", "buildSvgaFile", "isCached", "", "isDefaultCache", "isInitialized", "onCreate", "", "context", "Landroid/content/Context;", "Type", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGACache {
    @NotNull
    public static final SVGACache INSTANCE = new SVGACache();
    @NotNull
    private static Type type = Type.DEFAULT;
    @NotNull
    private static String cacheDir = FileUtils.RES_PREFIX_STORAGE;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/opensource/svgaplayer/SVGACache$Type;", "", "(Ljava/lang/String;I)V", "DEFAULT", "FILE", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Type {
        DEFAULT,
        FILE;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static Type[] valuesCustom() {
            Type[] valuesCustom = values();
            return (Type[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    private SVGACache() {
    }

    private final String getCacheDir() {
        if (!Intrinsics.areEqual(cacheDir, FileUtils.RES_PREFIX_STORAGE)) {
            File file = new File(cacheDir);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return cacheDir;
    }

    @NotNull
    public final File buildAudioFile(@NotNull String audio) {
        Intrinsics.checkNotNullParameter(audio, "audio");
        return new File(getCacheDir() + audio + ".mp3");
    }

    @NotNull
    public final File buildCacheDir(@NotNull String cacheKey) {
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        return new File(getCacheDir() + cacheKey + IOUtils.DIR_SEPARATOR_UNIX);
    }

    @NotNull
    public final String buildCacheKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        Charset forName = Charset.forName("UTF-8");
        Intrinsics.checkNotNullExpressionValue(forName, "Charset.forName(charsetName)");
        byte[] bytes = str.getBytes(forName);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        messageDigest.update(bytes);
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digest, "digest");
        int length = digest.length;
        String str2 = "";
        int i9 = 0;
        while (i9 < length) {
            byte b10 = digest[i9];
            i9++;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
            str2 = Intrinsics.stringPlus(str2, format);
        }
        return str2;
    }

    @NotNull
    public final File buildSvgaFile(@NotNull String cacheKey) {
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        return new File(getCacheDir() + cacheKey + ".svga");
    }

    public final boolean isCached(@NotNull String cacheKey) {
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        return (isDefaultCache() ? buildCacheDir(cacheKey) : buildSvgaFile(cacheKey)).exists();
    }

    public final boolean isDefaultCache() {
        return type == Type.DEFAULT;
    }

    public final boolean isInitialized() {
        return !Intrinsics.areEqual(FileUtils.RES_PREFIX_STORAGE, getCacheDir());
    }

    public final void onCreate(@Nullable Context context) {
        onCreate(context, Type.DEFAULT);
    }

    public final void onCreate(@Nullable Context context, @NotNull Type type2) {
        Intrinsics.checkNotNullParameter(type2, "type");
        if (isInitialized() || context == null) {
            return;
        }
        cacheDir = Intrinsics.stringPlus(context.getCacheDir().getAbsolutePath(), "/svga/");
        File file = new File(getCacheDir());
        if (!(!file.exists())) {
            file = null;
        }
        if (file != null) {
            file.mkdirs();
        }
        type = type2;
    }

    @NotNull
    public final String buildCacheKey(@NotNull URL url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String url2 = url.toString();
        Intrinsics.checkNotNullExpressionValue(url2, "url.toString()");
        return buildCacheKey(url2);
    }
}
