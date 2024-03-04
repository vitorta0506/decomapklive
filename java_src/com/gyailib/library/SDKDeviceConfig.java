package com.gyailib.library;

import java.util.Map;
/* loaded from: classes4.dex */
public class SDKDeviceConfig {
    private int cpuLevel;
    private String device = "ARM";
    private Map<String, String> infos;
    private boolean smoothEnable;

    public String getDevice() {
        return this.device;
    }

    public String getInfos() {
        Map<String, String> map = this.infos;
        if (map == null || map.size() < 1) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : this.infos.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(" ");
            sb2.append(entry.getValue());
            sb2.append(" ");
        }
        return sb2.toString().trim();
    }

    public void setDevice(String str) {
        this.device = str;
    }

    public void setInfos(Map<String, String> map) {
        this.infos = map;
    }
}
