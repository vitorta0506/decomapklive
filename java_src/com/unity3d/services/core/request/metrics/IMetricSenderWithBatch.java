package com.unity3d.services.core.request.metrics;
/* loaded from: classes4.dex */
public interface IMetricSenderWithBatch extends ISDKMetrics {
    void sendQueueIfNeeded();

    void updateOriginal(ISDKMetrics iSDKMetrics);
}
