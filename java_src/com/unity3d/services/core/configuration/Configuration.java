package com.unity3d.services.core.configuration;

import com.guochao.faceshow.utils.HttpFileUtil;
import com.unity3d.services.core.device.reader.DeviceInfoReaderBuilder;
import com.unity3d.services.core.misc.Utilities;
import com.unity3d.services.core.properties.SdkProperties;
import com.unity3d.services.core.request.WebRequest;
import java.io.File;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class Configuration {
    private String _configJsonString;
    private String _configUrl;
    private ConfigurationRequestFactory _configurationRequestFactory;
    private int _connectedEventThresholdInMs;
    private boolean _delayWebViewUpdate;
    private Experiments _experiments;
    private int _loadTimeout;
    private int _maxRetries;
    private int _maximumConnectedEvents;
    private double _metricSampleRate;
    private String _metricsUrl;
    private String[] _moduleConfigurationList;
    private Map<String, IModuleConfiguration> _moduleConfigurations;
    private long _networkErrorTimeout;
    private int _resetWebAppTimeout;
    private long _retryDelay;
    private double _retryScalingFactor;
    private String _sdkVersion;
    private int _showTimeout;
    private String _src;
    private String _stateId;
    private int _tokenTimeout;
    private String _unifiedAuctionToken;
    private Class[] _webAppApiClassList;
    private long _webViewAppCreateTimeout;
    private int _webViewBridgeTimeout;
    private String _webViewData;
    private String _webViewHash;
    private String _webViewUrl;
    private String _webViewVersion;

    public Configuration() {
        this._moduleConfigurationList = new String[]{"com.unity3d.services.core.configuration.CoreModuleConfiguration", "com.unity3d.services.ads.configuration.AdsModuleConfiguration", "com.unity3d.services.analytics.core.configuration.AnalyticsModuleConfiguration", "com.unity3d.services.banners.configuration.BannersModuleConfiguration", "com.unity3d.services.store.core.configuration.StoreModuleConfiguration"};
        setOptionalFields(new JSONObject());
    }

    private void createWebAppApiClassList() {
        ArrayList arrayList = new ArrayList();
        for (String str : getModuleConfigurationList()) {
            IModuleConfiguration moduleConfiguration = getModuleConfiguration(str);
            if (moduleConfiguration != null && moduleConfiguration.getWebAppApiClassList() != null) {
                arrayList.addAll(Arrays.asList(moduleConfiguration.getWebAppApiClassList()));
            }
        }
        this._webAppApiClassList = (Class[]) arrayList.toArray(new Class[arrayList.size()]);
    }

    private JSONObject getFilteredConfigJson(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            if (!next.equals("tkn") && !next.equals("sid")) {
                jSONObject2.put(next, opt);
            }
        }
        return jSONObject2;
    }

    private void setOptionalFields(JSONObject jSONObject) {
        this._webViewVersion = jSONObject.optString("version", null);
        this._delayWebViewUpdate = jSONObject.optBoolean("dwu", false);
        this._resetWebAppTimeout = jSONObject.optInt("rwt", 10000);
        this._maxRetries = jSONObject.optInt("mr", 6);
        this._retryDelay = jSONObject.optLong("rd", 5000L);
        this._retryScalingFactor = jSONObject.optDouble("rcf", 2.0d);
        this._connectedEventThresholdInMs = jSONObject.optInt("cet", 10000);
        this._maximumConnectedEvents = jSONObject.optInt("mce", 500);
        this._networkErrorTimeout = jSONObject.optLong("net", 60000L);
        this._sdkVersion = jSONObject.optString("sdkv", "");
        this._showTimeout = jSONObject.optInt("sto", 10000);
        this._loadTimeout = jSONObject.optInt("lto", HttpFileUtil.TIMEOUT);
        this._webViewBridgeTimeout = jSONObject.optInt("wto", 5000);
        this._metricsUrl = jSONObject.optString("murl", "");
        this._metricSampleRate = jSONObject.optDouble("msr", 100.0d);
        this._webViewAppCreateTimeout = jSONObject.optLong("wct", 60000L);
        this._tokenTimeout = jSONObject.optInt("tto", 5000);
        this._src = jSONObject.optString("src", null);
        this._experiments = new Experiments(jSONObject.optJSONObject("exp"));
    }

    public String getConfigUrl() {
        return this._configUrl;
    }

    public int getConnectedEventThreshold() {
        return this._connectedEventThresholdInMs;
    }

    public boolean getDelayWebViewUpdate() {
        return this._delayWebViewUpdate;
    }

    public Experiments getExperiments() {
        return this._experiments;
    }

    public String getJSONString() {
        return this._configJsonString;
    }

    public int getLoadTimeout() {
        return this._loadTimeout;
    }

    public int getMaxRetries() {
        return this._maxRetries;
    }

    public int getMaximumConnectedEvents() {
        return this._maximumConnectedEvents;
    }

    public double getMetricSampleRate() {
        return this._metricSampleRate;
    }

    public Map<String, String> getMetricTags() {
        HashMap hashMap = new HashMap();
        Experiments experiments = this._experiments;
        if (experiments != null) {
            hashMap.putAll(experiments.getExperimentTags());
        }
        hashMap.put("src", getSrc());
        return hashMap;
    }

    public String getMetricsUrl() {
        return this._metricsUrl;
    }

    public IModuleConfiguration getModuleConfiguration(String str) {
        Map<String, IModuleConfiguration> map = this._moduleConfigurations;
        if (map != null && map.containsKey(str)) {
            return this._moduleConfigurations.get(str);
        }
        try {
            IModuleConfiguration iModuleConfiguration = (IModuleConfiguration) Class.forName(str).newInstance();
            if (iModuleConfiguration != null) {
                if (this._moduleConfigurations == null) {
                    HashMap hashMap = new HashMap();
                    this._moduleConfigurations = hashMap;
                    hashMap.put(str, iModuleConfiguration);
                }
                return iModuleConfiguration;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public String[] getModuleConfigurationList() {
        return this._moduleConfigurationList;
    }

    public long getNetworkErrorTimeout() {
        return this._networkErrorTimeout;
    }

    public int getResetWebappTimeout() {
        return this._resetWebAppTimeout;
    }

    public long getRetryDelay() {
        return this._retryDelay;
    }

    public double getRetryScalingFactor() {
        return this._retryScalingFactor;
    }

    public String getSdkVersion() {
        return this._sdkVersion;
    }

    public int getShowTimeout() {
        return this._showTimeout;
    }

    public String getSrc() {
        String str = this._src;
        return str != null ? str : "";
    }

    public String getStateId() {
        String str = this._stateId;
        return str != null ? str : "";
    }

    public int getTokenTimeout() {
        return this._tokenTimeout;
    }

    public String getUnifiedAuctionToken() {
        return this._unifiedAuctionToken;
    }

    public Class[] getWebAppApiClassList() {
        if (this._webAppApiClassList == null) {
            createWebAppApiClassList();
        }
        return this._webAppApiClassList;
    }

    public long getWebViewAppCreateTimeout() {
        return this._webViewAppCreateTimeout;
    }

    public int getWebViewBridgeTimeout() {
        return this._webViewBridgeTimeout;
    }

    public String getWebViewData() {
        return this._webViewData;
    }

    public String getWebViewHash() {
        return this._webViewHash;
    }

    public String getWebViewUrl() {
        return this._webViewUrl;
    }

    public String getWebViewVersion() {
        return this._webViewVersion;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleConfigurationData(org.json.JSONObject r5) throws java.net.MalformedURLException, org.json.JSONException {
        /*
            r4 = this;
            java.lang.String r0 = "hash"
            java.lang.String r1 = "url"
            r2 = 0
            boolean r3 = r5.isNull(r1)     // Catch: org.json.JSONException -> L11
            if (r3 != 0) goto L11
            java.lang.String r1 = r5.getString(r1)     // Catch: org.json.JSONException -> L11
            goto L12
        L11:
            r1 = r2
        L12:
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 != 0) goto L58
            r4._webViewUrl = r1
            boolean r1 = r5.isNull(r0)     // Catch: org.json.JSONException -> L29
            if (r1 != 0) goto L25
            java.lang.String r0 = r5.getString(r0)     // Catch: org.json.JSONException -> L29
            goto L26
        L25:
            r0 = r2
        L26:
            r4._webViewHash = r0     // Catch: org.json.JSONException -> L29
            goto L2b
        L29:
            r4._webViewHash = r2
        L2b:
            java.lang.String r0 = "tkn"
            boolean r1 = r5.isNull(r0)
            if (r1 != 0) goto L39
            java.lang.String r0 = r5.optString(r0)
            goto L3a
        L39:
            r0 = r2
        L3a:
            r4._unifiedAuctionToken = r0
            java.lang.String r0 = "sid"
            boolean r1 = r5.isNull(r0)
            if (r1 != 0) goto L48
            java.lang.String r2 = r5.optString(r0)
        L48:
            r4._stateId = r2
            r4.setOptionalFields(r5)
            org.json.JSONObject r5 = r4.getFilteredConfigJson(r5)
            java.lang.String r5 = r5.toString()
            r4._configJsonString = r5
            return
        L58:
            java.net.MalformedURLException r5 = new java.net.MalformedURLException
            java.lang.String r0 = "WebView URL is null or empty"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.configuration.Configuration.handleConfigurationData(org.json.JSONObject):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void makeRequest() throws Exception {
        if (this._configUrl != null) {
            WebRequest webRequest = this._configurationRequestFactory.getWebRequest();
            InitializeEventsMetricSender.getInstance().didConfigRequestStart();
            try {
                handleConfigurationData(new JSONObject(webRequest.makeRequest()));
                saveToDisk();
                return;
            } catch (Exception e10) {
                throw e10;
            }
        }
        throw new MalformedURLException("Base URL is null");
    }

    public void saveToDisk() {
        Utilities.writeFile(new File(SdkProperties.getLocalConfigurationFilepath()), getJSONString());
    }

    public void setWebViewData(String str) {
        this._webViewData = str;
    }

    public void setWebViewHash(String str) {
        this._webViewHash = str;
    }

    public void setWebViewUrl(String str) {
        this._webViewUrl = str;
    }

    public Configuration(String str) {
        this();
        this._configUrl = str;
    }

    public Configuration(JSONObject jSONObject) throws MalformedURLException, JSONException {
        this._moduleConfigurationList = new String[]{"com.unity3d.services.core.configuration.CoreModuleConfiguration", "com.unity3d.services.ads.configuration.AdsModuleConfiguration", "com.unity3d.services.analytics.core.configuration.AnalyticsModuleConfiguration", "com.unity3d.services.banners.configuration.BannersModuleConfiguration", "com.unity3d.services.store.core.configuration.StoreModuleConfiguration"};
        handleConfigurationData(jSONObject);
    }

    public Configuration(String str, Experiments experiments) {
        this(str);
        this._configurationRequestFactory = new ConfigurationRequestFactory(this, new DeviceInfoReaderBuilder(new ConfigurationReader()).build(), this._configUrl);
        this._experiments = experiments;
    }
}
