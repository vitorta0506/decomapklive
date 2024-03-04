package com.tencent.thumbplayer.c;

import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
/* loaded from: classes4.dex */
public class j implements b {

    /* renamed from: a  reason: collision with root package name */
    private ITPDownloadProxy f33871a;

    public j(ITPDownloadProxy iTPDownloadProxy) {
        this.f33871a = iTPDownloadProxy;
    }

    @Override // com.tencent.thumbplayer.c.b
    public ITPDownloadProxy a() {
        return this.f33871a;
    }

    @Override // com.tencent.thumbplayer.c.b
    public void a(int i9) {
        this.f33871a.pushEvent(i9);
    }
}
