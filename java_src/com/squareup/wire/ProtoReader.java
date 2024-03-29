package com.squareup.wire;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.BufferedSource;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class ProtoReader {
    private static final int FIELD_ENCODING_MASK = 7;
    private static final int RECURSION_LIMIT = 65;
    private static final int STATE_END_GROUP = 4;
    private static final int STATE_FIXED32 = 5;
    private static final int STATE_FIXED64 = 1;
    private static final int STATE_LENGTH_DELIMITED = 2;
    private static final int STATE_PACKED_TAG = 7;
    private static final int STATE_START_GROUP = 3;
    private static final int STATE_TAG = 6;
    private static final int STATE_VARINT = 0;
    static final int TAG_FIELD_ENCODING_BITS = 3;
    private FieldEncoding nextFieldEncoding;
    private int recursionDepth;
    private final BufferedSource source;
    private long pos = 0;
    private long limit = Long.MAX_VALUE;
    private int state = 2;
    private int tag = -1;
    private long pushedLimit = -1;

    public ProtoReader(BufferedSource bufferedSource) {
        this.source = bufferedSource;
    }

    private void afterPackableScalar(int i9) throws IOException {
        if (this.state == i9) {
            this.state = 6;
            return;
        }
        long j10 = this.pos;
        long j11 = this.limit;
        if (j10 > j11) {
            throw new IOException("Expected to end at " + this.limit + " but was " + this.pos);
        } else if (j10 == j11) {
            this.limit = this.pushedLimit;
            this.pushedLimit = -1L;
            this.state = 6;
        } else {
            this.state = 7;
        }
    }

    private long beforeLengthDelimitedScalar() throws IOException {
        if (this.state == 2) {
            long j10 = this.limit - this.pos;
            this.source.require(j10);
            this.state = 6;
            this.pos = this.limit;
            this.limit = this.pushedLimit;
            this.pushedLimit = -1L;
            return j10;
        }
        throw new ProtocolException("Expected LENGTH_DELIMITED but was " + this.state);
    }

    private int internalReadVarint32() throws IOException {
        int i9;
        this.source.require(1L);
        this.pos++;
        byte readByte = this.source.readByte();
        if (readByte >= 0) {
            return readByte;
        }
        int i10 = readByte & ByteCompanionObject.MAX_VALUE;
        this.source.require(1L);
        this.pos++;
        byte readByte2 = this.source.readByte();
        if (readByte2 >= 0) {
            i9 = readByte2 << 7;
        } else {
            i10 |= (readByte2 & ByteCompanionObject.MAX_VALUE) << 7;
            this.source.require(1L);
            this.pos++;
            byte readByte3 = this.source.readByte();
            if (readByte3 >= 0) {
                i9 = readByte3 << 14;
            } else {
                i10 |= (readByte3 & ByteCompanionObject.MAX_VALUE) << 14;
                this.source.require(1L);
                this.pos++;
                byte readByte4 = this.source.readByte();
                if (readByte4 < 0) {
                    int i11 = i10 | ((readByte4 & ByteCompanionObject.MAX_VALUE) << 21);
                    this.source.require(1L);
                    this.pos++;
                    byte readByte5 = this.source.readByte();
                    int i12 = i11 | (readByte5 << 28);
                    if (readByte5 < 0) {
                        for (int i13 = 0; i13 < 5; i13++) {
                            this.source.require(1L);
                            this.pos++;
                            if (this.source.readByte() >= 0) {
                                return i12;
                            }
                        }
                        throw new ProtocolException("Malformed VARINT");
                    }
                    return i12;
                }
                i9 = readByte4 << 21;
            }
        }
        return i10 | i9;
    }

    private void skipGroup(int i9) throws IOException {
        while (this.pos < this.limit && !this.source.exhausted()) {
            int internalReadVarint32 = internalReadVarint32();
            if (internalReadVarint32 == 0) {
                throw new ProtocolException("Unexpected tag 0");
            }
            int i10 = internalReadVarint32 >> 3;
            int i11 = internalReadVarint32 & 7;
            if (i11 == 0) {
                this.state = 0;
                readVarint64();
            } else if (i11 == 1) {
                this.state = 1;
                readFixed64();
            } else if (i11 == 2) {
                long internalReadVarint322 = internalReadVarint32();
                this.pos += internalReadVarint322;
                this.source.skip(internalReadVarint322);
            } else if (i11 == 3) {
                skipGroup(i10);
            } else if (i11 == 4) {
                if (i10 != i9) {
                    throw new ProtocolException("Unexpected end group");
                }
                return;
            } else if (i11 == 5) {
                this.state = 5;
                readFixed32();
            } else {
                throw new ProtocolException("Unexpected field encoding: " + i11);
            }
        }
        throw new EOFException();
    }

    public long beginMessage() throws IOException {
        if (this.state == 2) {
            int i9 = this.recursionDepth + 1;
            this.recursionDepth = i9;
            if (i9 <= 65) {
                long j10 = this.pushedLimit;
                this.pushedLimit = -1L;
                this.state = 6;
                return j10;
            }
            throw new IOException("Wire recursion limit exceeded");
        }
        throw new IllegalStateException("Unexpected call to beginMessage()");
    }

    public void endMessage(long j10) throws IOException {
        if (this.state == 6) {
            int i9 = this.recursionDepth - 1;
            this.recursionDepth = i9;
            if (i9 >= 0 && this.pushedLimit == -1) {
                if (this.pos != this.limit && i9 != 0) {
                    throw new IOException("Expected to end at " + this.limit + " but was " + this.pos);
                }
                this.limit = j10;
                return;
            }
            throw new IllegalStateException("No corresponding call to beginMessage()");
        }
        throw new IllegalStateException("Unexpected call to endMessage()");
    }

    public int nextTag() throws IOException {
        int i9 = this.state;
        if (i9 == 7) {
            this.state = 2;
            return this.tag;
        } else if (i9 == 6) {
            while (this.pos < this.limit && !this.source.exhausted()) {
                int internalReadVarint32 = internalReadVarint32();
                if (internalReadVarint32 != 0) {
                    int i10 = internalReadVarint32 >> 3;
                    this.tag = i10;
                    int i11 = internalReadVarint32 & 7;
                    if (i11 == 0) {
                        this.nextFieldEncoding = FieldEncoding.VARINT;
                        this.state = 0;
                        return i10;
                    } else if (i11 == 1) {
                        this.nextFieldEncoding = FieldEncoding.FIXED64;
                        this.state = 1;
                        return i10;
                    } else if (i11 == 2) {
                        this.nextFieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                        this.state = 2;
                        int internalReadVarint322 = internalReadVarint32();
                        if (internalReadVarint322 >= 0) {
                            if (this.pushedLimit == -1) {
                                long j10 = this.limit;
                                this.pushedLimit = j10;
                                long j11 = this.pos + internalReadVarint322;
                                this.limit = j11;
                                if (j11 <= j10) {
                                    return this.tag;
                                }
                                throw new EOFException();
                            }
                            throw new IllegalStateException();
                        }
                        throw new ProtocolException("Negative length: " + internalReadVarint322);
                    } else if (i11 != 3) {
                        if (i11 != 4) {
                            if (i11 == 5) {
                                this.nextFieldEncoding = FieldEncoding.FIXED32;
                                this.state = 5;
                                return i10;
                            }
                            throw new ProtocolException("Unexpected field encoding: " + i11);
                        }
                        throw new ProtocolException("Unexpected end group");
                    } else {
                        skipGroup(i10);
                    }
                } else {
                    throw new ProtocolException("Unexpected tag 0");
                }
            }
            return -1;
        } else {
            throw new IllegalStateException("Unexpected call to nextTag()");
        }
    }

    public FieldEncoding peekFieldEncoding() {
        return this.nextFieldEncoding;
    }

    public ByteString readBytes() throws IOException {
        long beforeLengthDelimitedScalar = beforeLengthDelimitedScalar();
        this.source.require(beforeLengthDelimitedScalar);
        return this.source.readByteString(beforeLengthDelimitedScalar);
    }

    public int readFixed32() throws IOException {
        int i9 = this.state;
        if (i9 != 5 && i9 != 2) {
            throw new ProtocolException("Expected FIXED32 or LENGTH_DELIMITED but was " + this.state);
        }
        this.source.require(4L);
        this.pos += 4;
        int readIntLe = this.source.readIntLe();
        afterPackableScalar(5);
        return readIntLe;
    }

    public long readFixed64() throws IOException {
        int i9 = this.state;
        if (i9 != 1 && i9 != 2) {
            throw new ProtocolException("Expected FIXED64 or LENGTH_DELIMITED but was " + this.state);
        }
        this.source.require(8L);
        this.pos += 8;
        long readLongLe = this.source.readLongLe();
        afterPackableScalar(1);
        return readLongLe;
    }

    public String readString() throws IOException {
        long beforeLengthDelimitedScalar = beforeLengthDelimitedScalar();
        this.source.require(beforeLengthDelimitedScalar);
        return this.source.readUtf8(beforeLengthDelimitedScalar);
    }

    public int readVarint32() throws IOException {
        int i9 = this.state;
        if (i9 != 0 && i9 != 2) {
            throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.state);
        }
        int internalReadVarint32 = internalReadVarint32();
        afterPackableScalar(0);
        return internalReadVarint32;
    }

    public long readVarint64() throws IOException {
        byte readByte;
        int i9 = this.state;
        if (i9 != 0 && i9 != 2) {
            throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.state);
        }
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            this.source.require(1L);
            this.pos++;
            j10 |= (readByte & ByteCompanionObject.MAX_VALUE) << i10;
            if ((this.source.readByte() & ByteCompanionObject.MIN_VALUE) == 0) {
                afterPackableScalar(0);
                return j10;
            }
        }
        throw new ProtocolException("WireInput encountered a malformed varint");
    }

    public void skip() throws IOException {
        int i9 = this.state;
        if (i9 == 0) {
            readVarint64();
        } else if (i9 == 1) {
            readFixed64();
        } else if (i9 == 2) {
            this.source.skip(beforeLengthDelimitedScalar());
        } else if (i9 == 5) {
            readFixed32();
        } else {
            throw new IllegalStateException("Unexpected call to skip()");
        }
    }
}
