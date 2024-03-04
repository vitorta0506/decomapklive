package com.google.zxing.client.result;
/* loaded from: classes3.dex */
public final class WifiParsedResult extends ParsedResult {
    private final String anonymousIdentity;
    private final String eapMethod;
    private final boolean hidden;
    private final String identity;
    private final String networkEncryption;
    private final String password;
    private final String phase2Method;
    private final String ssid;

    public WifiParsedResult(String str, String str2, String str3) {
        this(str, str2, str3, false);
    }

    public String getAnonymousIdentity() {
        return this.anonymousIdentity;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb2 = new StringBuilder(80);
        ParsedResult.maybeAppend(this.ssid, sb2);
        ParsedResult.maybeAppend(this.networkEncryption, sb2);
        ParsedResult.maybeAppend(this.password, sb2);
        ParsedResult.maybeAppend(Boolean.toString(this.hidden), sb2);
        return sb2.toString();
    }

    public String getEapMethod() {
        return this.eapMethod;
    }

    public String getIdentity() {
        return this.identity;
    }

    public String getNetworkEncryption() {
        return this.networkEncryption;
    }

    public String getPassword() {
        return this.password;
    }

    public String getPhase2Method() {
        return this.phase2Method;
    }

    public String getSsid() {
        return this.ssid;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public WifiParsedResult(String str, String str2, String str3, boolean z10) {
        this(str, str2, str3, z10, null, null, null, null);
    }

    public WifiParsedResult(String str, String str2, String str3, boolean z10, String str4, String str5, String str6, String str7) {
        super(ParsedResultType.WIFI);
        this.ssid = str2;
        this.networkEncryption = str;
        this.password = str3;
        this.hidden = z10;
        this.identity = str4;
        this.anonymousIdentity = str5;
        this.eapMethod = str6;
        this.phase2Method = str7;
    }
}
