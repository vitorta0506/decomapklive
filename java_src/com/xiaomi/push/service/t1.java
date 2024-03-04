package com.xiaomi.push.service;

import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes5.dex */
public class t1 implements com.xiaomi.push.w1 {
    public static com.xiaomi.push.o1 a(XmlPullParser xmlPullParser) {
        String[] strArr;
        String[] strArr2;
        String str;
        ArrayList arrayList;
        if (xmlPullParser.getEventType() != 2) {
            return null;
        }
        String name = xmlPullParser.getName();
        String namespace = xmlPullParser.getNamespace();
        if (xmlPullParser.getAttributeCount() > 0) {
            String[] strArr3 = new String[xmlPullParser.getAttributeCount()];
            String[] strArr4 = new String[xmlPullParser.getAttributeCount()];
            for (int i9 = 0; i9 < xmlPullParser.getAttributeCount(); i9++) {
                strArr3[i9] = xmlPullParser.getAttributeName(i9);
                strArr4[i9] = com.xiaomi.push.b2.e(xmlPullParser.getAttributeValue(i9));
            }
            strArr = strArr3;
            str = null;
            arrayList = null;
            strArr2 = strArr4;
        } else {
            strArr = null;
            strArr2 = null;
            str = null;
            arrayList = null;
        }
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3) {
                return new com.xiaomi.push.o1(name, namespace, strArr, strArr2, str, arrayList);
            }
            if (next == 4) {
                str = xmlPullParser.getText().trim();
            } else if (next == 2) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                com.xiaomi.push.o1 a10 = a(xmlPullParser);
                if (a10 != null) {
                    arrayList.add(a10);
                }
            }
        }
    }

    public void b() {
        com.xiaomi.push.x1.a().e("all", "xm:chat", this);
    }

    public com.xiaomi.push.o1 c(XmlPullParser xmlPullParser) {
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1 && eventType != 2) {
            eventType = xmlPullParser.next();
        }
        if (eventType == 2) {
            return a(xmlPullParser);
        }
        return null;
    }
}
