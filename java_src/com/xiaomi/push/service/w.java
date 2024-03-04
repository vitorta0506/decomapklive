package com.xiaomi.push.service;

import com.xiaomi.push.dc;
import com.xiaomi.push.dd;
/* loaded from: classes5.dex */
/* synthetic */ class w {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ int[] f37377a;

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ int[] f37378b;

    static {
        int[] iArr = new int[dd.values().length];
        f37378b = iArr;
        try {
            iArr[dd.INT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f37378b[dd.LONG.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f37378b[dd.STRING.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f37378b[dd.BOOLEAN.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        int[] iArr2 = new int[dc.values().length];
        f37377a = iArr2;
        try {
            iArr2[dc.MISC_CONFIG.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f37377a[dc.PLUGIN_CONFIG.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
