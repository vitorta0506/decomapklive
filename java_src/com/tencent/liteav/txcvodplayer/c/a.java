package com.tencent.liteav.txcvodplayer.c;

import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import com.tencent.liteav.base.storage.PersistStorage;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder;
import java.io.File;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    private static a f31576d;

    /* renamed from: a  reason: collision with root package name */
    public final PersistStorage f31577a;

    /* renamed from: b  reason: collision with root package name */
    public final PersistStorage f31578b;

    /* renamed from: c  reason: collision with root package name */
    public volatile long f31579c;

    private a() {
        PersistStorage persistStorage = new PersistStorage("v4_cache");
        this.f31577a = persistStorage;
        Long l10 = persistStorage.getLong("clean_time");
        this.f31579c = l10 == null ? 0L : l10.longValue();
        this.f31578b = new PersistStorage("v4_download");
    }

    public static a a() {
        synchronized (a.class) {
            if (f31576d == null) {
                f31576d = new a();
            }
        }
        return f31576d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar, int i9, String str, String str2, String str3, String str4) {
        String a10 = a(i9, str);
        String d10 = com.tencent.liteav.txcplayer.b.a.d(str2);
        String a11 = TXCHLSEncoder.a(i9, V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND, str, 0);
        String a12 = TXCHLSEncoder.a(a11, str3);
        String a13 = TXCHLSEncoder.a(a11, str4);
        StringBuilder sb2 = new StringBuilder(a12);
        sb2.append("_");
        sb2.append(a13);
        sb2.append("_");
        sb2.append(d10);
        sb2.append("_");
        sb2.append(System.currentTimeMillis() / 3600000);
        aVar.f31577a.put(a10, sb2.toString());
        aVar.f31577a.commit();
        LiteavLog.i("PlayInfoProtocolV4Storage", "put cache key: " + a10 + " value:" + sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar, int i9, String str, String str2, String str3) {
        String a10 = a(i9, str);
        String a11 = TXCHLSEncoder.a(i9, V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND, str, 0);
        String a12 = TXCHLSEncoder.a(a11, str2);
        String a13 = TXCHLSEncoder.a(a11, str3);
        StringBuilder sb2 = new StringBuilder(a12);
        sb2.append("_");
        sb2.append(a13);
        aVar.f31578b.put(a10, sb2.toString());
        aVar.f31578b.commit();
        LiteavLog.i("PlayInfoProtocolV4Storage", "put download key: " + a10 + " value:" + sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar, String str, long j10) {
        String[] allKeys;
        String[] split;
        if (!str.endsWith(FileUtils.RES_PREFIX_STORAGE)) {
            str = str + FileUtils.RES_PREFIX_STORAGE;
        }
        for (String str2 : aVar.f31577a.getAllKeys()) {
            String string = aVar.f31577a.getString(str2);
            if (string != null && (split = string.split("_")) != null && split.length == 4 && j10 - Long.valueOf(split[3]).longValue() >= 24) {
                if (!new File(str + split[2]).exists()) {
                    aVar.f31577a.clear(str2);
                    aVar.f31577a.commit();
                    LiteavLog.i("PlayInfoProtocolV4Storage", "clean key: " + str2 + " value: " + string);
                }
            }
        }
        aVar.f31577a.put("clean_time", aVar.f31579c);
        aVar.f31577a.commit();
    }

    public static String a(int i9, String str) {
        return i9 + "_" + str;
    }
}
