package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.Typography;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.PeekSource;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Timeout;
import okio._UtilKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000j\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0080\b\u001a%\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0080\b\u001a\u001d\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0006H\u0080\b\u001a\u001d\u0010\r\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0006H\u0080\b\u001a\r\u0010\u000f\u001a\u00020\u0010*\u00020\u0002H\u0080\b\u001a-\u0010\u0011\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0080\b\u001a%\u0010\u0016\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0080\b\u001a\u001d\u0010\u0016\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\u0015\u0010\u001a\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u001bH\u0080\b\u001a\r\u0010\u001c\u001a\u00020\b*\u00020\u0002H\u0080\b\u001a\r\u0010\u001d\u001a\u00020\u0018*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u001d\u001a\u00020\u0018*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010\u001e\u001a\u00020\f*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u001e\u001a\u00020\f*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010\u001f\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\u0015\u0010 \u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0018H\u0080\b\u001a\u001d\u0010 \u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010!\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\r\u0010\"\u001a\u00020\u0014*\u00020\u0002H\u0080\b\u001a\r\u0010#\u001a\u00020\u0014*\u00020\u0002H\u0080\b\u001a\r\u0010$\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\r\u0010%\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\r\u0010&\u001a\u00020'*\u00020\u0002H\u0080\b\u001a\r\u0010(\u001a\u00020'*\u00020\u0002H\u0080\b\u001a\r\u0010)\u001a\u00020**\u00020\u0002H\u0080\b\u001a\u0015\u0010)\u001a\u00020**\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010+\u001a\u00020\u0014*\u00020\u0002H\u0080\b\u001a\u000f\u0010,\u001a\u0004\u0018\u00010**\u00020\u0002H\u0080\b\u001a\u0015\u0010-\u001a\u00020**\u00020\u00022\u0006\u0010.\u001a\u00020\u0006H\u0080\b\u001a\u0015\u0010/\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\u0015\u00100\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\u0015\u00101\u001a\u00020\u0014*\u00020\u00022\u0006\u00102\u001a\u000203H\u0080\b\u001a\u0015\u00104\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u00105\u001a\u000206*\u00020\u0002H\u0080\b\u001a\r\u00107\u001a\u00020**\u00020\u0002H\u0080\b¨\u00068"}, d2 = {"commonClose", "", "Lokio/RealBufferedSource;", "commonExhausted", "", "commonIndexOf", "", "b", "", "fromIndex", "toIndex", "bytes", "Lokio/ByteString;", "commonIndexOfElement", "targetBytes", "commonPeek", "Lokio/BufferedSource;", "commonRangeEquals", TypedValues.CycleType.S_WAVE_OFFSET, "bytesOffset", "", "byteCount", "commonRead", "sink", "", "Lokio/Buffer;", "commonReadAll", "Lokio/Sink;", "commonReadByte", "commonReadByteArray", "commonReadByteString", "commonReadDecimalLong", "commonReadFully", "commonReadHexadecimalUnsignedLong", "commonReadInt", "commonReadIntLe", "commonReadLong", "commonReadLongLe", "commonReadShort", "", "commonReadShortLe", "commonReadUtf8", "", "commonReadUtf8CodePoint", "commonReadUtf8Line", "commonReadUtf8LineStrict", "limit", "commonRequest", "commonRequire", "commonSelect", "options", "Lokio/Options;", "commonSkip", "commonTimeout", "Lokio/Timeout;", "commonToString", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class _RealBufferedSourceKt {
    public static final void commonClose(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (realBufferedSource.closed) {
            return;
        }
        realBufferedSource.closed = true;
        realBufferedSource.source.close();
        realBufferedSource.bufferField.clear();
    }

    public static final boolean commonExhausted(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (!realBufferedSource.closed) {
            return realBufferedSource.bufferField.exhausted() && realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final long commonIndexOf(@NotNull RealBufferedSource realBufferedSource, byte b10, long j10, long j11) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        boolean z10 = true;
        if (!realBufferedSource.closed) {
            if (!((0 > j10 || j10 > j11) ? false : false)) {
                throw new IllegalArgumentException(("fromIndex=" + j10 + " toIndex=" + j11).toString());
            }
            while (j10 < j11) {
                long indexOf = realBufferedSource.bufferField.indexOf(b10, j10, j11);
                if (indexOf == -1) {
                    long size = realBufferedSource.bufferField.size();
                    if (size >= j11 || realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                        break;
                    }
                    j10 = Math.max(j10, size);
                } else {
                    return indexOf;
                }
            }
            return -1L;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final long commonIndexOfElement(@NotNull RealBufferedSource realBufferedSource, @NotNull ByteString targetBytes, long j10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        if (!(!realBufferedSource.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long indexOfElement = realBufferedSource.bufferField.indexOfElement(targetBytes, j10);
            if (indexOfElement != -1) {
                return indexOfElement;
            }
            long size = realBufferedSource.bufferField.size();
            if (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, size);
        }
    }

    @NotNull
    public static final BufferedSource commonPeek(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        return Okio.buffer(new PeekSource(realBufferedSource));
    }

    public static final boolean commonRangeEquals(@NotNull RealBufferedSource realBufferedSource, long j10, @NotNull ByteString bytes, int i9, int i10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!realBufferedSource.closed) {
            if (j10 < 0 || i9 < 0 || i10 < 0 || bytes.size() - i9 < i10) {
                return false;
            }
            if (i10 > 0) {
                int i11 = 0;
                while (true) {
                    int i12 = i11 + 1;
                    long j11 = i11 + j10;
                    if (!realBufferedSource.request(1 + j11) || realBufferedSource.bufferField.getByte(j11) != bytes.getByte(i11 + i9)) {
                        return false;
                    }
                    if (i12 >= i10) {
                        break;
                    }
                    i11 = i12;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final long commonRead(@NotNull RealBufferedSource realBufferedSource, @NotNull Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j10 >= 0) {
            if (true ^ realBufferedSource.closed) {
                if (realBufferedSource.bufferField.size() == 0 && realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                    return -1L;
                }
                return realBufferedSource.bufferField.read(sink, Math.min(j10, realBufferedSource.bufferField.size()));
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j10)).toString());
    }

    public static final long commonReadAll(@NotNull RealBufferedSource realBufferedSource, @NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j10 = 0;
        while (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) != -1) {
            long completeSegmentByteCount = realBufferedSource.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                j10 += completeSegmentByteCount;
                sink.write(realBufferedSource.bufferField, completeSegmentByteCount);
            }
        }
        if (realBufferedSource.bufferField.size() > 0) {
            long size = j10 + realBufferedSource.bufferField.size();
            Buffer buffer = realBufferedSource.bufferField;
            sink.write(buffer, buffer.size());
            return size;
        }
        return j10;
    }

    public static final byte commonReadByte(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        return realBufferedSource.bufferField.readByte();
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull RealBufferedSource realBufferedSource, long j10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(j10);
        return realBufferedSource.bufferField.readByteArray(j10);
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull RealBufferedSource realBufferedSource, long j10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(j10);
        return realBufferedSource.bufferField.readByteString(j10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r9 == 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
        r0 = kotlin.text.CharsKt__CharJVMKt.checkRadix(16);
        r0 = kotlin.text.CharsKt__CharJVMKt.checkRadix(r0);
        r0 = java.lang.Integer.toString(r8, r0);
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, "java.lang.Integer.toStri…(this, checkRadix(radix))");
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
        throw new java.lang.NumberFormatException(kotlin.jvm.internal.Intrinsics.stringPlus("Expected a digit or '-' but was 0x", r0));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long commonReadDecimalLong(@org.jetbrains.annotations.NotNull okio.RealBufferedSource r10) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            r0 = 1
            r10.require(r0)
            r2 = 0
            r4 = r2
        Ld:
            long r6 = r4 + r0
            boolean r8 = r10.request(r6)
            if (r8 == 0) goto L53
            okio.Buffer r8 = r10.bufferField
            byte r8 = r8.getByte(r4)
            r9 = 48
            byte r9 = (byte) r9
            if (r8 < r9) goto L25
            r9 = 57
            byte r9 = (byte) r9
            if (r8 <= r9) goto L2f
        L25:
            int r9 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r9 != 0) goto L31
            r4 = 45
            byte r4 = (byte) r4
            if (r8 == r4) goto L2f
            goto L31
        L2f:
            r4 = r6
            goto Ld
        L31:
            if (r9 == 0) goto L34
            goto L53
        L34:
            java.lang.NumberFormatException r10 = new java.lang.NumberFormatException
            r0 = 16
            int r0 = kotlin.text.CharsKt.checkRadix(r0)
            int r0 = kotlin.text.CharsKt.checkRadix(r0)
            java.lang.String r0 = java.lang.Integer.toString(r8, r0)
            java.lang.String r1 = "java.lang.Integer.toStri…(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = "Expected a digit or '-' but was 0x"
            java.lang.String r0 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r0)
            r10.<init>(r0)
            throw r10
        L53:
            okio.Buffer r10 = r10.bufferField
            long r0 = r10.readDecimalLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._RealBufferedSourceKt.commonReadDecimalLong(okio.RealBufferedSource):long");
    }

    public static final void commonReadFully(@NotNull RealBufferedSource realBufferedSource, @NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            realBufferedSource.require(sink.length);
            realBufferedSource.bufferField.readFully(sink);
        } catch (EOFException e10) {
            int i9 = 0;
            while (realBufferedSource.bufferField.size() > 0) {
                Buffer buffer = realBufferedSource.bufferField;
                int read = buffer.read(sink, i9, (int) buffer.size());
                if (read == -1) {
                    throw new AssertionError();
                }
                i9 += read;
            }
            throw e10;
        }
    }

    public static final long commonReadHexadecimalUnsignedLong(@NotNull RealBufferedSource realBufferedSource) {
        byte b10;
        int checkRadix;
        int checkRadix2;
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        int i9 = 0;
        while (true) {
            int i10 = i9 + 1;
            if (!realBufferedSource.request(i10)) {
                break;
            }
            b10 = realBufferedSource.bufferField.getByte(i9);
            if ((b10 < ((byte) 48) || b10 > ((byte) 57)) && ((b10 < ((byte) 97) || b10 > ((byte) 102)) && (b10 < ((byte) 65) || b10 > ((byte) 70)))) {
                break;
            }
            i9 = i10;
        }
        if (i9 == 0) {
            checkRadix = CharsKt__CharJVMKt.checkRadix(16);
            checkRadix2 = CharsKt__CharJVMKt.checkRadix(checkRadix);
            String num = Integer.toString(b10, checkRadix2);
            Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            throw new NumberFormatException(Intrinsics.stringPlus("Expected leading [0-9a-fA-F] character but was 0x", num));
        }
        return realBufferedSource.bufferField.readHexadecimalUnsignedLong();
    }

    public static final int commonReadInt(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(4L);
        return realBufferedSource.bufferField.readInt();
    }

    public static final int commonReadIntLe(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(4L);
        return realBufferedSource.bufferField.readIntLe();
    }

    public static final long commonReadLong(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(8L);
        return realBufferedSource.bufferField.readLong();
    }

    public static final long commonReadLongLe(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(8L);
        return realBufferedSource.bufferField.readLongLe();
    }

    public static final short commonReadShort(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(2L);
        return realBufferedSource.bufferField.readShort();
    }

    public static final short commonReadShortLe(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(2L);
        return realBufferedSource.bufferField.readShortLe();
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull RealBufferedSource realBufferedSource, long j10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(j10);
        return realBufferedSource.bufferField.readUtf8(j10);
    }

    public static final int commonReadUtf8CodePoint(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        byte b10 = realBufferedSource.bufferField.getByte(0L);
        if ((b10 & 224) == 192) {
            realBufferedSource.require(2L);
        } else if ((b10 & 240) == 224) {
            realBufferedSource.require(3L);
        } else if ((b10 & 248) == 240) {
            realBufferedSource.require(4L);
        }
        return realBufferedSource.bufferField.readUtf8CodePoint();
    }

    @Nullable
    public static final String commonReadUtf8Line(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        long indexOf = realBufferedSource.indexOf((byte) 10);
        if (indexOf == -1) {
            if (realBufferedSource.bufferField.size() != 0) {
                return realBufferedSource.readUtf8(realBufferedSource.bufferField.size());
            }
            return null;
        }
        return _BufferKt.readUtf8Line(realBufferedSource.bufferField, indexOf);
    }

    @NotNull
    public static final String commonReadUtf8LineStrict(@NotNull RealBufferedSource realBufferedSource, long j10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (j10 >= 0) {
            long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
            byte b10 = (byte) 10;
            long indexOf = realBufferedSource.indexOf(b10, 0L, j11);
            if (indexOf != -1) {
                return _BufferKt.readUtf8Line(realBufferedSource.bufferField, indexOf);
            }
            if (j11 < Long.MAX_VALUE && realBufferedSource.request(j11) && realBufferedSource.bufferField.getByte(j11 - 1) == ((byte) 13) && realBufferedSource.request(1 + j11) && realBufferedSource.bufferField.getByte(j11) == b10) {
                return _BufferKt.readUtf8Line(realBufferedSource.bufferField, j11);
            }
            Buffer buffer = new Buffer();
            Buffer buffer2 = realBufferedSource.bufferField;
            buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(realBufferedSource.bufferField.size(), j10) + " content=" + buffer.readByteString().hex() + Typography.ellipsis);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("limit < 0: ", Long.valueOf(j10)).toString());
    }

    public static final boolean commonRequest(@NotNull RealBufferedSource realBufferedSource, long j10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (j10 >= 0) {
            if (!realBufferedSource.closed) {
                while (realBufferedSource.bufferField.size() < j10) {
                    if (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                        return false;
                    }
                }
                return true;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j10)).toString());
    }

    public static final void commonRequire(@NotNull RealBufferedSource realBufferedSource, long j10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (!realBufferedSource.request(j10)) {
            throw new EOFException();
        }
    }

    public static final int commonSelect(@NotNull RealBufferedSource realBufferedSource, @NotNull Options options) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        if (!realBufferedSource.closed) {
            do {
                int selectPrefix = _BufferKt.selectPrefix(realBufferedSource.bufferField, options, true);
                if (selectPrefix != -2) {
                    if (selectPrefix != -1) {
                        realBufferedSource.bufferField.skip(options.getByteStrings$okio()[selectPrefix].size());
                        return selectPrefix;
                    }
                    return -1;
                }
            } while (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) != -1);
            return -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final void commonSkip(@NotNull RealBufferedSource realBufferedSource, long j10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (!(!realBufferedSource.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j10 > 0) {
            if (realBufferedSource.bufferField.size() == 0 && realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j10, realBufferedSource.bufferField.size());
            realBufferedSource.bufferField.skip(min);
            j10 -= min;
        }
    }

    @NotNull
    public static final Timeout commonTimeout(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        return realBufferedSource.source.timeout();
    }

    @NotNull
    public static final String commonToString(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        return "buffer(" + realBufferedSource.source + ')';
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readByteArray();
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readByteString();
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readUtf8();
    }

    public static final void commonReadFully(@NotNull RealBufferedSource realBufferedSource, @NotNull Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            realBufferedSource.require(j10);
            realBufferedSource.bufferField.readFully(sink, j10);
        } catch (EOFException e10) {
            sink.writeAll(realBufferedSource.bufferField);
            throw e10;
        }
    }

    public static final long commonIndexOf(@NotNull RealBufferedSource realBufferedSource, @NotNull ByteString bytes, long j10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!(!realBufferedSource.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long indexOf = realBufferedSource.bufferField.indexOf(bytes, j10);
            if (indexOf != -1) {
                return indexOf;
            }
            long size = realBufferedSource.bufferField.size();
            if (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, (size - bytes.size()) + 1);
        }
    }

    public static final int commonRead(@NotNull RealBufferedSource realBufferedSource, @NotNull byte[] sink, int i9, int i10) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j10 = i10;
        _UtilKt.checkOffsetAndCount(sink.length, i9, j10);
        if (realBufferedSource.bufferField.size() == 0 && realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
            return -1;
        }
        return realBufferedSource.bufferField.read(sink, i9, (int) Math.min(j10, realBufferedSource.bufferField.size()));
    }
}
