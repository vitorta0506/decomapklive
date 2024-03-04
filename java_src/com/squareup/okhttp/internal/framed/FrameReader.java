package com.squareup.okhttp.internal.framed;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import okio.BufferedSource;
import okio.ByteString;
/* loaded from: classes4.dex */
public interface FrameReader extends Closeable {

    /* loaded from: classes4.dex */
    public interface Handler {
        void ackSettings();

        void alternateService(int i9, String str, ByteString byteString, String str2, int i10, long j10);

        void data(boolean z10, int i9, BufferedSource bufferedSource, int i10) throws IOException;

        void goAway(int i9, ErrorCode errorCode, ByteString byteString);

        void headers(boolean z10, boolean z11, int i9, int i10, List<c> list, HeadersMode headersMode);

        void ping(boolean z10, int i9, int i10);

        void priority(int i9, int i10, int i11, boolean z10);

        void pushPromise(int i9, int i10, List<c> list) throws IOException;

        void rstStream(int i9, ErrorCode errorCode);

        void settings(boolean z10, i iVar);

        void windowUpdate(int i9, long j10);
    }

    boolean nextFrame(Handler handler) throws IOException;

    void readConnectionPreface() throws IOException;
}
