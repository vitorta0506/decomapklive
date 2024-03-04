package com.unity3d.services.core.request.metrics;

import android.text.TextUtils;
import com.unity3d.services.core.log.DeviceLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes4.dex */
public class MetricSenderWithBatch implements IMetricSenderWithBatch {
    private ISDKMetrics _original;
    private final LinkedBlockingQueue<Metric> _queue = new LinkedBlockingQueue<>();

    public MetricSenderWithBatch(ISDKMetrics iSDKMetrics) {
        this._original = iSDKMetrics;
    }

    @Override // com.unity3d.services.core.request.metrics.ISDKMetrics
    public String getMetricEndPoint() {
        ISDKMetrics iSDKMetrics = this._original;
        if (iSDKMetrics == null) {
            return null;
        }
        return iSDKMetrics.getMetricEndPoint();
    }

    @Override // com.unity3d.services.core.request.metrics.ISDKMetrics
    public void sendEvent(String str) {
        sendEvent(str, null);
    }

    @Override // com.unity3d.services.core.request.metrics.ISDKMetrics
    public void sendMetric(Metric metric) {
        sendMetrics(new ArrayList(Collections.singletonList(metric)));
    }

    @Override // com.unity3d.services.core.request.metrics.ISDKMetrics
    public synchronized void sendMetrics(List<Metric> list) {
        this._queue.addAll(list);
        if (!TextUtils.isEmpty(this._original.getMetricEndPoint()) && this._queue.size() > 0) {
            ArrayList arrayList = new ArrayList();
            this._queue.drainTo(arrayList);
            this._original.sendMetrics(arrayList);
        }
    }

    @Override // com.unity3d.services.core.request.metrics.IMetricSenderWithBatch
    public void sendQueueIfNeeded() {
        sendMetrics(new ArrayList());
    }

    @Override // com.unity3d.services.core.request.metrics.IMetricSenderWithBatch
    public void updateOriginal(ISDKMetrics iSDKMetrics) {
        this._original = iSDKMetrics;
    }

    @Override // com.unity3d.services.core.request.metrics.ISDKMetrics
    public void sendEvent(String str, String str2, Map<String, String> map) {
        if (str != null && !str.isEmpty()) {
            sendMetrics(new ArrayList(Collections.singletonList(new Metric(str, str2, map))));
            return;
        }
        DeviceLog.debug("Metric event not sent due to being null or empty: " + str);
    }

    @Override // com.unity3d.services.core.request.metrics.ISDKMetrics
    public void sendEvent(String str, Map<String, String> map) {
        sendEvent(str, null, map);
    }
}
