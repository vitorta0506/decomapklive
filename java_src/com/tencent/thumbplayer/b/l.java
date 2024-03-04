package com.tencent.thumbplayer.b;

import com.tencent.thumbplayer.api.composition.ITPMediaUrlAsset;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.io.IOException;
/* loaded from: classes4.dex */
public class l extends d implements ITPMediaUrlAsset {

    /* renamed from: a  reason: collision with root package name */
    private String f33774a;

    public l(String str) {
        this.f33774a = str;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaUrlAsset
    public String getStreamUrl() {
        return this.f33774a;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (IOException e10) {
            TPLogUtil.e("TPMediaUrlAsset", e10);
            return "";
        }
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaUrlAsset
    public void setStreamUrl(String str) {
        this.f33774a = str;
    }
}
