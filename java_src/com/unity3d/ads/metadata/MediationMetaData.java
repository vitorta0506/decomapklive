package com.unity3d.ads.metadata;

import android.content.Context;
/* loaded from: classes4.dex */
public class MediationMetaData extends MetaData {
    public static final String KEY_MISSED_IMPRESSION_ORDINAL = "missedImpressionOrdinal";
    public static final String KEY_NAME = "name";
    public static final String KEY_ORDINAL = "ordinal";
    public static final String KEY_VERSION = "version";

    public MediationMetaData(Context context) {
        super(context);
        setCategory("mediation");
    }

    public void setMissedImpressionOrdinal(int i9) {
        set(KEY_MISSED_IMPRESSION_ORDINAL, Integer.valueOf(i9));
    }

    public void setName(String str) {
        set("name", str);
    }

    public void setOrdinal(int i9) {
        set(KEY_ORDINAL, Integer.valueOf(i9));
    }

    public void setVersion(String str) {
        set("version", str);
    }
}
