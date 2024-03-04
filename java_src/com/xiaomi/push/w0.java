package com.xiaomi.push;

import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes5.dex */
public class w0 {

    /* renamed from: a  reason: collision with root package name */
    private XmlPullParser f37537a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w0() {
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            this.f37537a = newPullParser;
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        } catch (XmlPullParserException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r1 a(byte[] bArr, c1 c1Var) {
        String name;
        String str;
        this.f37537a.setInput(new InputStreamReader(new ByteArrayInputStream(bArr)));
        this.f37537a.next();
        int eventType = this.f37537a.getEventType();
        String name2 = this.f37537a.getName();
        if (eventType == 2) {
            if (name2.equals("message")) {
                return y1.c(this.f37537a);
            }
            if (name2.equals("iq")) {
                return y1.b(this.f37537a, c1Var);
            }
            if (name2.equals("presence")) {
                return y1.d(this.f37537a);
            }
            if (this.f37537a.getName().equals("stream")) {
                return null;
            }
            if (this.f37537a.getName().equals("error")) {
                throw new cd(y1.e(this.f37537a));
            }
            if (this.f37537a.getName().equals("warning")) {
                this.f37537a.next();
                name = this.f37537a.getName();
                str = "multi-login";
            } else {
                name = this.f37537a.getName();
                str = "bind";
            }
            name.equals(str);
            return null;
        }
        return null;
    }
}
