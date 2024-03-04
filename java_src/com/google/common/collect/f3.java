package com.google.common.collect;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f3 implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private int f13053a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f3(int i9) {
        this.f13053a = i9;
    }

    public void a(int i9) {
        this.f13053a += i9;
    }

    public int b(int i9) {
        int i10 = this.f13053a + i9;
        this.f13053a = i10;
        return i10;
    }

    public int c() {
        return this.f13053a;
    }

    public int d(int i9) {
        int i10 = this.f13053a;
        this.f13053a = i9;
        return i10;
    }

    public void e(int i9) {
        this.f13053a = i9;
    }

    public boolean equals(Object obj) {
        return (obj instanceof f3) && ((f3) obj).f13053a == this.f13053a;
    }

    public int hashCode() {
        return this.f13053a;
    }

    public String toString() {
        return Integer.toString(this.f13053a);
    }
}
