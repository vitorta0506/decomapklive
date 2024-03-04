package com.xiaomi.push;

import android.text.TextUtils;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.ServerProtocol;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.utils.PushUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.vk.api.sdk.exceptions.VKApiCodes;
import com.xiaomi.push.cl;
import com.xiaomi.push.p1;
import com.xiaomi.push.service.az;
import com.xiaomi.push.u1;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes5.dex */
public class y1 {

    /* renamed from: a  reason: collision with root package name */
    private static XmlPullParser f37568a;

    public static o1 a(String str, String str2, XmlPullParser xmlPullParser) {
        Object b10 = x1.a().b("all", "xm:chat");
        if (b10 == null || !(b10 instanceof com.xiaomi.push.service.t1)) {
            return null;
        }
        return ((com.xiaomi.push.service.t1) b10).c(xmlPullParser);
    }

    public static p1 b(XmlPullParser xmlPullParser, c1 c1Var) {
        String attributeValue = xmlPullParser.getAttributeValue("", "id");
        String attributeValue2 = xmlPullParser.getAttributeValue("", "to");
        String attributeValue3 = xmlPullParser.getAttributeValue("", "from");
        String attributeValue4 = xmlPullParser.getAttributeValue("", "chid");
        p1.a a10 = p1.a.a(xmlPullParser.getAttributeValue("", "type"));
        HashMap hashMap = new HashMap();
        boolean z10 = false;
        for (int i9 = 0; i9 < xmlPullParser.getAttributeCount(); i9++) {
            String attributeName = xmlPullParser.getAttributeName(i9);
            hashMap.put(attributeName, xmlPullParser.getAttributeValue("", attributeName));
        }
        p1 p1Var = null;
        u1 u1Var = null;
        while (!z10) {
            int next = xmlPullParser.next();
            if (next == 2) {
                String name = xmlPullParser.getName();
                String namespace = xmlPullParser.getNamespace();
                if (name.equals("error")) {
                    u1Var = f(xmlPullParser);
                } else {
                    p1Var = new p1();
                    p1Var.h(a(name, namespace, xmlPullParser));
                }
            } else if (next == 3 && xmlPullParser.getName().equals("iq")) {
                z10 = true;
            }
        }
        if (p1Var == null) {
            if (p1.a.f37024b == a10 || p1.a.f37025c == a10) {
                z1 z1Var = new z1();
                z1Var.n(attributeValue);
                z1Var.r(attributeValue3);
                z1Var.t(attributeValue2);
                z1Var.z(p1.a.f37027e);
                z1Var.p(attributeValue4);
                z1Var.i(new u1(u1.a.f37473f));
                c1Var.j(z1Var);
                tf.c.u("iq usage error. send packet in packet parser.");
                return null;
            }
            p1Var = new a2();
        }
        p1Var.n(attributeValue);
        p1Var.r(attributeValue2);
        p1Var.p(attributeValue4);
        p1Var.t(attributeValue3);
        p1Var.z(a10);
        p1Var.i(u1Var);
        p1Var.A(hashMap);
        return p1Var;
    }

