package com.twitter.sdk.android.core;

import okhttp3.Headers;
/* loaded from: classes4.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private int f35339a;

    /* renamed from: b  reason: collision with root package name */
    private int f35340b;

    /* renamed from: c  reason: collision with root package name */
    private long f35341c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(Headers headers) {
        if (headers != null) {
            for (int i9 = 0; i9 < headers.size(); i9++) {
                if ("x-rate-limit-limit".equals(headers.name(i9))) {
                    this.f35339a = Integer.valueOf(headers.value(i9)).intValue();
                } else if ("x-rate-limit-remaining".equals(headers.name(i9))) {
                    this.f35340b = Integer.valueOf(headers.value(i9)).intValue();
                } else if ("x-rate-limit-reset".equals(headers.name(i9))) {
                    this.f35341c = Long.valueOf(headers.value(i9)).longValue();
                }
            }
            return;
        }
        throw new IllegalArgumentException("headers must not be null");
    }
}
