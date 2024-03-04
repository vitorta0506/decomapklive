package com.gyailib.library;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
/* loaded from: classes4.dex */
public class GYDetectType {

    /* loaded from: classes4.dex */
    public enum GenderType {
        FEMALE("female"),
        MALE("male");
        
        private final String value;

        GenderType(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    /* loaded from: classes4.dex */
    public enum GestureType {
        HEART("HEART"),
        PAPER("PAPER"),
        SCISSOR("SCISSOR"),
        FIST("FIST"),
        ONE("ONE"),
        LOVE("LOVE"),
        LIKE("LIKE"),
        OK("OK"),
        ROCK("ROCK"),
        SIX("SIX"),
        EIGHT("EIGHT"),
        LIFT("LIFT"),
        OTHERS("OTHERS"),
        THREE("THREE"),
        FOUR("FOUR"),
        UNKNOWN(GrsBaseInfo.CountryCodeSource.UNKNOWN);
        
        private final String value;

        GestureType(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }
}
