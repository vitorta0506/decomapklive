package com.google.android.exoplayer2.extractor.flv;

import c2.e0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.b0;
/* loaded from: classes.dex */
abstract class TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    protected final e0 f5880a;

    /* loaded from: classes.dex */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str, null, false, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TagPayloadReader(e0 e0Var) {
        this.f5880a = e0Var;
    }

    public final boolean a(b0 b0Var, long j10) throws ParserException {
        return b(b0Var) && c(b0Var, j10);
    }

    protected abstract boolean b(b0 b0Var) throws ParserException;

    protected abstract boolean c(b0 b0Var, long j10) throws ParserException;
}
