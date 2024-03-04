package com.linecorp.linesdk.api;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.linecorp.linesdk.ManifestParser;
import rc.a;
import sc.d;
import vc.c;
import wc.e;
import wc.i;
/* loaded from: classes4.dex */
public class LineApiClientBuilder {
    @NonNull
    private Uri apiBaseUri;
    @NonNull
    private final String channelId;
    @NonNull
    private final Context context;
    private boolean isEncryptorPreparationDisabled;
    private boolean isTokenAutoRefreshDisabled;
    @NonNull
    private Uri openidDiscoveryDocumentUrl;

    public LineApiClientBuilder(@NonNull Context context, @NonNull String str) {
        if (!TextUtils.isEmpty(str)) {
            this.context = context.getApplicationContext();
            this.channelId = str;
            LineEnvConfig parse = new ManifestParser().parse(context);
            parse = parse == null ? new LineDefaultEnvConfig() : parse;
            this.openidDiscoveryDocumentUrl = Uri.parse(parse.getOpenIdDiscoveryDocumentUrl());
            this.apiBaseUri = Uri.parse(parse.getApiServerBaseUri());
            return;
        }
        throw new IllegalArgumentException("channel id is empty");
    }

    @NonNull
    @Deprecated
    public LineApiClientBuilder apiBaseUri(@Nullable Uri uri) {
        if (uri != null) {
            this.apiBaseUri = uri;
        }
        return this;
    }

    @NonNull
    public a build() {
        if (!this.isEncryptorPreparationDisabled) {
            c.c(this.context);
        }
        d dVar = new d(this.channelId, new e(this.context, this.openidDiscoveryDocumentUrl, this.apiBaseUri), new i(this.context, this.apiBaseUri), new vc.a(this.context, this.channelId));
        return this.isTokenAutoRefreshDisabled ? dVar : sc.a.a(dVar);
    }

    @NonNull
    public LineApiClientBuilder disableEncryptorPreparation() {
        this.isEncryptorPreparationDisabled = true;
        return this;
    }

    @NonNull
    public LineApiClientBuilder disableTokenAutoRefresh() {
        this.isTokenAutoRefreshDisabled = true;
        return this;
    }

    @NonNull
    @Deprecated
    public LineApiClientBuilder openidDiscoveryDocumentUrl(@Nullable Uri uri) {
        if (uri != null) {
            this.openidDiscoveryDocumentUrl = uri;
        }
        return this;
    }
}
