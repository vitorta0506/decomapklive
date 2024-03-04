package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes2.dex */
public final class m0 {
    @Nullable
    public static String a(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i9 = 0; i9 < attributeCount; i9++) {
            if (xmlPullParser.getAttributeName(i9).equals(str)) {
                return xmlPullParser.getAttributeValue(i9);
            }
        }
        return null;
    }

    public static boolean b(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 3;
    }

    public static boolean c(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return b(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    public static boolean d(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 2;
    }

    public static boolean e(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return d(xmlPullParser) && xmlPullParser.getName().equals(str);
    }
}
