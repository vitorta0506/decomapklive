package io.opencensus.common;

import java.util.TreeMap;
/* loaded from: classes6.dex */
public enum ServerStatsFieldEnums$Id {
    SERVER_STATS_LB_LATENCY_ID(0),
    SERVER_STATS_SERVICE_LATENCY_ID(1),
    SERVER_STATS_TRACE_OPTION_ID(2);
    
    private static final TreeMap<Integer, ServerStatsFieldEnums$Id> map = new TreeMap<>();
    private final int value;

    static {
        ServerStatsFieldEnums$Id[] values;
        for (ServerStatsFieldEnums$Id serverStatsFieldEnums$Id : values()) {
            map.put(Integer.valueOf(serverStatsFieldEnums$Id.value), serverStatsFieldEnums$Id);
        }
    }

    ServerStatsFieldEnums$Id(int i9) {
        this.value = i9;
    }

    public int value() {
        return this.value;
    }

    public static ServerStatsFieldEnums$Id valueOf(int i9) {
        return map.get(Integer.valueOf(i9));
    }
}
