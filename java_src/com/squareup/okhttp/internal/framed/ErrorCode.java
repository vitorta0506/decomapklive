package com.squareup.okhttp.internal.framed;
/* loaded from: classes4.dex */
public enum ErrorCode {
    NO_ERROR(0, -1, 0),
    PROTOCOL_ERROR(1, 1, 1),
    INVALID_STREAM(1, 2, -1),
    UNSUPPORTED_VERSION(1, 4, -1),
    STREAM_IN_USE(1, 8, -1),
    STREAM_ALREADY_CLOSED(1, 9, -1),
    INTERNAL_ERROR(2, 6, 2),
    FLOW_CONTROL_ERROR(3, 7, -1),
    STREAM_CLOSED(5, -1, -1),
    FRAME_TOO_LARGE(6, 11, -1),
    REFUSED_STREAM(7, 3, -1),
    CANCEL(8, 5, -1),
    COMPRESSION_ERROR(9, -1, -1),
    CONNECT_ERROR(10, -1, -1),
    ENHANCE_YOUR_CALM(11, -1, -1),
    INADEQUATE_SECURITY(12, -1, -1),
    HTTP_1_1_REQUIRED(13, -1, -1),
    INVALID_CREDENTIALS(-1, 10, -1);
    
    public final int httpCode;
    public final int spdyGoAwayCode;
    public final int spdyRstCode;

    ErrorCode(int i9, int i10, int i11) {
        this.httpCode = i9;
        this.spdyRstCode = i10;
        this.spdyGoAwayCode = i11;
    }

    public static ErrorCode fromHttp2(int i9) {
        ErrorCode[] values;
        for (ErrorCode errorCode : values()) {
            if (errorCode.httpCode == i9) {
                return errorCode;
            }
        }
        return null;
    }

    public static ErrorCode fromSpdy3Rst(int i9) {
        ErrorCode[] values;
        for (ErrorCode errorCode : values()) {
            if (errorCode.spdyRstCode == i9) {
                return errorCode;
            }
        }
        return null;
    }

    public static ErrorCode fromSpdyGoAway(int i9) {
        ErrorCode[] values;
        for (ErrorCode errorCode : values()) {
            if (errorCode.spdyGoAwayCode == i9) {
                return errorCode;
            }
        }
        return null;
    }
}
