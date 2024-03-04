package com.unity3d.services.core.configuration;

import com.unity3d.services.core.device.reader.DeviceInfoReaderBuilder;
import com.unity3d.services.core.request.WebRequest;
import com.unity3d.services.core.request.metrics.SDKMetrics;
import com.unity3d.services.core.request.metrics.TSIMetric;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class ConfigurationLoader {
    private final ConfigurationRequestFactory _configurationRequestFactory;
    private final Configuration _localConfiguration;

    public ConfigurationLoader(Configuration configuration) {
        this._localConfiguration = configuration;
        this._configurationRequestFactory = new ConfigurationRequestFactory(configuration, new DeviceInfoReaderBuilder(new ConfigurationReader()).build(), configuration.getConfigUrl());
    }

    private void sendConfigMetrics(String str, String str2) {
        Map<String, String> metricTags = this._localConfiguration.getMetricTags();
        if (this._localConfiguration.getExperiments() == null || !this._localConfiguration.getExperiments().isTwoStageInitializationEnabled()) {
            return;
        }
        if (str == null || str.isEmpty()) {
            SDKMetrics.getInstance().sendMetric(TSIMetric.newMissingToken(metricTags));
        }
        if (str2 == null || str2.isEmpty()) {
            SDKMetrics.getInstance().sendMetric(TSIMetric.newMissingStateId(metricTags));
        }
    }

    public void loadConfiguration(IConfigurationLoaderListener iConfigurationLoaderListener) throws Exception {
        if (this._localConfiguration.getConfigUrl() == null) {
            iConfigurationLoaderListener.onError("Base URL is null");
            return;
        }
        try {
            WebRequest webRequest = this._configurationRequestFactory.getWebRequest();
            InitializeEventsMetricSender.getInstance().didConfigRequestStart();
            String makeRequest = webRequest.makeRequest();
            if (!(webRequest.getResponseCode() / 100 == 2)) {
                iConfigurationLoaderListener.onError("Non 2xx HTTP status received from ads configuration request.");
                return;
            }
            try {
                this._localConfiguration.handleConfigurationData(new JSONObject(makeRequest));
                sendConfigMetrics(this._localConfiguration.getUnifiedAuctionToken(), this._localConfiguration.getStateId());
                iConfigurationLoaderListener.onSuccess(this._localConfiguration);
            } catch (Exception unused) {
                iConfigurationLoaderListener.onError("Could not create web request");
            }
        } catch (Exception unused2) {
            iConfigurationLoaderListener.onError("Could not create web request");
        }
    }
}
