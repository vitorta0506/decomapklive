package com.tencent.thumbplayer.b;

import com.tencent.thumbplayer.api.composition.ITPMediaRTCAsset;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.io.IOException;
/* loaded from: classes4.dex */
public class k extends d implements ITPMediaRTCAsset {

    /* renamed from: a  reason: collision with root package name */
    private String f33771a;

    /* renamed from: b  reason: collision with root package name */
    private String f33772b;

    /* renamed from: c  reason: collision with root package name */
    private int f33773c;

    public k(String str, String str2) {
        this.f33773c = 0;
        this.f33771a = str;
        this.f33772b = str2;
    }

    public k(String str, String str2, int i9) {
        this.f33771a = str;
        this.f33772b = str2;
        this.f33773c = i9;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaRTCAsset
    public int getRtcSdpExchangeType() {
        return this.f33773c;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaRTCAsset
    public String getRtcServerUrl() {
        return this.f33772b;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaRTCAsset
    public String getRtcStreamUrl() {
        return this.f33771a;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (IOException e10) {
            TPLogUtil.e("TPMediaWebrtcAsset", e10);
            return "";
        }
    }
}
