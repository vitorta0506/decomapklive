package com.twitter.sdk.android.core.identity;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
/* loaded from: classes4.dex */
class e extends WebChromeClient {
    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        return true;
    }
}
