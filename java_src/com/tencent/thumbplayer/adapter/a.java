package com.tencent.thumbplayer.adapter;

import androidx.annotation.NonNull;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.api.TPVideoInfo;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer;
import java.util.Map;
/* loaded from: classes4.dex */
public interface a extends com.tencent.thumbplayer.adapter.a.b {
    int a();

    void a(c.k kVar);

    void a(@NonNull com.tencent.thumbplayer.adapter.a.e eVar);

    void a(com.tencent.thumbplayer.adapter.a.e eVar, int i9, long j10);

    void a(@NonNull com.tencent.thumbplayer.adapter.a.e eVar, Map<String, String> map);

    void a(com.tencent.thumbplayer.adapter.a.e eVar, Map<String, String> map, int i9, long j10);

    void a(TPVideoInfo tPVideoInfo);

    void a(ITPRichMediaSynchronizer iTPRichMediaSynchronizer);

    int b();

    void b(TPVideoInfo tPVideoInfo);

    boolean c();

    int d();

    b e();
}
