package com.google.api.client.http;

import java.io.IOException;
import java.util.Arrays;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public abstract class s {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f11065a = Logger.getLogger(s.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f11066b;

    static {
        String[] strArr = {"DELETE", "GET", "POST", "PUT"};
        f11066b = strArr;
        Arrays.sort(strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m a() {
        return new m(this, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract u b(String str, String str2) throws IOException;

    public final n c() {
        return d(null);
    }

    public final n d(o oVar) {
        return new n(this, oVar);
    }
}
