package com.xiaomi.push;

import java.io.InputStream;
import java.io.PrintStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes5.dex */
public final class h1 {

    /* renamed from: a  reason: collision with root package name */
    private static int f36890a = 5000;

    /* renamed from: b  reason: collision with root package name */
    private static int f36891b = 330000;

    /* renamed from: c  reason: collision with root package name */
    private static int f36892c = 600000;

    /* renamed from: d  reason: collision with root package name */
    private static Vector<String> f36893d = new Vector<>();

    static {
        try {
            for (ClassLoader classLoader : e()) {
                Enumeration<URL> resources = classLoader.getResources("META-INF/smack-config.xml");
                while (resources.hasMoreElements()) {
                    InputStream inputStream = null;
                    try {
                        inputStream = resources.nextElement().openStream();
                        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                        newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                        newPullParser.setInput(inputStream, "UTF-8");
                        int eventType = newPullParser.getEventType();
                        do {
                            if (eventType == 2) {
                                if (newPullParser.getName().equals("className")) {
                                    d(newPullParser);
                                } else if (newPullParser.getName().equals("packetReplyTimeout")) {
                                    f36890a = b(newPullParser, f36890a);
                                } else if (newPullParser.getName().equals("keepAliveInterval")) {
                                    f36891b = b(newPullParser, f36891b);
                                } else if (newPullParser.getName().equals("mechName")) {
                                    f36893d.add(newPullParser.nextText());
                                }
                            }
                            eventType = newPullParser.next();
                        } while (eventType != 1);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    try {
                        inputStream.close();
                    } catch (Exception unused) {
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private h1() {
    }

    public static int a() {
        return f36891b;
    }

    private static int b(XmlPullParser xmlPullParser, int i9) {
        try {
            return Integer.parseInt(xmlPullParser.nextText());
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
            return i9;
        }
    }

    public static String c() {
        return "3.1.0";
    }

    private static void d(XmlPullParser xmlPullParser) {
        String nextText = xmlPullParser.nextText();
        try {
            Class.forName(nextText);
        } catch (ClassNotFoundException unused) {
            PrintStream printStream = System.err;
            printStream.println("Error! A startup class specified in smack-config.xml could not be loaded: " + nextText);
        }
    }

    private static ClassLoader[] e() {
        ClassLoader[] classLoaderArr = {h1.class.getClassLoader(), Thread.currentThread().getContextClassLoader()};
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < 2; i9++) {
            ClassLoader classLoader = classLoaderArr[i9];
            if (classLoader != null) {
                arrayList.add(classLoader);
            }
        }
        return (ClassLoader[]) arrayList.toArray(new ClassLoader[arrayList.size()]);
    }

    public static int f() {
        return f36892c;
    }
}
