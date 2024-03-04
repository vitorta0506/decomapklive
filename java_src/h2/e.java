package h2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.r;
import com.google.common.collect.ImmutableList;
import h2.b;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f40346a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f40347b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f40348c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    @Nullable
    public static b a(String str) throws IOException {
        try {
            return b(str);
        } catch (ParserException | NumberFormatException | XmlPullParserException unused) {
            r.i("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    @Nullable
    private static b b(String str) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setInput(new StringReader(str));
        newPullParser.next();
        if (m0.e(newPullParser, "x:xmpmeta")) {
            long j10 = -9223372036854775807L;
            ImmutableList<b.a> of2 = ImmutableList.of();
            do {
                newPullParser.next();
                if (m0.e(newPullParser, "rdf:Description")) {
                    if (!d(newPullParser)) {
                        return null;
                    }
                    j10 = e(newPullParser);
                    of2 = c(newPullParser);
                } else if (m0.e(newPullParser, "Container:Directory")) {
                    of2 = f(newPullParser, "Container", "Item");
                } else if (m0.e(newPullParser, "GContainer:Directory")) {
                    of2 = f(newPullParser, "GContainer", "GContainerItem");
                }
            } while (!m0.c(newPullParser, "x:xmpmeta"));
            if (of2.isEmpty()) {
                return null;
            }
            return new b(j10, of2);
        }
        throw ParserException.createForMalformedContainer("Couldn't find xmp metadata", null);
    }

    private static ImmutableList<b.a> c(XmlPullParser xmlPullParser) {
        for (String str : f40348c) {
            String a10 = m0.a(xmlPullParser, str);
            if (a10 != null) {
                return ImmutableList.of(new b.a("image/jpeg", "Primary", 0L, 0L), new b.a("video/mp4", "MotionPhoto", Long.parseLong(a10), 0L));
            }
        }
        return ImmutableList.of();
    }

    private static boolean d(XmlPullParser xmlPullParser) {
        for (String str : f40346a) {
            String a10 = m0.a(xmlPullParser, str);
            if (a10 != null) {
                return Integer.parseInt(a10) == 1;
            }
        }
        return false;
    }

    private static long e(XmlPullParser xmlPullParser) {
        for (String str : f40347b) {
            String a10 = m0.a(xmlPullParser, str);
            if (a10 != null) {
                long parseLong = Long.parseLong(a10);
                if (parseLong == -1) {
                    return -9223372036854775807L;
                }
                return parseLong;
            }
        }
        return -9223372036854775807L;
    }

    private static ImmutableList<b.a> f(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        ImmutableList.b builder = ImmutableList.builder();
        String str3 = str + ":Item";
        String str4 = str + ":Directory";
        do {
            xmlPullParser.next();
            if (m0.e(xmlPullParser, str3)) {
                String a10 = m0.a(xmlPullParser, str2 + ":Mime");
                String a11 = m0.a(xmlPullParser, str2 + ":Semantic");
                String a12 = m0.a(xmlPullParser, str2 + ":Length");
                String a13 = m0.a(xmlPullParser, str2 + ":Padding");
                if (a10 != null && a11 != null) {
                    builder.a(new b.a(a10, a11, a12 != null ? Long.parseLong(a12) : 0L, a13 != null ? Long.parseLong(a13) : 0L));
                } else {
                    return ImmutableList.of();
                }
            }
        } while (!m0.c(xmlPullParser, str4));
        return builder.j();
    }
}
