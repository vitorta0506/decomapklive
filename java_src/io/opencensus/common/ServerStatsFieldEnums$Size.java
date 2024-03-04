package io.opencensus.common;
/* loaded from: classes6.dex */
public enum ServerStatsFieldEnums$Size {
    SERVER_STATS_LB_LATENCY_SIZE(8),
    SERVER_STATS_SERVICE_LATENCY_SIZE(8),
    SERVER_STATS_TRACE_OPTION_SIZE(1);
    
    private final int value;

    ServerStatsFieldEnums$Size(int i9) {
        this.value = i9;
    }

    public int value() {
        return this.value;
    }
}
