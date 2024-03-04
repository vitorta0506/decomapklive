package org.apache.http.entity;

import androidx.webkit.internal.AssetHelper;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.ParseException;
import org.apache.http.a;
import org.apache.http.c;
import org.apache.http.d;
import org.apache.http.f;
import org.apache.http.k;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.CharArrayBuffer;
import si.b;
import si.g;
/* loaded from: classes7.dex */
public final class ContentType implements Serializable {
    public static final ContentType APPLICATION_ATOM_XML;
    public static final ContentType APPLICATION_FORM_URLENCODED;
    public static final ContentType APPLICATION_JSON;
    public static final ContentType APPLICATION_OCTET_STREAM;
    public static final ContentType APPLICATION_SOAP_XML;
    public static final ContentType APPLICATION_SVG_XML;
    public static final ContentType APPLICATION_XHTML_XML;
    public static final ContentType APPLICATION_XML;
    private static final Map<String, ContentType> CONTENT_TYPE_MAP;
    public static final ContentType DEFAULT_BINARY;
    public static final ContentType DEFAULT_TEXT;
    public static final ContentType IMAGE_BMP;
    public static final ContentType IMAGE_GIF;
    public static final ContentType IMAGE_JPEG;
    public static final ContentType IMAGE_PNG;
    public static final ContentType IMAGE_SVG;
    public static final ContentType IMAGE_TIFF;
    public static final ContentType IMAGE_WEBP;
    public static final ContentType MULTIPART_FORM_DATA;
    public static final ContentType TEXT_HTML;
    public static final ContentType TEXT_PLAIN;
    public static final ContentType TEXT_XML;
    public static final ContentType WILDCARD;
    private static final long serialVersionUID = -7768694718232371896L;
    private final Charset charset;
    private final String mimeType;
    private final k[] params;

    static {
        Charset charset = a.f55875c;
        ContentType create = create("application/atom+xml", charset);
        APPLICATION_ATOM_XML = create;
        ContentType create2 = create("application/x-www-form-urlencoded", charset);
        APPLICATION_FORM_URLENCODED = create2;
        Charset charset2 = a.f55873a;
        ContentType create3 = create("application/json", charset2);
        APPLICATION_JSON = create3;
        APPLICATION_OCTET_STREAM = create("application/octet-stream", (Charset) null);
        APPLICATION_SOAP_XML = create("application/soap+xml", charset2);
        ContentType create4 = create("application/svg+xml", charset);
        APPLICATION_SVG_XML = create4;
        ContentType create5 = create("application/xhtml+xml", charset);
        APPLICATION_XHTML_XML = create5;
        ContentType create6 = create("application/xml", charset);
        APPLICATION_XML = create6;
        ContentType create7 = create("image/bmp");
        IMAGE_BMP = create7;
        ContentType create8 = create("image/gif");
        IMAGE_GIF = create8;
        ContentType create9 = create("image/jpeg");
        IMAGE_JPEG = create9;
        ContentType create10 = create("image/png");
        IMAGE_PNG = create10;
        ContentType create11 = create("image/svg+xml");
        IMAGE_SVG = create11;
        ContentType create12 = create("image/tiff");
        IMAGE_TIFF = create12;
        ContentType create13 = create("image/webp");
        IMAGE_WEBP = create13;
        ContentType create14 = create("multipart/form-data", charset);
        MULTIPART_FORM_DATA = create14;
        ContentType create15 = create("text/html", charset);
        TEXT_HTML = create15;
        ContentType create16 = create(AssetHelper.DEFAULT_MIME_TYPE, charset);
        TEXT_PLAIN = create16;
        ContentType create17 = create("text/xml", charset);
        TEXT_XML = create17;
        WILDCARD = create("*/*", (Charset) null);
        ContentType[] contentTypeArr = {create, create2, create3, create4, create5, create6, create7, create8, create9, create10, create11, create12, create13, create14, create15, create16, create17};
        HashMap hashMap = new HashMap();
        for (int i9 = 0; i9 < 17; i9++) {
            ContentType contentType = contentTypeArr[i9];
            hashMap.put(contentType.getMimeType(), contentType);
        }
        CONTENT_TYPE_MAP = Collections.unmodifiableMap(hashMap);
        DEFAULT_TEXT = TEXT_PLAIN;
        DEFAULT_BINARY = APPLICATION_OCTET_STREAM;
    }

    ContentType(String str, Charset charset) {
        this.mimeType = str;
        this.charset = charset;
        this.params = null;
    }

    public static ContentType create(String str, Charset charset) {
        String lowerCase = ((String) vi.a.d(str, "MIME type")).toLowerCase(Locale.ROOT);
        vi.a.a(valid(lowerCase), "MIME type may not contain reserved characters");
        return new ContentType(lowerCase, charset);
    }

    public static ContentType get(f fVar) throws ParseException, UnsupportedCharsetException {
        c contentType;
        if (fVar != null && (contentType = fVar.getContentType()) != null) {
            d[] elements = contentType.getElements();
            if (elements.length > 0) {
                return create(elements[0], true);
            }
        }
        return null;
    }

