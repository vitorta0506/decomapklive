package com.squareup.okhttp.internal.framed;

import java.io.IOException;
import java.util.List;
import okio.BufferedSource;
/* loaded from: classes4.dex */
public interface PushObserver {
    public static final PushObserver CANCEL = new a();

    /* loaded from: classes4.dex */
    static class a implements PushObserver {
        a() {
        }

        @Override // com.squareup.okhttp.internal.framed.PushObserver
        public boolean onData(int i9, BufferedSource bufferedSource, int i10, boolean z10) throws IOException {
            bufferedSource.skip(i10);
            return true;
        }

        @Override // com.squareup.okhttp.internal.framed.PushObserver
        public boolean onHeaders(int i9, List<c> list, boolean z10) {
            return true;
        }

        @Override // com.squareup.okhttp.internal.framed.PushObserver
        public boolean onRequest(int i9, List<c> list) {
            return true;
        }

        @Override // com.squareup.okhttp.internal.framed.PushObserver
        public void onReset(int i9, ErrorCode errorCode) {
        }
    }

    boolean onData(int i9, BufferedSource bufferedSource, int i10, boolean z10) throws IOException;

    boolean onHeaders(int i9, List<c> list, boolean z10);

    boolean onRequest(int i9, List<c> list);

    void onReset(int i9, ErrorCode errorCode);
}
