package com.unity3d.services.core.request;

import android.os.Bundle;
import com.unity3d.services.core.log.DeviceLog;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class WebRequestRunnable implements Runnable {
    private final String _body;
    private boolean _canceled = false;
    private final int _connectTimeout;
    private WebRequest _currentRequest;
    private final Map<String, List<String>> _headers;
    private final IWebRequestListener _listener;
    private final int _readTimeout;
    private final String _type;
    private final String _url;

    public WebRequestRunnable(String str, String str2, String str3, int i9, int i10, Map<String, List<String>> map, IWebRequestListener iWebRequestListener) {
        this._url = str;
        this._type = str2;
        this._body = str3;
        this._connectTimeout = i9;
        this._readTimeout = i10;
        this._headers = map;
        this._listener = iWebRequestListener;
    }

    private Map<String, List<String>> getResponseHeaders(Bundle bundle) {
        if (bundle.size() > 0) {
            HashMap hashMap = new HashMap();
            for (String str : bundle.keySet()) {
                String[] stringArray = bundle.getStringArray(str);
                if (stringArray != null) {
                    hashMap.put(str, new ArrayList(Arrays.asList(stringArray)));
                }
            }
            return hashMap;
        }
        return null;
    }

    private void makeRequest(String str, String str2, Map<String, List<String>> map, String str3, int i9, int i10) throws MalformedURLException {
        if (this._canceled) {
            return;
        }
        WebRequest webRequest = new WebRequest(str, str2, map, i9, i10);
        this._currentRequest = webRequest;
        if (str3 != null) {
            webRequest.setBody(str3);
        }
        try {
            String makeRequest = this._currentRequest.makeRequest();
            if (this._currentRequest.isCanceled()) {
                return;
            }
            Bundle bundle = new Bundle();
            for (String str4 : this._currentRequest.getResponseHeaders().keySet()) {
                if (str4 != null && !str4.contentEquals("null")) {
                    String[] strArr = new String[this._currentRequest.getResponseHeaders().get(str4).size()];
                    for (int i11 = 0; i11 < this._currentRequest.getResponseHeaders().get(str4).size(); i11++) {
                        strArr[i11] = this._currentRequest.getResponseHeaders().get(str4).get(i11);
                    }
                    bundle.putStringArray(str4, strArr);
                }
            }
            if (this._currentRequest.isCanceled()) {
                return;
            }
            onSucceed(makeRequest, this._currentRequest.getResponseCode(), getResponseHeaders(bundle));
        } catch (Exception e10) {
            DeviceLog.exception("Error completing request", e10);
            onFailed(e10.getClass().getName() + ": " + e10.getMessage());
        }
    }

    private void onFailed(String str) {
        this._listener.onFailed(this._url, str);
    }

    private void onSucceed(String str, int i9, Map<String, List<String>> map) {
        this._listener.onComplete(this._url, str, i9, map);
    }

    @Override // java.lang.Runnable
    public void run() {
        DeviceLog.debug("Handling request message: " + this._url + " type=" + this._type);
        try {
            makeRequest(this._url, this._type, this._headers, this._body, this._connectTimeout, this._readTimeout);
        } catch (MalformedURLException e10) {
            DeviceLog.exception("Malformed URL", e10);
            onFailed("Malformed URL");
        }
    }

    public void setCancelStatus(boolean z10) {
        WebRequest webRequest;
        this._canceled = z10;
        if (!z10 || (webRequest = this._currentRequest) == null) {
            return;
        }
        webRequest.cancel();
    }
}
