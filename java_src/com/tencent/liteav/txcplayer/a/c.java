package com.tencent.liteav.txcplayer.a;

import android.content.Context;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.thumbplayer.downloader.ThumbPlayerDownloader;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f31355a = "com.tencent.liteav.txcplayer.a.c";

    public static a a(Context context) {
        a b10 = context != null ? b(context) : null;
        return b10 == null ? a() : b10;
    }

    private static a b(Context context) {
        try {
            int i9 = ThumbPlayerDownloader.f31297a;
            if (context != null) {
                Method method = ThumbPlayerDownloader.class.getMethod("getInstance", Context.class);
                method.setAccessible(true);
                return (a) method.invoke(null, context);
            }
            return null;
        } catch (Exception e10) {
            String str = f31355a;
            LiteavLog.e(str, "create ThumbPlayer Downloader exception!" + e10.getMessage());
            return null;
        }
    }

    private static a a() {
        try {
            Class.forName("com.tencent.ijk.media.player.IjkDownloadCenter");
            Method method = Class.forName("com.tencent.ijk.media.player.IjkDownloadCenter").getMethod("getInstance", new Class[0]);
            method.setAccessible(true);
            return (a) method.invoke(null, new Object[0]);
        } catch (Exception e10) {
            String str = f31355a;
            LiteavLog.e(str, "create IjkPlayer Downloader exception!" + e10.getMessage());
            return null;
        }
    }
}
