package org.libpag;

import android.content.res.AssetManager;
import android.util.Xml;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.utils.Contants;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.extra.tools.LibraryLoadUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes7.dex */
public class PAGFont {
    private static final String DefaultLanguage = "zh-Hans";
    private static final String SystemFontConfigPath_JellyBean = "/system/etc/fallback_fonts.xml";
    private static final String SystemFontConfigPath_Lollipop = "/system/etc/fonts.xml";
    private static final String SystemFontPath = "/system/fonts/";
    public String fontFamily;
    public String fontStyle;
    private static final String[] FallbackFontFileNames = {"/system/fonts/NotoSansCJK-Regular.ttc", "/system/fonts/NotoSansSC-Regular.otf", "/system/fonts/DroidSansFallback.ttf"};
    private static final Pattern FILENAME_WHITESPACE_PATTERN = Pattern.compile("^[ \\n\\r\\t]+|[ \\n\\r\\t]+$");
    private static boolean systemFontLoaded = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class FontConfig {
        String fileName;
        String language;
        int ttcIndex;
        int weight;

        private FontConfig() {
            this.language = "";
            this.fileName = "";
            this.ttcIndex = 0;
            this.weight = 400;
        }
    }

    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    public PAGFont() {
        this.fontFamily = "";
        this.fontStyle = "";
    }

    private static void RegisterFallbackFonts() {
        String[] strArr;
        if (systemFontLoaded) {
            return;
        }
        systemFontLoaded = true;
        int i9 = 0;
        FontConfig[] fontConfigArr = new FontConfig[0];
        if (new File(SystemFontConfigPath_Lollipop).exists()) {
            try {
                fontConfigArr = parseLollipop();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            try {
                fontConfigArr = parseJellyBean();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        FontConfig fontByLanguage = getFontByLanguage(fontConfigArr, DefaultLanguage);
        if (fontByLanguage != null) {
            addFont(fontByLanguage, arrayList, arrayList2);
        }
        for (String str : FallbackFontFileNames) {
            FontConfig fontConfig = new FontConfig();
            fontConfig.fileName = str;
            addFont(fontConfig, arrayList, arrayList2);
        }
        for (FontConfig fontConfig2 : fontConfigArr) {
            addFont(fontConfig2, arrayList, arrayList2);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        String[] strArr2 = new String[arrayList.size()];
        arrayList.toArray(strArr2);
        int[] iArr = new int[arrayList2.size()];
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            iArr[i9] = ((Integer) it.next()).intValue();
            i9++;
        }
        SetFallbackFontPaths(strArr2, iArr);
    }

    public static native PAGFont RegisterFont(AssetManager assetManager, String str, int i9, String str2, String str3);

    public static PAGFont RegisterFont(String str) {
        return RegisterFont(str, 0);
    }

    public static native PAGFont RegisterFont(String str, int i9, String str2, String str3);

    private static PAGFont RegisterFontBytes(byte[] bArr, int i9, int i10) {
        return RegisterFontBytes(bArr, i9, i10, "", "");
    }

    private static native PAGFont RegisterFontBytes(byte[] bArr, int i9, int i10, String str, String str2);

    private static native void SetFallbackFontPaths(String[] strArr, int[] iArr);

    private static native void UnregisterFont(String str, String str2);

    public static void UnregisterFont(PAGFont pAGFont) {
        UnregisterFont(pAGFont.fontFamily, pAGFont.fontStyle);
    }

    private static void addFont(FontConfig fontConfig, ArrayList<String> arrayList, ArrayList<Integer> arrayList2) {
        if (!arrayList.contains(fontConfig.fileName) && new File(fontConfig.fileName).exists()) {
            arrayList.add(fontConfig.fileName);
            arrayList2.add(Integer.valueOf(fontConfig.ttcIndex));
        }
    }

    private static FontConfig getFontByLanguage(FontConfig[] fontConfigArr, String str) {
        String lowerCase = str.toLowerCase();
        for (FontConfig fontConfig : fontConfigArr) {
            if (fontConfig.language.toLowerCase().equals(lowerCase)) {
                return fontConfig;
            }
        }
        return null;
    }

    private static native void nativeInit();

    private static FontConfig[] parseJellyBean() throws XmlPullParserException, IOException {
        FontConfig[] fontConfigArr = new FontConfig[0];
        try {
            FileInputStream fileInputStream = new FileInputStream(SystemFontConfigPath_JellyBean);
            try {
                XmlPullParser newPullParser = Xml.newPullParser();
                newPullParser.setInput(fileInputStream, null);
                newPullParser.nextTag();
                return readFamiliesJellyBean(newPullParser);
            } finally {
                fileInputStream.close();
            }
        } catch (IOException unused) {
            return fontConfigArr;
        }
    }

    private static FontConfig[] parseLollipop() throws XmlPullParserException, IOException {
        FontConfig[] fontConfigArr = new FontConfig[0];
        try {
            FileInputStream fileInputStream = new FileInputStream(SystemFontConfigPath_Lollipop);
            try {
                XmlPullParser newPullParser = Xml.newPullParser();
                newPullParser.setInput(fileInputStream, null);
                newPullParser.nextTag();
                return readFamilies(newPullParser);
            } finally {
                fileInputStream.close();
            }
        } catch (IOException unused) {
            return fontConfigArr;
        }
    }

    private static FontConfig[] readFamilies(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        xmlPullParser.require(2, null, "familyset");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("family")) {
                    readFamily(xmlPullParser, arrayList);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        FontConfig[] fontConfigArr = new FontConfig[arrayList.size()];
        arrayList.toArray(fontConfigArr);
        return fontConfigArr;
    }

    private static FontConfig[] readFamiliesJellyBean(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        xmlPullParser.require(2, null, "familyset");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("family")) {
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals("fileset")) {
                                readFileset(xmlPullParser, arrayList);
                            } else {
                                skip(xmlPullParser);
                            }
                        }
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        FontConfig[] fontConfigArr = new FontConfig[arrayList.size()];
        arrayList.toArray(fontConfigArr);
        return fontConfigArr;
    }

    private static void readFamily(XmlPullParser xmlPullParser, ArrayList<FontConfig> arrayList) throws XmlPullParserException, IOException {
        FontConfig fontConfig = null;
        xmlPullParser.getAttributeValue(null, "name");
        String attributeValue = xmlPullParser.getAttributeValue(null, VKApiCodes.PARAM_LANG);
        ArrayList arrayList2 = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList2.add(readFont(xmlPullParser));
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        Iterator it = arrayList2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            FontConfig fontConfig2 = (FontConfig) it.next();
            if (fontConfig2.weight == 400) {
                fontConfig = fontConfig2;
                break;
            }
        }
        if (fontConfig == null) {
            fontConfig = (FontConfig) arrayList2.get(0);
        }
        if (fontConfig.fileName.isEmpty()) {
            return;
        }
        if (attributeValue == null) {
            attributeValue = "";
        }
        fontConfig.language = attributeValue;
        arrayList.add(fontConfig);
    }

