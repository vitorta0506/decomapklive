package com.google.api.client.http;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.api.client.util.e0;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPInputStream;
/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private InputStream f11053a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11054b;

    /* renamed from: c  reason: collision with root package name */
    private final String f11055c;

    /* renamed from: d  reason: collision with root package name */
    private final l f11056d;

    /* renamed from: e  reason: collision with root package name */
    v f11057e;

    /* renamed from: f  reason: collision with root package name */
    private final int f11058f;

    /* renamed from: g  reason: collision with root package name */
    private final String f11059g;

    /* renamed from: h  reason: collision with root package name */
    private final m f11060h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f11061i;

    /* renamed from: j  reason: collision with root package name */
    private int f11062j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f11063k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f11064l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(m mVar, v vVar) throws IOException {
        StringBuilder sb2;
        this.f11060h = mVar;
        this.f11061i = mVar.i();
        this.f11062j = mVar.c();
        this.f11063k = mVar.m();
        this.f11057e = vVar;
        this.f11054b = vVar.c();
        int j10 = vVar.j();
        boolean z10 = false;
        j10 = j10 < 0 ? 0 : j10;
        this.f11058f = j10;
        String i9 = vVar.i();
        this.f11059g = i9;
        Logger logger = s.f11065a;
        if (this.f11063k && logger.isLoggable(Level.CONFIG)) {
            z10 = true;
        }
        if (z10) {
            sb2 = new StringBuilder();
            sb2.append("-------------- RESPONSE --------------");
            String str = e0.f11107a;
            sb2.append(str);
            String k10 = vVar.k();
            if (k10 != null) {
                sb2.append(k10);
            } else {
                sb2.append(j10);
                if (i9 != null) {
                    sb2.append(' ');
                    sb2.append(i9);
                }
            }
            sb2.append(str);
        } else {
            sb2 = null;
        }
        mVar.h().h(vVar, z10 ? sb2 : null);
        String e10 = vVar.e();
        e10 = e10 == null ? mVar.h().getContentType() : e10;
        this.f11055c = e10;
        this.f11056d = m(e10);
        if (z10) {
            logger.config(sb2.toString());
        }
    }

    private boolean h() throws IOException {
        int f10 = f();
        if (e().g().equals("HEAD") || f10 / 100 == 1 || f10 == 204 || f10 == 304) {
            i();
            return false;
        }
        return true;
    }

    private static l m(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new l(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public void a() throws IOException {
        i();
        this.f11057e.a();
    }

    public InputStream b() throws IOException {
        String str;
        if (!this.f11064l) {
            com.google.api.client.util.r b10 = this.f11057e.b();
            if (b10 != null) {
                try {
                    if (!this.f11061i && (str = this.f11054b) != null) {
                        String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
                        if ("gzip".equals(lowerCase) || "x-gzip".equals(lowerCase)) {
                            b10 = new GZIPInputStream(new c(b10));
                        }
                    }
                    Logger logger = s.f11065a;
                    if (this.f11063k) {
                        Level level = Level.CONFIG;
                        if (logger.isLoggable(level)) {
                            b10 = new com.google.api.client.util.r(b10, logger, level, this.f11062j);
                        }
                    }
                    if (this.f11061i) {
                        this.f11053a = b10;
                    } else {
                        this.f11053a = new BufferedInputStream(b10);
                    }
                } catch (EOFException unused) {
                    b10.close();
                } catch (Throwable th2) {
                    b10.close();
                    throw th2;
                }
            }
            this.f11064l = true;
        }
        return this.f11053a;
    }

    public Charset c() {
        l lVar = this.f11056d;
        if (lVar != null) {
            if (lVar.d() != null) {
                return this.f11056d.d();
            }
            if ("application".equals(this.f11056d.g()) && "json".equals(this.f11056d.f())) {
                return StandardCharsets.UTF_8;
            }
            if (ViewHierarchyConstants.TEXT_KEY.equals(this.f11056d.g()) && "csv".equals(this.f11056d.f())) {
                return StandardCharsets.UTF_8;
            }
        }
        return StandardCharsets.ISO_8859_1;
    }

    public j d() {
        return this.f11060h.h();
    }

    public m e() {
        return this.f11060h;
    }

    public int f() {
        return this.f11058f;
    }

    public String g() {
        return this.f11059g;
    }

    public void i() throws IOException {
        InputStream b10;
        v vVar = this.f11057e;
        if (vVar == null || (b10 = vVar.b()) == null) {
            return;
        }
        b10.close();
    }

    public boolean j() {
        return r.b(this.f11058f);
    }

    public <T> T k(Class<T> cls) throws IOException {
        if (h()) {
            return (T) this.f11060h.f().a(b(), c(), cls);
        }
        return null;
    }

    public String l() throws IOException {
        InputStream b10 = b();
        if (b10 == null) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        com.google.api.client.util.n.b(b10, byteArrayOutputStream);
        return byteArrayOutputStream.toString(c().name());
    }
}
