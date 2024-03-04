package io.grpc.netty.shaded.io.netty.handler.codec.http.multipart;
/* loaded from: classes5.dex */
public enum HttpPostRequestDecoder$MultiPartStatus {
    NOTSTARTED,
    PREAMBLE,
    HEADERDELIMITER,
    DISPOSITION,
    FIELD,
    FILEUPLOAD,
    MIXEDPREAMBLE,
    MIXEDDELIMITER,
    MIXEDDISPOSITION,
    MIXEDFILEUPLOAD,
    MIXEDCLOSEDELIMITER,
    CLOSEDELIMITER,
    PREEPILOGUE,
    EPILOGUE
}