    private static void readFileset(XmlPullParser xmlPullParser, ArrayList<FontConfig> arrayList) throws XmlPullParserException, IOException {
        ArrayList arrayList2 = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(ShareInternalUtility.STAGING_PARAM)) {
                    arrayList2.add(readFont(xmlPullParser));
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        FontConfig fontConfig = null;
        Iterator it = arrayList2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            FontConfig fontConfig2 = (FontConfig) it.next();
            if (fontConfig2.weight == 400) {
                fontConfig = fontConfig2;
                break;
            }
        }
        if (fontConfig == null) {
            fontConfig = (FontConfig) arrayList2.get(0);
        }
        if (fontConfig.fileName.isEmpty()) {
            return;
        }
        arrayList.add(fontConfig);
    }

    private static FontConfig readFont(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        FontConfig fontConfig = new FontConfig();
        String attributeValue = xmlPullParser.getAttributeValue(null, "index");
        fontConfig.ttcIndex = attributeValue == null ? 0 : Integer.parseInt(attributeValue);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, Contants.Weight);
        fontConfig.weight = attributeValue2 == null ? 400 : Integer.parseInt(attributeValue2);
        StringBuilder sb2 = new StringBuilder();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 4) {
                sb2.append(xmlPullParser.getText());
            }
            if (xmlPullParser.getEventType() == 2) {
                skip(xmlPullParser);
            }
        }
        fontConfig.fileName = SystemFontPath + FILENAME_WHITESPACE_PATTERN.matcher(sb2).replaceAll("");
        return fontConfig;
    }

    private static void skip(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i9 = 1;
        while (i9 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i9++;
            } else if (next == 3) {
                i9--;
            }
        }
    }

    public static PAGFont RegisterFont(AssetManager assetManager, String str) {
        return RegisterFont(assetManager, str, 0);
    }

    public static PAGFont RegisterFont(AssetManager assetManager, String str, int i9) {
        return RegisterFont(assetManager, str, i9, "", "");
    }

    public PAGFont(String str, String str2) {
        this.fontFamily = str;
        this.fontStyle = str2;
    }

    public static PAGFont RegisterFont(String str, int i9) {
        return RegisterFont(str, i9, "", "");
    }
}
