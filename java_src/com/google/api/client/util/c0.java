package com.google.api.client.util;
/* loaded from: classes2.dex */
public interface c0 {

    /* renamed from: a  reason: collision with root package name */
    public static final c0 f11106a = new a();

    /* loaded from: classes2.dex */
    static class a implements c0 {
        a() {
        }

        @Override // com.google.api.client.util.c0
        public void a(long j10) throws InterruptedException {
            Thread.sleep(j10);
        }
    }

    void a(long j10) throws InterruptedException;
}