    public static r1 c(XmlPullParser xmlPullParser) {
        String str;
        boolean z10 = false;
        String str2 = null;
        if ("1".equals(xmlPullParser.getAttributeValue("", NotifyType.SOUND))) {
            String attributeValue = xmlPullParser.getAttributeValue("", "chid");
            String attributeValue2 = xmlPullParser.getAttributeValue("", "id");
            String attributeValue3 = xmlPullParser.getAttributeValue("", "from");
            String attributeValue4 = xmlPullParser.getAttributeValue("", "to");
            String attributeValue5 = xmlPullParser.getAttributeValue("", "type");
            az.b b10 = az.c().b(attributeValue, attributeValue4);
            if (b10 == null) {
                b10 = az.c().b(attributeValue, attributeValue3);
            }
            if (b10 != null) {
                r1 r1Var = null;
                while (!z10) {
                    int next = xmlPullParser.next();
                    if (next == 2) {
                        if (!NotifyType.SOUND.equals(xmlPullParser.getName())) {
                            throw new cd("error while receiving a encrypted message with wrong format");
                        }
                        if (xmlPullParser.next() != 4) {
                            throw new cd("error while receiving a encrypted message with wrong format");
                        }
                        String text = xmlPullParser.getText();
                        if ("5".equals(attributeValue) || MVPActivity.FROM_BAG_BADGE.equals(attributeValue)) {
                            q1 q1Var = new q1();
                            q1Var.p(attributeValue);
                            q1Var.D(true);
                            q1Var.t(attributeValue3);
                            q1Var.r(attributeValue4);
                            q1Var.n(attributeValue2);
                            q1Var.L(attributeValue5);
                            o1 o1Var = new o1(NotifyType.SOUND, null, null, null);
                            o1Var.g(text);
                            q1Var.h(o1Var);
                            return q1Var;
                        }
                        h(com.xiaomi.push.service.i0.h(com.xiaomi.push.service.i0.g(b10.f37149i, attributeValue2), text));
                        f37568a.next();
                        r1Var = c(f37568a);
                    } else if (next == 3 && xmlPullParser.getName().equals("message")) {
                        z10 = true;
                    }
                }
                if (r1Var != null) {
                    return r1Var;
                }
                throw new cd("error while receiving a encrypted message with wrong format");
            }
            throw new cd("the channel id is wrong while receiving a encrypted message");
        }
        q1 q1Var2 = new q1();
        String attributeValue6 = xmlPullParser.getAttributeValue("", "id");
        if (attributeValue6 == null) {
            attributeValue6 = "ID_NOT_AVAILABLE";
        }
        q1Var2.n(attributeValue6);
        q1Var2.r(xmlPullParser.getAttributeValue("", "to"));
        q1Var2.t(xmlPullParser.getAttributeValue("", "from"));
        q1Var2.p(xmlPullParser.getAttributeValue("", "chid"));
        q1Var2.y(xmlPullParser.getAttributeValue("", "appid"));
        try {
            str = xmlPullParser.getAttributeValue("", FacebookRequestErrorClassification.KEY_TRANSIENT);
        } catch (Exception unused) {
            str = null;
        }
        try {
            String attributeValue7 = xmlPullParser.getAttributeValue("", "seq");
            if (!TextUtils.isEmpty(attributeValue7)) {
                q1Var2.C(attributeValue7);
            }
        } catch (Exception unused2) {
        }
        try {
            String attributeValue8 = xmlPullParser.getAttributeValue("", "mseq");
            if (!TextUtils.isEmpty(attributeValue8)) {
                q1Var2.F(attributeValue8);
            }
        } catch (Exception unused3) {
        }
        try {
            String attributeValue9 = xmlPullParser.getAttributeValue("", "fseq");
            if (!TextUtils.isEmpty(attributeValue9)) {
                q1Var2.H(attributeValue9);
            }
        } catch (Exception unused4) {
        }
        try {
            String attributeValue10 = xmlPullParser.getAttributeValue("", "status");
            if (!TextUtils.isEmpty(attributeValue10)) {
                q1Var2.J(attributeValue10);
            }
        } catch (Exception unused5) {
        }
        q1Var2.A(!TextUtils.isEmpty(str) && str.equalsIgnoreCase(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
        q1Var2.L(xmlPullParser.getAttributeValue("", "type"));
        String i9 = i(xmlPullParser);
        if (i9 == null || "".equals(i9.trim())) {
            r1.x();
        } else {
            q1Var2.R(i9);
        }
        while (!z10) {
            int next2 = xmlPullParser.next();
            if (next2 == 2) {
                String name = xmlPullParser.getName();
                String namespace = xmlPullParser.getNamespace();
                if (TextUtils.isEmpty(namespace)) {
                    namespace = "xm";
                }
                if (name.equals("subject")) {
                    i(xmlPullParser);
                    q1Var2.N(g(xmlPullParser));
                } else if (name.equals("body")) {
                    String attributeValue11 = xmlPullParser.getAttributeValue("", "encode");
                    String g10 = g(xmlPullParser);
                    if (TextUtils.isEmpty(attributeValue11)) {
                        q1Var2.P(g10);
                    } else {
                        q1Var2.z(g10, attributeValue11);
                    }
                } else if (name.equals("thread")) {
                    if (str2 == null) {
                        str2 = xmlPullParser.nextText();
                    }
                } else if (name.equals("error")) {
                    q1Var2.i(f(xmlPullParser));
                } else {
                    q1Var2.h(a(name, namespace, xmlPullParser));
                }
            } else if (next2 == 3 && xmlPullParser.getName().equals("message")) {
                z10 = true;
            }
        }
        q1Var2.Q(str2);
        return q1Var2;
    }

    public static cl d(XmlPullParser xmlPullParser) {
        cl.b bVar = cl.b.available;
        String attributeValue = xmlPullParser.getAttributeValue("", "type");
        if (attributeValue != null && !attributeValue.equals("")) {
            try {
                bVar = cl.b.valueOf(attributeValue);
            } catch (IllegalArgumentException unused) {
                PrintStream printStream = System.err;
                printStream.println("Found invalid presence type " + attributeValue);
            }
        }
        cl clVar = new cl(bVar);
        clVar.r(xmlPullParser.getAttributeValue("", "to"));
        clVar.t(xmlPullParser.getAttributeValue("", "from"));
        clVar.p(xmlPullParser.getAttributeValue("", "chid"));
        String attributeValue2 = xmlPullParser.getAttributeValue("", "id");
        if (attributeValue2 == null) {
            attributeValue2 = "ID_NOT_AVAILABLE";
        }
        clVar.n(attributeValue2);
        boolean z10 = false;
        while (!z10) {
            int next = xmlPullParser.next();
            if (next == 2) {
                String name = xmlPullParser.getName();
                String namespace = xmlPullParser.getNamespace();
                if (name.equals("status")) {
                    clVar.B(xmlPullParser.nextText());
                } else if (name.equals(RemoteMessageConst.Notification.PRIORITY)) {
                    try {
                        clVar.y(Integer.parseInt(xmlPullParser.nextText()));
                    } catch (NumberFormatException unused2) {
                    } catch (IllegalArgumentException unused3) {
                        clVar.y(0);
                    }
                } else if (name.equals("show")) {
                    String nextText = xmlPullParser.nextText();
                    try {
                        clVar.z(cl.a.valueOf(nextText));
                    } catch (IllegalArgumentException unused4) {
                        PrintStream printStream2 = System.err;
                        printStream2.println("Found invalid presence mode " + nextText);
                    }
                } else if (name.equals("error")) {
                    clVar.i(f(xmlPullParser));
                } else {
                    clVar.h(a(name, namespace, xmlPullParser));
                }
            } else if (next == 3 && xmlPullParser.getName().equals("presence")) {
                z10 = true;
            }
        }
        return clVar;
    }

    public static t1 e(XmlPullParser xmlPullParser) {
        t1 t1Var = null;
        boolean z10 = false;
        while (!z10) {
            int next = xmlPullParser.next();
            if (next == 2) {
                t1Var = new t1(xmlPullParser.getName());
            } else if (next == 3 && xmlPullParser.getName().equals("error")) {
                z10 = true;
            }
        }
        return t1Var;
    }

    public static u1 f(XmlPullParser xmlPullParser) {
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        String str = PushUtils.CHAT_PUSH_TYPE;
        String str2 = null;
        String str3 = null;
        for (int i9 = 0; i9 < xmlPullParser.getAttributeCount(); i9++) {
            if (xmlPullParser.getAttributeName(i9).equals("code")) {
                str = xmlPullParser.getAttributeValue("", "code");
            }
            if (xmlPullParser.getAttributeName(i9).equals("type")) {
                str3 = xmlPullParser.getAttributeValue("", "type");
            }
            if (xmlPullParser.getAttributeName(i9).equals("reason")) {
                str2 = xmlPullParser.getAttributeValue("", "reason");
            }
        }
        String str4 = null;
        String str5 = null;
        while (!z10) {
            int next = xmlPullParser.next();
            if (next == 2) {
                if (xmlPullParser.getName().equals(ViewHierarchyConstants.TEXT_KEY)) {
                    str5 = xmlPullParser.nextText();
                } else {
                    String name = xmlPullParser.getName();
                    String namespace = xmlPullParser.getNamespace();
                    if ("urn:ietf:params:xml:ns:xmpp-stanzas".equals(namespace)) {
                        str4 = name;
                    } else {
                        arrayList.add(a(name, namespace, xmlPullParser));
                    }
                }
            } else if (next == 3) {
                if (xmlPullParser.getName().equals("error")) {
                    z10 = true;
                }
            } else if (next == 4) {
                str5 = xmlPullParser.getText();
            }
        }
        return new u1(Integer.parseInt(str), str3 == null ? "cancel" : str3, str2, str4, str5, arrayList);
    }

    private static String g(XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        String str = "";
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getDepth() == depth) {
                return str;
            }
            str = str + xmlPullParser.getText();
        }
    }

    private static void h(byte[] bArr) {
        if (f37568a == null) {
            try {
                XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                f37568a = newPullParser;
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
            } catch (XmlPullParserException e10) {
                e10.printStackTrace();
            }
        }
        f37568a.setInput(new InputStreamReader(new ByteArrayInputStream(bArr)));
    }

    private static String i(XmlPullParser xmlPullParser) {
        for (int i9 = 0; i9 < xmlPullParser.getAttributeCount(); i9++) {
            String attributeName = xmlPullParser.getAttributeName(i9);
            if ("xml:lang".equals(attributeName) || (VKApiCodes.PARAM_LANG.equals(attributeName) && "xml".equals(xmlPullParser.getAttributePrefix(i9)))) {
                return xmlPullParser.getAttributeValue(i9);
            }
        }
        return null;
    }
}
