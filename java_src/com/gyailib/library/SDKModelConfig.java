package com.gyailib.library;

import java.util.Map;
/* loaded from: classes4.dex */
public class SDKModelConfig {
    public Map<String, String> modelPaths;
    public int modelType;
    public int preferPoints;

    public String getModelPaths() {
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : this.modelPaths.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(" ");
            sb2.append(entry.getValue());
            sb2.append(" ");
        }
        return sb2.toString().trim();
    }

    public int getModel_type() {
        return this.modelType;
    }

    public int getPrefer_points() {
        return this.preferPoints;
    }
}
