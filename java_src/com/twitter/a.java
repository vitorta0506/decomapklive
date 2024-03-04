package com.twitter;

import com.twitter.Extractor;
import java.text.Normalizer;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected int f35101a = 23;

    /* renamed from: b  reason: collision with root package name */
    protected int f35102b = 23;

    /* renamed from: c  reason: collision with root package name */
    private Extractor f35103c = new Extractor();

    public int a(String str) {
        String normalize = Normalizer.normalize(str, Normalizer.Form.NFC);
        int codePointCount = normalize.codePointCount(0, normalize.length());
        for (Extractor.Entity entity : this.f35103c.a(normalize)) {
            codePointCount = codePointCount + (entity.f35094a - entity.f35095b) + (entity.f35096c.toLowerCase().startsWith("https://") ? this.f35102b : this.f35101a);
        }
        return codePointCount;
    }
}
