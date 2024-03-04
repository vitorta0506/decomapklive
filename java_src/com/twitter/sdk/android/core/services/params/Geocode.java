package com.twitter.sdk.android.core.services.params;
/* loaded from: classes4.dex */
public class Geocode {

    /* loaded from: classes4.dex */
    public enum Distance {
        MILES("mi"),
        KILOMETERS("km");
        
        public final String identifier;

        Distance(String str) {
            this.identifier = str;
        }
    }
}
