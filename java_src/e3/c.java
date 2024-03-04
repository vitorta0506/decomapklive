package e3;

import android.text.Layout;
import androidx.annotation.Nullable;
import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.r;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.BrightRemindSetting;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes.dex */
public final class c extends x2.g {

    /* renamed from: p  reason: collision with root package name */
    private static final Pattern f38371p = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: q  reason: collision with root package name */
    private static final Pattern f38372q = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: r  reason: collision with root package name */
    private static final Pattern f38373r = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: s  reason: collision with root package name */
    static final Pattern f38374s = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: t  reason: collision with root package name */
    static final Pattern f38375t = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* renamed from: u  reason: collision with root package name */
    private static final Pattern f38376u = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* renamed from: v  reason: collision with root package name */
    private static final Pattern f38377v = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: w  reason: collision with root package name */
    private static final b f38378w = new b(30.0f, 1, 1);

    /* renamed from: x  reason: collision with root package name */
    private static final a f38379x = new a(32, 15);

    /* renamed from: o  reason: collision with root package name */
    private final XmlPullParserFactory f38380o;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f38381a;

        /* renamed from: b  reason: collision with root package name */
        final int f38382b;

        a(int i9, int i10) {
            this.f38381a = i9;
            this.f38382b = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final float f38383a;

        /* renamed from: b  reason: collision with root package name */
        final int f38384b;

        /* renamed from: c  reason: collision with root package name */
        final int f38385c;

        b(float f10, int i9, int i10) {
            this.f38383a = f10;
            this.f38384b = i9;
            this.f38385c = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e3.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0383c {

        /* renamed from: a  reason: collision with root package name */
        final int f38386a;

        /* renamed from: b  reason: collision with root package name */
        final int f38387b;

        C0383c(int i9, int i10) {
            this.f38386a = i9;
            this.f38387b = i10;
        }
    }

    public c() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f38380o = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    private static g A(@Nullable g gVar) {
        return gVar == null ? new g() : gVar;
    }

    private static boolean B(String str) {
        return str.equals(PushConstants.PUSH_NOTIFICATION_CREATE_TIMES_TAMP) || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals(BrightRemindSetting.BRIGHT_REMIND) || str.equals(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE) || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    @Nullable
    private static Layout.Alignment C(String str) {
        String f10 = com.google.common.base.c.f(str);
        f10.hashCode();
        char c10 = 65535;
        switch (f10.hashCode()) {
            case -1364013995:
                if (f10.equals("center")) {
                    c10 = 0;
                    break;
                }
                break;
            case 100571:
                if (f10.equals("end")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3317767:
                if (f10.equals(ViewHierarchyConstants.DIMENSION_LEFT_KEY)) {
                    c10 = 2;
                    break;
                }
                break;
            case 108511772:
                if (f10.equals("right")) {
                    c10 = 3;
                    break;
                }
                break;
            case 109757538:
                if (f10.equals("start")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return Layout.Alignment.ALIGN_CENTER;
            case 1:
            case 3:
                return Layout.Alignment.ALIGN_OPPOSITE;
            case 2:
            case 4:
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    private static a D(XmlPullParser xmlPullParser, a aVar) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = f38377v.matcher(attributeValue);
        if (!matcher.matches()) {
            r.i("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
        try {
            int parseInt = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            int parseInt2 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(2)));
            if (parseInt != 0 && parseInt2 != 0) {
                return new a(parseInt, parseInt2);
            }
            throw new SubtitleDecoderException("Invalid cell resolution " + parseInt + " " + parseInt2);
        } catch (NumberFormatException unused) {
            r.i("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
    }

    private static void E(String str, g gVar) throws SubtitleDecoderException {
        Matcher matcher;
        String[] G0 = l0.G0(str, "\\s+");
        if (G0.length == 1) {
            matcher = f38373r.matcher(str);
        } else if (G0.length == 2) {
            matcher = f38373r.matcher(G0[1]);
            r.i("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + G0.length + ".");
        }
        if (matcher.matches()) {
            String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(3));
            str2.hashCode();
            char c10 = 65535;
            switch (str2.hashCode()) {
                case 37:
                    if (str2.equals("%")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3240:
                    if (str2.equals(UserDataStore.EMAIL)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3592:
                    if (str2.equals("px")) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    gVar.z(3);
                    break;
                case 1:
                    gVar.z(2);
                    break;
                case 2:
                    gVar.z(1);
                    break;
                default:
                    throw new SubtitleDecoderException("Invalid unit for fontSize: '" + str2 + "'.");
            }
            gVar.y(Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))));
            return;
        }
        throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
    }

    private static b F(XmlPullParser xmlPullParser) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        float f10 = 1.0f;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] G0 = l0.G0(attributeValue2, " ");
            if (G0.length == 2) {
                f10 = Integer.parseInt(G0[0]) / Integer.parseInt(G0[1]);
            } else {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
        }
        b bVar = f38378w;
        int i9 = bVar.f38384b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i9 = Integer.parseInt(attributeValue3);
        }
        int i10 = bVar.f38385c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i10 = Integer.parseInt(attributeValue4);
        }
        return new b(parseInt * f10, i9, i10);
    }

    private static Map<String, g> G(XmlPullParser xmlPullParser, Map<String, g> map, a aVar, @Nullable C0383c c0383c, Map<String, e> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        do {
            xmlPullParser.next();
            if (m0.e(xmlPullParser, AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE)) {
                String a10 = m0.a(xmlPullParser, AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE);
                g L = L(xmlPullParser, new g());
                if (a10 != null) {
                    for (String str : M(a10)) {
                        L.a(map.get(str));
                    }
                }
                String g10 = L.g();
                if (g10 != null) {
                    map.put(g10, L);
                }
            } else if (m0.e(xmlPullParser, "region")) {
                e J = J(xmlPullParser, aVar, c0383c);
                if (J != null) {
                    map2.put(J.f38401a, J);
                }
            } else if (m0.e(xmlPullParser, "metadata")) {
                H(xmlPullParser, map3);
            }
        } while (!m0.c(xmlPullParser, "head"));
        return map;
    }

    private static void H(XmlPullParser xmlPullParser, Map<String, String> map) throws IOException, XmlPullParserException {
        String a10;
        do {
            xmlPullParser.next();
            if (m0.e(xmlPullParser, "image") && (a10 = m0.a(xmlPullParser, "id")) != null) {
                map.put(a10, xmlPullParser.nextText());
            }
        } while (!m0.c(xmlPullParser, "metadata"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static d I(XmlPullParser xmlPullParser, @Nullable d dVar, Map<String, e> map, b bVar) throws SubtitleDecoderException {
        long j10;
        long j11;
        char c10;
        int attributeCount = xmlPullParser.getAttributeCount();
        g L = L(xmlPullParser, null);
        String str = null;
        String str2 = "";
        long j12 = -9223372036854775807L;
        long j13 = -9223372036854775807L;
        long j14 = -9223372036854775807L;
        String[] strArr = null;
        for (int i9 = 0; i9 < attributeCount; i9++) {
            String attributeName = xmlPullParser.getAttributeName(i9);
            String attributeValue = xmlPullParser.getAttributeValue(i9);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 99841:
                    if (attributeName.equals("dur")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 100571:
                    if (attributeName.equals("end")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 93616297:
                    if (attributeName.equals("begin")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109780401:
                    if (attributeName.equals(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE)) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1292595405:
                    if (attributeName.equals("backgroundImage")) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    if (map.containsKey(attributeValue)) {
                        str2 = attributeValue;
                        continue;
                    }
                case 1:
                    j14 = N(attributeValue, bVar);
                    break;
                case 2:
                    j13 = N(attributeValue, bVar);
                    break;
                case 3:
                    j12 = N(attributeValue, bVar);
                    break;
                case 4:
                    String[] M = M(attributeValue);
                    if (M.length > 0) {
                        strArr = M;
                        break;
                    }
                    break;
                case 5:
                    if (attributeValue.startsWith("#")) {
                        str = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (dVar != null) {
            long j15 = dVar.f38391d;
            j10 = -9223372036854775807L;
            if (j15 != -9223372036854775807L) {
                if (j12 != -9223372036854775807L) {
                    j12 += j15;
                }
                if (j13 != -9223372036854775807L) {
                    j13 += j15;
                }
            }
        } else {
            j10 = -9223372036854775807L;
        }
        long j16 = j12;
        if (j13 == j10) {
            if (j14 != j10) {
                j11 = j16 + j14;
            } else if (dVar != null) {
                long j17 = dVar.f38392e;
                if (j17 != j10) {
                    j11 = j17;
                }
            }
            return d.c(xmlPullParser.getName(), j16, j11, L, strArr, str2, str, dVar);
        }
        j11 = j13;
        return d.c(xmlPullParser.getName(), j16, j11, L, strArr, str2, str, dVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01a8, code lost:
        if (r0.equals("tb") == false) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x017b  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static e3.e J(org.xmlpull.v1.XmlPullParser r17, e3.c.a r18, @androidx.annotation.Nullable e3.c.C0383c r19) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e3.c.J(org.xmlpull.v1.XmlPullParser, e3.c$a, e3.c$c):e3.e");
    }

    private static float K(String str) {
        Matcher matcher = f38374s.matcher(str);
        if (!matcher.matches()) {
            r.i("TtmlDecoder", "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)))));
        } catch (NumberFormatException e10) {
            r.j("TtmlDecoder", "Failed to parse shear: " + str, e10);
            return Float.MAX_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01e0, code lost:
        if (r3.equals(com.facebook.appevents.internal.ViewHierarchyConstants.TEXT_KEY) == false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static e3.g L(org.xmlpull.v1.XmlPullParser r12, e3.g r13) {
        /*
            Method dump skipped, instructions count: 928
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e3.c.L(org.xmlpull.v1.XmlPullParser, e3.g):e3.g");
    }

    private static String[] M(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : l0.G0(trim, "\\s+");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00bf, code lost:
        if (r13.equals("ms") == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long N(java.lang.String r13, e3.c.b r14) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e3.c.N(java.lang.String, e3.c$b):long");
    }

    @Nullable
    private static C0383c O(XmlPullParser xmlPullParser) {
        String a10 = m0.a(xmlPullParser, "extent");
        if (a10 == null) {
            return null;
        }
        Matcher matcher = f38376u.matcher(a10);
        if (!matcher.matches()) {
            r.i("TtmlDecoder", "Ignoring non-pixel tts extent: " + a10);
            return null;
        }
        try {
            return new C0383c(Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))), Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))));
        } catch (NumberFormatException unused) {
            r.i("TtmlDecoder", "Ignoring malformed tts extent: " + a10);
            return null;
        }
    }

    @Override // x2.g
    protected x2.h z(byte[] bArr, int i9, boolean z10) throws SubtitleDecoderException {
        b bVar;
        try {
            XmlPullParser newPullParser = this.f38380o.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new e(""));
            C0383c c0383c = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i9), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVar2 = f38378w;
            a aVar = f38379x;
            h hVar = null;
            int i10 = 0;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                d dVar = (d) arrayDeque.peek();
                if (i10 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if (PushConstants.PUSH_NOTIFICATION_CREATE_TIMES_TAMP.equals(name)) {
                            bVar2 = F(newPullParser);
                            aVar = D(newPullParser, f38379x);
                            c0383c = O(newPullParser);
                        }
                        C0383c c0383c2 = c0383c;
                        b bVar3 = bVar2;
                        a aVar2 = aVar;
                        if (B(name)) {
                            if ("head".equals(name)) {
                                bVar = bVar3;
                                G(newPullParser, hashMap, aVar2, c0383c2, hashMap2, hashMap3);
                            } else {
                                bVar = bVar3;
                                try {
                                    d I = I(newPullParser, dVar, hashMap2, bVar);
                                    arrayDeque.push(I);
                                    if (dVar != null) {
                                        dVar.a(I);
                                    }
                                } catch (SubtitleDecoderException e10) {
                                    r.j("TtmlDecoder", "Suppressing parser error", e10);
                                    i10++;
                                }
                            }
                            bVar2 = bVar;
                        } else {
                            r.f("TtmlDecoder", "Ignoring unsupported tag: " + newPullParser.getName());
                            i10++;
                            bVar2 = bVar3;
                        }
                        c0383c = c0383c2;
                        aVar = aVar2;
                    } else if (eventType == 4) {
                        ((d) com.google.android.exoplayer2.util.a.e(dVar)).a(d.d(newPullParser.getText()));
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals(PushConstants.PUSH_NOTIFICATION_CREATE_TIMES_TAMP)) {
                            hVar = new h((d) com.google.android.exoplayer2.util.a.e((d) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i10++;
                } else if (eventType == 3) {
                    i10--;
                }
                newPullParser.next();
            }
            if (hVar != null) {
                return hVar;
            }
            throw new SubtitleDecoderException("No TTML subtitles found");
        } catch (IOException e11) {
            throw new IllegalStateException("Unexpected error when reading input.", e11);
        } catch (XmlPullParserException e12) {
            throw new SubtitleDecoderException("Unable to decode source", e12);
        }
    }
}
