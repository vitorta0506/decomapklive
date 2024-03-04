package com.tencent.thumbplayer.b;

import com.huawei.hms.framework.common.ContainerUtils;
import com.tencent.thumbplayer.api.composition.ITPMediaAssetOrderedMap;
import com.tencent.thumbplayer.utils.TPLogUtil;
/* loaded from: classes4.dex */
public class c implements ITPMediaAssetOrderedMap {

    /* renamed from: a  reason: collision with root package name */
    private StringBuilder f33745a = new StringBuilder();

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetOrderedMap
    public void addKeyValue(String str, String str2) {
        TPLogUtil.i("TPMediaAssetOrderedMap", "addKeyValue key:" + str + ContainerUtils.KEY_VALUE_DELIMITER + str2);
        StringBuilder sb2 = this.f33745a;
        sb2.append(str);
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        sb2.append(str2);
        sb2.append(";");
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetOrderedMap
    public String getKeyValueStr() {
        TPLogUtil.i("TPMediaAssetOrderedMap", "getKeyValueStr " + this.f33745a.toString());
        return this.f33745a.toString();
    }
}
