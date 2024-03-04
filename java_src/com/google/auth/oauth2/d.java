package com.google.auth.oauth2;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final String f11624a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11625b;

    private d(String str) {
        this.f11624a = (String) com.google.common.base.o.s(str);
        this.f11625b = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d a(String str) throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd'T'HHmmss'Z'");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return new d(simpleDateFormat.format(new SimpleDateFormat("E, dd MMM yyyy HH:mm:ss z").parse(str)), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d b(String str) throws ParseException {
        new SimpleDateFormat("yyyyMMdd'T'HHmmss'Z'").parse(str);
        return new d(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d c() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd'T'HHmmss'Z'");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return new d(simpleDateFormat.format(new Date(System.currentTimeMillis())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        return this.f11624a.substring(0, 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        return this.f11625b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f() {
        return this.f11624a;
    }

    private d(String str, String str2) {
        this.f11624a = (String) com.google.common.base.o.s(str);
        this.f11625b = (String) com.google.common.base.o.s(str2);
    }
}
