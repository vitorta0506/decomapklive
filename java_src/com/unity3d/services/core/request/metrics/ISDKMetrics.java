package com.unity3d.services.core.request.metrics;

import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public interface ISDKMetrics {
    String getMetricEndPoint();

    void sendEvent(String str);

    void sendEvent(String str, String str2, Map<String, String> map);

    void sendEvent(String str, Map<String, String> map);

    void sendMetric(Metric metric);

    void sendMetrics(List<Metric> list);
}
