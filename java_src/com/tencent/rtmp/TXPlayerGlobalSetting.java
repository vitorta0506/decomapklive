package com.tencent.rtmp;
/* loaded from: classes4.dex */
public class TXPlayerGlobalSetting {
    public static String getCacheFolderPath() {
        return com.tencent.liteav.txcplayer.common.b.a();
    }

    public static int getMaxCacheSize() {
        return Math.max(com.tencent.liteav.txcplayer.common.b.b(), 0);
    }

    public static void setCacheFolderPath(String str) {
        com.tencent.liteav.txcplayer.common.b.a(str);
    }

    public static void setMaxCacheSize(int i9) {
        com.tencent.liteav.txcplayer.common.b.a(i9);
    }
}
