package com.google.zxing.client.result;
/* loaded from: classes3.dex */
public final class GeoParsedResult extends ParsedResult {
    private final double altitude;
    private final double latitude;
    private final double longitude;
    private final String query;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GeoParsedResult(double d10, double d11, double d12, String str) {
        super(ParsedResultType.GEO);
        this.latitude = d10;
        this.longitude = d11;
        this.altitude = d12;
        this.query = str;
    }

    public double getAltitude() {
        return this.altitude;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append(this.latitude);
        sb2.append(", ");
        sb2.append(this.longitude);
        if (this.altitude > 0.0d) {
            sb2.append(", ");
            sb2.append(this.altitude);
            sb2.append('m');
        }
        if (this.query != null) {
            sb2.append(" (");
            sb2.append(this.query);
            sb2.append(')');
        }
        return sb2.toString();
    }

    public String getGeoURI() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("geo:");
        sb2.append(this.latitude);
        sb2.append(',');
        sb2.append(this.longitude);
        if (this.altitude > 0.0d) {
            sb2.append(',');
            sb2.append(this.altitude);
        }
        if (this.query != null) {
            sb2.append('?');
            sb2.append(this.query);
        }
        return sb2.toString();
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getQuery() {
        return this.query;
    }
}
