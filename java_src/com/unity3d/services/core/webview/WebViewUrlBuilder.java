package com.unity3d.services.core.webview;

import com.huawei.hms.framework.common.ContainerUtils;
import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.log.DeviceLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes4.dex */
public class WebViewUrlBuilder {
    private final String _urlWithQueryString;

    public WebViewUrlBuilder(String str, Configuration configuration) {
        String str2 = ("?platform=android" + buildQueryParam("origin", configuration.getWebViewUrl())) + buildQueryParam("version", configuration.getWebViewVersion());
        if (configuration.getExperiments() != null && configuration.getExperiments().isForwardExperimentsToWebViewEnabled()) {
            str2 = str2 + buildQueryParam("experiments", configuration.getExperiments().getExperimentData().toString());
        }
        this._urlWithQueryString = str + str2;
    }

    private String buildQueryParam(String str, String str2) {
        if (str2 != null) {
            try {
                return "" + ContainerUtils.FIELD_DELIMITER + str + ContainerUtils.KEY_VALUE_DELIMITER + URLEncoder.encode(str2, "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                DeviceLog.exception(String.format("Unsupported charset when encoding %s", str), e10);
                return "";
            }
        }
        return "";
    }

    public String getUrlWithQueryString() {
        return this._urlWithQueryString;
    }
}
