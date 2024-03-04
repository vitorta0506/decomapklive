package com.google.api.client.util;
/* loaded from: classes2.dex */
public interface u {

    /* renamed from: a  reason: collision with root package name */
    public static final u f11178a = new a();

    /* loaded from: classes2.dex */
    static class a implements u {
        a() {
        }

        @Override // com.google.api.client.util.u
        public long nanoTime() {
            return System.nanoTime();
        }
    }

    long nanoTime();
}
