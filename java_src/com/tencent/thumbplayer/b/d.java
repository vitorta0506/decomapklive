package com.tencent.thumbplayer.b;

import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam;
import java.util.Map;
/* loaded from: classes4.dex */
public class d implements ITPMediaAsset {

    /* renamed from: a  reason: collision with root package name */
    private ITPMediaAssetExtraParam f33746a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f33747b;

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public ITPMediaAssetExtraParam getExtraParam() {
        return this.f33746a;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public Map<String, String> getHttpHeader() {
        return this.f33747b;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        return "";
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public void setExtraParam(ITPMediaAssetExtraParam iTPMediaAssetExtraParam) {
        this.f33746a = iTPMediaAssetExtraParam;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public void setHttpHeader(Map<String, String> map) {
        this.f33747b = map;
    }
}
