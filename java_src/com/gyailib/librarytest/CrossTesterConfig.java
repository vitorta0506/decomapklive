package com.gyailib.librarytest;

import java.util.Map;
/* loaded from: classes4.dex */
public class CrossTesterConfig {
    public Map<String, String> configMap;

    public String getConfig() {
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : this.configMap.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(" ");
            sb2.append(entry.getValue());
            sb2.append(" ");
        }
        return sb2.toString().trim();
    }
}
