package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.Map;
/* loaded from: classes3.dex */
public class TencentConfigBean {
    private String beautyKey = BaseConfig.TX_LIVE_UGC_KEY;
    private String beautyLicenseUrl = BaseConfig.TX_UGC_LICENSE_URL;
    private String imAppId;
    private String liveAppId;
    private String liveKey;
    private String liveLicenseUrl;
    private String liveV2Key;
    private String liveV2LicenseUrl;
    private String ugcKey;
    private String ugcLicenseUrl;

    public static TencentConfigBean getDefault() {
        TencentConfigBean tencentConfigBean = (TencentConfigBean) com.guochao.faceshow.aaspring.manager.b.a("txConfig", "TencentConfigBean", TencentConfigBean.class);
        if (tencentConfigBean == null) {
            TencentConfigBean tencentConfigBean2 = new TencentConfigBean();
            tencentConfigBean2.imAppId = String.valueOf((int) BaseConfig.IM_SDK_APPID);
            tencentConfigBean2.liveAppId = BaseConfig.TX_LIVE_APP_ID;
            tencentConfigBean2.liveLicenseUrl = BaseConfig.TX_UGC_LICENSE_URL;
            tencentConfigBean2.ugcLicenseUrl = BaseConfig.TX_UGC_LICENSE_URL;
            tencentConfigBean2.liveKey = BaseConfig.TX_LIVE_UGC_KEY;
            tencentConfigBean2.ugcKey = BaseConfig.TX_LIVE_UGC_KEY;
            tencentConfigBean2.liveV2Key = BaseConfig.TX_LIVE_UGC_KEY;
            tencentConfigBean2.liveV2LicenseUrl = BaseConfig.TX_UGC_LICENSE_URL;
            tencentConfigBean2.beautyKey = BaseConfig.TX_LIVE_UGC_KEY;
            tencentConfigBean2.beautyLicenseUrl = BaseConfig.TX_UGC_LICENSE_URL;
            return tencentConfigBean2;
        }
        return tencentConfigBean;
    }

    public static TencentConfigBean getPushData(Map<String, Object> map) {
        TencentConfigBean tencentConfigBean = new TencentConfigBean();
        tencentConfigBean.liveAppId = map.get("liveAppId") instanceof String ? (String) map.get("liveAppId") : null;
        tencentConfigBean.ugcLicenseUrl = map.get("ugcLicenseUrl") instanceof String ? (String) map.get("ugcLicenseUrl") : null;
        tencentConfigBean.liveLicenseUrl = map.get("liveLicenseUrl") instanceof String ? (String) map.get("liveLicenseUrl") : null;
        tencentConfigBean.ugcKey = map.get("ugcKey") instanceof String ? (String) map.get("ugcKey") : null;
        tencentConfigBean.liveKey = map.get("liveKey") instanceof String ? (String) map.get("liveKey") : null;
        tencentConfigBean.imAppId = map.get("imAppId") instanceof String ? (String) map.get("imAppId") : null;
        return tencentConfigBean;
    }

    public boolean enable() {
        return (TextUtils.isEmpty(this.liveAppId) || TextUtils.isEmpty(this.ugcLicenseUrl) || TextUtils.isEmpty(this.liveLicenseUrl) || TextUtils.isEmpty(this.ugcKey) || TextUtils.isEmpty(this.liveKey) || TextUtils.isEmpty(this.imAppId)) ? false : true;
    }

    public boolean equalsLocal() {
        TencentConfigBean tencentConfigBean = getDefault();
        String str = this.imAppId;
        if (str == null || str.equalsIgnoreCase(tencentConfigBean.imAppId)) {
            String str2 = this.liveAppId;
            if (str2 == null || str2.equalsIgnoreCase(tencentConfigBean.liveAppId)) {
                String str3 = this.liveLicenseUrl;
                if (str3 == null || str3.equalsIgnoreCase(tencentConfigBean.liveLicenseUrl)) {
                    String str4 = this.ugcLicenseUrl;
                    if (str4 == null || str4.equalsIgnoreCase(tencentConfigBean.ugcLicenseUrl)) {
                        String str5 = this.liveKey;
                        if (str5 == null || str5.equalsIgnoreCase(tencentConfigBean.liveKey)) {
                            String str6 = this.ugcKey;
                            return str6 == null || str6.equalsIgnoreCase(tencentConfigBean.ugcKey);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public String getBeautyKey() {
        return this.beautyKey;
    }

    public String getBeautyLicenseUrl() {
        return this.beautyLicenseUrl;
    }

    public String getImAppId() {
        return this.imAppId;
    }

    public String getLiveAppId() {
        return this.liveAppId;
    }

    public String getLiveKey() {
        return this.liveKey;
    }

    public String getLiveLicenseUrl() {
        return this.liveLicenseUrl;
    }

    public String getLiveV2Key() {
        return this.liveV2Key;
    }

    public String getLiveV2LicenseUrl() {
        return this.liveV2LicenseUrl;
    }

    public String getUgcKey() {
        return this.ugcKey;
    }

    public String getUgcLicenseUrl() {
        return this.ugcLicenseUrl;
    }

    public void saveLocal() {
        com.guochao.faceshow.aaspring.manager.b.f("txConfig", "TencentConfigBean", this);
    }

    public void setBeautyKey(String str) {
        this.beautyKey = str;
    }

    public void setBeautyLicenseUrl(String str) {
        this.beautyLicenseUrl = str;
    }

    public void setImAppId(String str) {
        this.imAppId = str;
    }

    public void setLiveAppId(String str) {
        this.liveAppId = str;
    }

    public void setLiveKey(String str) {
        this.liveKey = str;
    }

    public void setLiveLicenseUrl(String str) {
        this.liveLicenseUrl = str;
    }

    public void setLiveV2Key(String str) {
        this.liveV2Key = str;
    }

    public void setLiveV2LicenseUrl(String str) {
        this.liveV2LicenseUrl = str;
    }

    public void setUgcKey(String str) {
        this.ugcKey = str;
    }

    public void setUgcLicenseUrl(String str) {
        this.ugcLicenseUrl = str;
    }
}
