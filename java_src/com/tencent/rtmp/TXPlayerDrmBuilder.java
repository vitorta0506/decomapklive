package com.tencent.rtmp;

import android.text.TextUtils;
/* loaded from: classes4.dex */
public class TXPlayerDrmBuilder {
    private static final String DEFAULT_PROVISION_URL = "https://www.googleapis.com/certificateprovisioning/v1/devicecertificates/create?key=AIzaSyB-5OLKTx2iU5mko18DfdwK5611JIjbUhE";
    String mDeviceCertificateUrl = DEFAULT_PROVISION_URL;
    String mKeyLicenseUrl;
    String mPlayUrl;

    public TXPlayerDrmBuilder() {
    }

    public String getDeviceCertificateUrl() {
        return this.mDeviceCertificateUrl;
    }

    public String getKeyLicenseUrl() {
        return this.mKeyLicenseUrl;
    }

    public String getPlayUrl() {
        return this.mPlayUrl;
    }

    public TXPlayerDrmBuilder setDeviceCertificateUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            this.mDeviceCertificateUrl = DEFAULT_PROVISION_URL;
        } else {
            this.mDeviceCertificateUrl = str;
        }
        return this;
    }

    public TXPlayerDrmBuilder setKeyLicenseUrl(String str) {
        this.mKeyLicenseUrl = str;
        return this;
    }

    public TXPlayerDrmBuilder setPlayUrl(String str) {
        this.mPlayUrl = str;
        return this;
    }

    public String toString() {
        return "TXPlayerDrmBuilder{deviceCertificateUrl='" + this.mDeviceCertificateUrl + "', licenseUrl='" + this.mKeyLicenseUrl + "', playUrl='" + this.mPlayUrl + "'}";
    }

    public TXPlayerDrmBuilder(String str, String str2) {
        this.mKeyLicenseUrl = str;
        this.mPlayUrl = str2;
    }
}
