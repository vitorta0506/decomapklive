package com.tencent.thumbplayer.b;

import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class j extends d implements ITPMediaDRMAsset {

    /* renamed from: a  reason: collision with root package name */
    private String f33768a;
    @TPCommonEnum.TP_DRM_TYPE

    /* renamed from: b  reason: collision with root package name */
    private int f33769b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f33770c = new HashMap();

    public j(@TPCommonEnum.TP_DRM_TYPE int i9, String str) {
        this.f33768a = str;
        this.f33769b = i9;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public Map<String, String> getDrmAllProperties() {
        return this.f33770c;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public String getDrmPlayUrl() {
        return this.f33768a;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public String getDrmProperty(String str, String str2) {
        String str3;
        Map<String, String> map = this.f33770c;
        return (map == null || map.isEmpty() || (str3 = this.f33770c.get(str)) == null) ? str2 : str3;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    @TPCommonEnum.TP_DRM_TYPE
    public int getDrmType() {
        return this.f33769b;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (IOException e10) {
            TPLogUtil.e("TPMediaDRMAsset", e10);
            return "";
        }
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public void setDrmPlayUrl(String str) {
        this.f33768a = str;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public void setDrmProperty(String str, String str2) {
        this.f33770c.put(str, str2);
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public void setDrmType(@TPCommonEnum.TP_DRM_TYPE int i9) {
        this.f33769b = i9;
    }
}
