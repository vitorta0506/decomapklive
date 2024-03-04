package com.tencent.thumbplayer.b;

import com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam;
import com.tencent.thumbplayer.api.composition.ITPMediaAssetObjectParam;
import java.io.Serializable;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class b implements ITPMediaAssetExtraParam {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, Serializable> f33744a = new HashMap<>();

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public int getExtraInt(String str) {
        if (this.f33744a.containsKey(str)) {
            return ((Integer) this.f33744a.get(str)).intValue();
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public ITPMediaAssetObjectParam getExtraObject(String str) {
        if (this.f33744a.get(str) instanceof ITPMediaAssetObjectParam) {
            return (ITPMediaAssetObjectParam) this.f33744a.get(str);
        }
        return null;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public String getExtraString(String str) {
        return this.f33744a.containsKey(str) ? (String) this.f33744a.get(str) : "";
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public void setExtraInt(String str, int i9) {
        this.f33744a.put(str, Integer.valueOf(i9));
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public void setExtraObject(String str, ITPMediaAssetObjectParam iTPMediaAssetObjectParam) {
        this.f33744a.put(str, iTPMediaAssetObjectParam);
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public void setExtraString(String str, String str2) {
        this.f33744a.put(str, str2);
    }
}
