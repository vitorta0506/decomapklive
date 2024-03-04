package com.unity3d.services.core.request;

import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public interface IWebRequestProgressListener {
    void onRequestProgress(String str, long j10, long j11);

    void onRequestStart(String str, long j10, int i9, Map<String, List<String>> map);
}
