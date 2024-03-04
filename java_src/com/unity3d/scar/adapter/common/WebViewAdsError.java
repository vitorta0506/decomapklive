package com.unity3d.scar.adapter.common;
/* loaded from: classes4.dex */
public class WebViewAdsError implements IUnityAdsError {
    protected String _description;
    protected Object[] _errorArguments;
    private Enum _errorCategory;

    public WebViewAdsError(Enum<?> r12, String str, Object... objArr) {
        this._errorCategory = r12;
        this._description = str;
        this._errorArguments = objArr;
    }

    @Override // com.unity3d.scar.adapter.common.IUnityAdsError
    public int getCode() {
        return -1;
    }

    @Override // com.unity3d.scar.adapter.common.IUnityAdsError
    public String getDescription() {
        return this._description;
    }

    @Override // com.unity3d.scar.adapter.common.IUnityAdsError
    public String getDomain() {
        return null;
    }

    public Object[] getErrorArguments() {
        return this._errorArguments;
    }

    public Enum<?> getErrorCategory() {
        return this._errorCategory;
    }
}