    public static ContentType getByMimeType(String str) {
        if (str == null) {
            return null;
        }
        return CONTENT_TYPE_MAP.get(str);
    }

    public static ContentType getLenient(f fVar) {
        c contentType;
        if (fVar != null && (contentType = fVar.getContentType()) != null) {
            try {
                d[] elements = contentType.getElements();
                if (elements.length > 0) {
                    return create(elements[0], false);
                }
            } catch (ParseException unused) {
            }
        }
        return null;
    }

    public static ContentType getLenientOrDefault(f fVar) throws ParseException, UnsupportedCharsetException {
        ContentType contentType = get(fVar);
        return contentType != null ? contentType : DEFAULT_TEXT;
    }

    public static ContentType getOrDefault(f fVar) throws ParseException, UnsupportedCharsetException {
        ContentType contentType = get(fVar);
        return contentType != null ? contentType : DEFAULT_TEXT;
    }

    public static ContentType parse(String str) throws ParseException, UnsupportedCharsetException {
        vi.a.g(str, "Content type");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        d[] a10 = si.c.f57927c.a(charArrayBuffer, new g(0, str.length()));
        if (a10.length > 0) {
            return create(a10[0], true);
        }
        throw new ParseException("Invalid content type: " + str);
    }

    private static boolean valid(String str) {
        for (int i9 = 0; i9 < str.length(); i9++) {
            char charAt = str.charAt(i9);
            if (charAt == '\"' || charAt == ',' || charAt == ';') {
                return false;
            }
        }
        return true;
    }

    public Charset getCharset() {
        return this.charset;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public String getParameter(String str) {
        vi.a.e(str, "Parameter name");
        k[] kVarArr = this.params;
        if (kVarArr == null) {
            return null;
        }
        for (k kVar : kVarArr) {
            if (kVar.getName().equalsIgnoreCase(str)) {
                return kVar.getValue();
            }
        }
        return null;
    }

    public String toString() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        charArrayBuffer.append(this.mimeType);
        if (this.params != null) {
            charArrayBuffer.append("; ");
            b.f57925b.e(charArrayBuffer, this.params, false);
        } else if (this.charset != null) {
            charArrayBuffer.append("; charset=");
            charArrayBuffer.append(this.charset.name());
        }
        return charArrayBuffer.toString();
    }

    public ContentType withCharset(Charset charset) {
        return create(getMimeType(), charset);
    }

    public ContentType withParameters(k... kVarArr) throws UnsupportedCharsetException {
        if (kVarArr.length == 0) {
            return this;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        k[] kVarArr2 = this.params;
        if (kVarArr2 != null) {
            for (k kVar : kVarArr2) {
                linkedHashMap.put(kVar.getName(), kVar.getValue());
            }
        }
        for (k kVar2 : kVarArr) {
            linkedHashMap.put(kVar2.getName(), kVar2.getValue());
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size() + 1);
        if (this.charset != null && !linkedHashMap.containsKey("charset")) {
            arrayList.add(new BasicNameValuePair("charset", this.charset.name()));
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new BasicNameValuePair((String) entry.getKey(), (String) entry.getValue()));
        }
        return create(getMimeType(), (k[]) arrayList.toArray(new k[arrayList.size()]), true);
    }

    public ContentType withCharset(String str) {
        return create(getMimeType(), str);
    }

    public static ContentType create(String str) {
        return create(str, (Charset) null);
    }

    ContentType(String str, Charset charset, k[] kVarArr) {
        this.mimeType = str;
        this.charset = charset;
        this.params = kVarArr;
    }

    public static ContentType create(String str, String str2) throws UnsupportedCharsetException {
        return create(str, !vi.f.b(str2) ? Charset.forName(str2) : null);
    }

    private static ContentType create(d dVar, boolean z10) {
        return create(dVar.getName(), dVar.getParameters(), z10);
    }

    private static ContentType create(String str, k[] kVarArr, boolean z10) {
        Charset charset;
        int length = kVarArr.length;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                break;
            }
            k kVar = kVarArr[i9];
            if (kVar.getName().equalsIgnoreCase("charset")) {
                String value = kVar.getValue();
                if (!vi.f.b(value)) {
                    try {
                        charset = Charset.forName(value);
                    } catch (UnsupportedCharsetException e10) {
                        if (z10) {
                            throw e10;
                        }
                    }
                }
            } else {
                i9++;
            }
        }
        charset = null;
        if (kVarArr.length <= 0) {
            kVarArr = null;
        }
        return new ContentType(str, charset, kVarArr);
    }

    public static ContentType create(String str, k... kVarArr) throws UnsupportedCharsetException {
        vi.a.a(valid(((String) vi.a.d(str, "MIME type")).toLowerCase(Locale.ROOT)), "MIME type may not contain reserved characters");
        return create(str, kVarArr, true);
    }
}
