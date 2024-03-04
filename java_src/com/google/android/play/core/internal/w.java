package com.google.android.play.core.internal;

import android.content.res.AssetManager;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private final a5.b f10624a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private XmlPullParser f10625b;

    public w(a5.b bVar) {
        this.f10624a = bVar;
    }

    public final long a() throws IOException, XmlPullParserException {
        if (this.f10625b != null) {
            while (true) {
                int next = this.f10625b.next();
                if (next != 2) {
                    if (next == 1) {
                        break;
                    }
                } else if (this.f10625b.getName().equals("manifest")) {
                    String attributeValue = this.f10625b.getAttributeValue("http://schemas.android.com/apk/res/android", "versionCode");
                    String attributeValue2 = this.f10625b.getAttributeValue("http://schemas.android.com/apk/res/android", "versionCodeMajor");
                    if (attributeValue != null) {
                        try {
                            int parseInt = Integer.parseInt(attributeValue);
                            if (attributeValue2 == null) {
                                return parseInt;
                            }
                            try {
                                return (Integer.parseInt(attributeValue2) << 32) | (parseInt & 4294967295L);
                            } catch (NumberFormatException e10) {
                                throw new XmlPullParserException(String.format("Couldn't parse versionCodeMajor to int: %s", e10.getMessage()));
                            }
                        } catch (NumberFormatException e11) {
                            throw new XmlPullParserException(String.format("Couldn't parse versionCode to int: %s", e11.getMessage()));
                        }
                    }
                    throw new XmlPullParserException("Manifest entry doesn't contain 'versionCode' attribute.");
                }
            }
            throw new XmlPullParserException("Couldn't find manifest entry at top-level.");
        }
        throw new XmlPullParserException("Manifest file needs to be loaded before parsing.");
    }

    public final void b(AssetManager assetManager, File file) throws IOException {
        this.f10625b = assetManager.openXmlResourceParser(a5.b.b(assetManager, file), "AndroidManifest.xml");
    }
}
