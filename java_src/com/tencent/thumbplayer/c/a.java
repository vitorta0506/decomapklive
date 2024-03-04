package com.tencent.thumbplayer.c;

import androidx.annotation.NonNull;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPVideoInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.proxy.ITPPlayerProxy;
import com.tencent.thumbplayer.api.proxy.ITPPlayerProxyListener;
import com.tencent.thumbplayer.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import java.util.Map;
/* loaded from: classes4.dex */
public interface a extends ITPPlayerProxy {
    com.tencent.thumbplayer.adapter.a.e a(long j10, String str, TPVideoInfo tPVideoInfo, Map<String, String> map);

    @NonNull
    com.tencent.thumbplayer.adapter.a.e a(String str, Map<String, String> map);

    @NonNull
    ITPMediaAsset a(@NonNull ITPMediaAsset iTPMediaAsset);

    ITPMediaAsset a(ITPMediaAsset iTPMediaAsset, long j10, TPVideoInfo tPVideoInfo);

    String a(int i9, String str, TPDownloadParamData tPDownloadParamData);

    void a(float f10);

    void a(int i9);

    void a(long j10);

    void a(TPOptionalParam tPOptionalParam);

    void a(TPVideoInfo tPVideoInfo);

    void a(ITPPlayListener iTPPlayListener);

    void a(String str, Object obj);

    void a(String str, String str2);

    void a(boolean z10);

    boolean a();

    void b();

    boolean c();

    void d();

    void e();

    boolean f();

    String g();

    void h();

    void i();

    ITPPlayerProxyListener j();
}
