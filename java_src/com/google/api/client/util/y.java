package com.google.api.client.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f11186b = Pattern.compile("-----BEGIN ([A-Z ]+)-----");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f11187c = Pattern.compile("-----END ([A-Z ]+)-----");

    /* renamed from: a  reason: collision with root package name */
    private BufferedReader f11188a;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f11189a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f11190b;

        a(String str, byte[] bArr) {
            this.f11189a = (String) z.d(str);
            this.f11190b = (byte[]) z.d(bArr);
        }

        public byte[] a() {
            return this.f11190b;
        }

        public String b() {
            return this.f11189a;
        }
    }

    public y(Reader reader) {
        this.f11188a = new BufferedReader(reader);
    }

    public static a b(Reader reader, String str) throws IOException {
        y yVar = new y(reader);
        try {
            return yVar.d(str);
        } finally {
            yVar.a();
        }
    }

    public void a() throws IOException {
        this.f11188a.close();
    }

    public a c() throws IOException {
        return d(null);
    }

    public a d(String str) throws IOException {
        StringBuilder sb2 = null;
        String str2 = null;
        while (true) {
            String readLine = this.f11188a.readLine();
            if (readLine == null) {
                z.c(str2 == null, "missing end tag (%s)", str2);
                return null;
            } else if (sb2 == null) {
                Matcher matcher = f11186b.matcher(readLine);
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    if (str == null || group.equals(str)) {
                        sb2 = new StringBuilder();
                        str2 = group;
                    }
                }
            } else {
                Matcher matcher2 = f11187c.matcher(readLine);
                if (matcher2.matches()) {
                    String group2 = matcher2.group(1);
                    z.c(group2.equals(str2), "end tag (%s) doesn't match begin tag (%s)", group2, str2);
                    return new a(str2, e.a(sb2.toString()));
                }
                sb2.append(readLine);
            }
        }
    }
}
