package okio.internal;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;
import org.jetbrains.annotations.NotNull;
import org.light.utils.FileUtils;
@Metadata(d1 = {"\u0000j\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0017H\u0002\u001a\u001f\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0001H\u0002¢\u0006\u0002\u0010\u001b\u001a.\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 2\u0014\b\u0002\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020#0\"H\u0000\u001a\f\u0010$\u001a\u00020\u0015*\u00020%H\u0000\u001a\f\u0010&\u001a\u00020'*\u00020%H\u0002\u001a.\u0010(\u001a\u00020)*\u00020%2\u0006\u0010*\u001a\u00020\u00012\u0018\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020)0,H\u0002\u001a\u0014\u0010-\u001a\u00020.*\u00020%2\u0006\u0010/\u001a\u00020.H\u0000\u001a\u0018\u00100\u001a\u0004\u0018\u00010.*\u00020%2\b\u0010/\u001a\u0004\u0018\u00010.H\u0002\u001a\u0014\u00101\u001a\u00020'*\u00020%2\u0006\u00102\u001a\u00020'H\u0002\u001a\f\u00103\u001a\u00020)*\u00020%H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0018\u0010\u000e\u001a\u00020\u000f*\u00020\u00018BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u00064"}, d2 = {"BIT_FLAG_ENCRYPTED", "", "BIT_FLAG_UNSUPPORTED_MASK", "CENTRAL_FILE_HEADER_SIGNATURE", "COMPRESSION_METHOD_DEFLATED", "COMPRESSION_METHOD_STORED", "END_OF_CENTRAL_DIRECTORY_SIGNATURE", "HEADER_ID_EXTENDED_TIMESTAMP", "HEADER_ID_ZIP64_EXTENDED_INFO", "LOCAL_FILE_HEADER_SIGNATURE", "MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE", "", "ZIP64_EOCD_RECORD_SIGNATURE", "ZIP64_LOCATOR_SIGNATURE", "hex", "", "getHex", "(I)Ljava/lang/String;", "buildIndex", "", "Lokio/Path;", "Lokio/internal/ZipEntry;", "entries", "", "dosDateTimeToEpochMillis", "date", CrashHianalyticsData.TIME, "(II)Ljava/lang/Long;", "openZip", "Lokio/ZipFileSystem;", "zipPath", "fileSystem", "Lokio/FileSystem;", "predicate", "Lkotlin/Function1;", "", "readEntry", "Lokio/BufferedSource;", "readEocdRecord", "Lokio/internal/EocdRecord;", "readExtra", "", "extraSize", "block", "Lkotlin/Function2;", "readLocalHeader", "Lokio/FileMetadata;", "basicMetadata", "readOrSkipLocalHeader", "readZip64EocdRecord", "regularRecord", "skipLocalHeader", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class ZipKt {
    private static final int BIT_FLAG_ENCRYPTED = 1;
    private static final int BIT_FLAG_UNSUPPORTED_MASK = 1;
    private static final int CENTRAL_FILE_HEADER_SIGNATURE = 33639248;
    public static final int COMPRESSION_METHOD_DEFLATED = 8;
    public static final int COMPRESSION_METHOD_STORED = 0;
    private static final int END_OF_CENTRAL_DIRECTORY_SIGNATURE = 101010256;
    private static final int HEADER_ID_EXTENDED_TIMESTAMP = 21589;
    private static final int HEADER_ID_ZIP64_EXTENDED_INFO = 1;
    private static final int LOCAL_FILE_HEADER_SIGNATURE = 67324752;
    private static final long MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE = 4294967295L;
    private static final int ZIP64_EOCD_RECORD_SIGNATURE = 101075792;
    private static final int ZIP64_LOCATOR_SIGNATURE = 117853008;

    private static final Map<Path, ZipEntry> buildIndex(List<ZipEntry> list) {
        List<ZipEntry> sortedWith;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: okio.internal.ZipKt$buildIndex$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t10, T t11) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(((ZipEntry) t10).getCanonicalPath(), ((ZipEntry) t11).getCanonicalPath());
                return compareValues;
            }
        });
        for (ZipEntry zipEntry : sortedWith) {
            if (((ZipEntry) linkedHashMap.put(zipEntry.getCanonicalPath(), zipEntry)) == null) {
                while (true) {
                    Path parent = zipEntry.getCanonicalPath().parent();
                    if (parent != null) {
                        ZipEntry zipEntry2 = (ZipEntry) linkedHashMap.get(parent);
                        if (zipEntry2 != null) {
                            zipEntry2.getChildren().add(zipEntry.getCanonicalPath());
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(parent, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null);
                        linkedHashMap.put(parent, zipEntry3);
                        zipEntry3.getChildren().add(zipEntry.getCanonicalPath());
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static final Long dosDateTimeToEpochMillis(int i9, int i10) {
        if (i10 == -1) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(((i9 >> 9) & 127) + 1980, ((i9 >> 5) & 15) - 1, i9 & 31, (i10 >> 11) & 31, (i10 >> 5) & 63, (i10 & 31) << 1);
        return Long.valueOf(gregorianCalendar.getTime().getTime());
    }

    private static final String getHex(int i9) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(16);
        String num = Integer.toString(i9, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return Intrinsics.stringPlus("0x", num);
    }

    @NotNull
    public static final ZipFileSystem openZip(@NotNull Path zipPath, @NotNull FileSystem fileSystem, @NotNull Function1<? super ZipEntry, Boolean> predicate) throws IOException {
        int readIntLe;
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        FileHandle openReadOnly = fileSystem.openReadOnly(zipPath);
        long j10 = 0;
        try {
            BufferedSource buffer = Okio.buffer(FileHandle.source$default(openReadOnly, 0L, 1, null));
            int readIntLe2 = buffer.readIntLe();
            if (readIntLe2 != LOCAL_FILE_HEADER_SIGNATURE) {
                if (readIntLe2 == END_OF_CENTRAL_DIRECTORY_SIGNATURE) {
                    throw new IOException("unsupported zip: empty");
                }
                throw new IOException("not a zip: expected " + getHex(LOCAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(readIntLe2));
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(buffer, null);
            long size = openReadOnly.size() - 22;
            if (size >= 0) {
                long max = Math.max(size - 65536, 0L);
                while (true) {
                    BufferedSource buffer2 = Okio.buffer(openReadOnly.source(size));
                    if (buffer2.readIntLe() == END_OF_CENTRAL_DIRECTORY_SIGNATURE) {
                        EocdRecord readEocdRecord = readEocdRecord(buffer2);
                        String readUtf8 = buffer2.readUtf8(readEocdRecord.getCommentByteCount());
                        buffer2.close();
                        long j11 = size - 20;
                        if (j11 > 0) {
                            BufferedSource buffer3 = Okio.buffer(openReadOnly.source(j11));
                            if (buffer3.readIntLe() == ZIP64_LOCATOR_SIGNATURE) {
                                int readIntLe3 = buffer3.readIntLe();
                                long readLongLe = buffer3.readLongLe();
                                if (buffer3.readIntLe() == 1 && readIntLe3 == 0) {
                                    BufferedSource buffer4 = Okio.buffer(openReadOnly.source(readLongLe));
                                    if (buffer4.readIntLe() == ZIP64_EOCD_RECORD_SIGNATURE) {
                                        EocdRecord readZip64EocdRecord = readZip64EocdRecord(buffer4, readEocdRecord);
                                        Unit unit2 = Unit.INSTANCE;
                                        CloseableKt.closeFinally(buffer4, null);
                                        readEocdRecord = readZip64EocdRecord;
                                    } else {
                                        throw new IOException("bad zip: expected " + getHex(ZIP64_EOCD_RECORD_SIGNATURE) + " but was " + getHex(readIntLe));
                                    }
                                } else {
                                    throw new IOException("unsupported zip: spanned");
                                }
                            }
                            Unit unit3 = Unit.INSTANCE;
                            CloseableKt.closeFinally(buffer3, null);
                        }
                        ArrayList arrayList = new ArrayList();
                        BufferedSource buffer5 = Okio.buffer(openReadOnly.source(readEocdRecord.getCentralDirectoryOffset()));
                        long entryCount = readEocdRecord.getEntryCount();
                        if (0 < entryCount) {
                            do {
                                j10++;
                                ZipEntry readEntry = readEntry(buffer5);
                                if (readEntry.getOffset() < readEocdRecord.getCentralDirectoryOffset()) {
                                    if (predicate.invoke(readEntry).booleanValue()) {
                                        arrayList.add(readEntry);
                                    }
                                } else {
                                    throw new IOException("bad zip: local file header offset >= central directory offset");
                                }
                            } while (j10 < entryCount);
                        }
                        Unit unit4 = Unit.INSTANCE;
                        CloseableKt.closeFinally(buffer5, null);
                        ZipFileSystem zipFileSystem = new ZipFileSystem(zipPath, fileSystem, buildIndex(arrayList), readUtf8);
                        CloseableKt.closeFinally(openReadOnly, null);
                        return zipFileSystem;
                    }
                    buffer2.close();
                    size--;
                    if (size < max) {
                        throw new IOException("not a zip: end of central directory signature not found");
                    }
                }
            } else {
                throw new IOException(Intrinsics.stringPlus("not a zip: size=", Long.valueOf(openReadOnly.size())));
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.closeFinally(openReadOnly, th2);
                throw th3;
            }
        }
    }

    public static /* synthetic */ ZipFileSystem openZip$default(Path path, FileSystem fileSystem, Function1 function1, int i9, Object obj) throws IOException {
        if ((i9 & 4) != 0) {
            function1 = new Function1<ZipEntry, Boolean>() { // from class: okio.internal.ZipKt$openZip$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull ZipEntry it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.TRUE;
                }
            };
        }
        return openZip(path, fileSystem, function1);
    }

    @NotNull
    public static final ZipEntry readEntry(@NotNull final BufferedSource bufferedSource) throws IOException {
        int readIntLe;
        boolean contains$default;
        int i9;
        Long l10;
        long j10;
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        if (bufferedSource.readIntLe() == CENTRAL_FILE_HEADER_SIGNATURE) {
            bufferedSource.skip(4L);
            int readShortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
            if ((readShortLe & 1) == 0) {
                int readShortLe2 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                Long dosDateTimeToEpochMillis = dosDateTimeToEpochMillis(bufferedSource.readShortLe() & UShort.MAX_VALUE, bufferedSource.readShortLe() & UShort.MAX_VALUE);
                long readIntLe2 = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                final Ref.LongRef longRef = new Ref.LongRef();
                longRef.element = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                final Ref.LongRef longRef2 = new Ref.LongRef();
                longRef2.element = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                int readShortLe3 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                int readShortLe4 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                int readShortLe5 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                bufferedSource.skip(8L);
                final Ref.LongRef longRef3 = new Ref.LongRef();
                longRef3.element = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                String readUtf8 = bufferedSource.readUtf8(readShortLe3);
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) readUtf8, (char) 0, false, 2, (Object) null);
                if (!contains$default) {
                    if (longRef2.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
                        j10 = 8 + 0;
                        i9 = readShortLe2;
                        l10 = dosDateTimeToEpochMillis;
                    } else {
                        i9 = readShortLe2;
                        l10 = dosDateTimeToEpochMillis;
                        j10 = 0;
                    }
                    if (longRef.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
                        j10 += 8;
                    }
                    if (longRef3.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
                        j10 += 8;
                    }
                    final long j11 = j10;
                    final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                    readExtra(bufferedSource, readShortLe4, new Function2<Integer, Long, Unit>() { // from class: okio.internal.ZipKt$readEntry$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        /* renamed from: invoke */
                        public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, Long l11) {
                            invoke(num.intValue(), l11.longValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i10, long j12) {
                            if (i10 == 1) {
                                Ref.BooleanRef booleanRef2 = Ref.BooleanRef.this;
                                if (!booleanRef2.element) {
                                    booleanRef2.element = true;
                                    if (j12 >= j11) {
                                        Ref.LongRef longRef4 = longRef2;
                                        long j13 = longRef4.element;
                                        if (j13 == 4294967295L) {
                                            j13 = bufferedSource.readLongLe();
                                        }
                                        longRef4.element = j13;
                                        Ref.LongRef longRef5 = longRef;
                                        longRef5.element = longRef5.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
                                        Ref.LongRef longRef6 = longRef3;
                                        longRef6.element = longRef6.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
                                        return;
                                    }
                                    throw new IOException("bad zip: zip64 extra too short");
                                }
                                throw new IOException("bad zip: zip64 extra repeated");
                            }
                        }
                    });
                    if (j11 > 0 && !booleanRef.element) {
                        throw new IOException("bad zip: zip64 extra required but absent");
                    }
                    String readUtf82 = bufferedSource.readUtf8(readShortLe5);
                    Path resolve = Path.Companion.get$default(Path.Companion, FileUtils.RES_PREFIX_STORAGE, false, 1, (Object) null).resolve(readUtf8);
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(readUtf8, FileUtils.RES_PREFIX_STORAGE, false, 2, null);
                    return new ZipEntry(resolve, endsWith$default, readUtf82, readIntLe2, longRef.element, longRef2.element, i9, l10, longRef3.element);
                }
                throw new IOException("bad zip: filename contains 0x00");
            }
            throw new IOException(Intrinsics.stringPlus("unsupported zip: general purpose bit flag=", getHex(readShortLe)));
        }
        throw new IOException("bad zip: expected " + getHex(CENTRAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(readIntLe));
    }

    private static final EocdRecord readEocdRecord(BufferedSource bufferedSource) throws IOException {
        int readShortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        int readShortLe2 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        long readShortLe3 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        if (readShortLe3 == (bufferedSource.readShortLe() & UShort.MAX_VALUE) && readShortLe == 0 && readShortLe2 == 0) {
            bufferedSource.skip(4L);
            return new EocdRecord(readShortLe3, MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE & bufferedSource.readIntLe(), bufferedSource.readShortLe() & UShort.MAX_VALUE);
        }
        throw new IOException("unsupported zip: spanned");
    }

    private static final void readExtra(BufferedSource bufferedSource, int i9, Function2<? super Integer, ? super Long, Unit> function2) {
        long j10 = i9;
        while (j10 != 0) {
            if (j10 >= 4) {
                int readShortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                long readShortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
                long j11 = j10 - 4;
                if (j11 >= readShortLe2) {
                    bufferedSource.require(readShortLe2);
                    long size = bufferedSource.getBuffer().size();
                    function2.mo1invoke(Integer.valueOf(readShortLe), Long.valueOf(readShortLe2));
                    long size2 = (bufferedSource.getBuffer().size() + readShortLe2) - size;
                    int i10 = (size2 > 0L ? 1 : (size2 == 0L ? 0 : -1));
                    if (i10 < 0) {
                        throw new IOException(Intrinsics.stringPlus("unsupported zip: too many bytes processed for ", Integer.valueOf(readShortLe)));
                    }
                    if (i10 > 0) {
                        bufferedSource.getBuffer().skip(size2);
                    }
                    j10 = j11 - readShortLe2;
                } else {
                    throw new IOException("bad zip: truncated value in extra field");
                }
            } else {
                throw new IOException("bad zip: truncated header in extra field");
            }
        }
    }

    @NotNull
    public static final FileMetadata readLocalHeader(@NotNull BufferedSource bufferedSource, @NotNull FileMetadata basicMetadata) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(basicMetadata, "basicMetadata");
        FileMetadata readOrSkipLocalHeader = readOrSkipLocalHeader(bufferedSource, basicMetadata);
        Intrinsics.checkNotNull(readOrSkipLocalHeader);
        return readOrSkipLocalHeader;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final FileMetadata readOrSkipLocalHeader(final BufferedSource bufferedSource, FileMetadata fileMetadata) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = fileMetadata == null ? 0 : fileMetadata.getLastModifiedAtMillis();
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        int readIntLe = bufferedSource.readIntLe();
        if (readIntLe == LOCAL_FILE_HEADER_SIGNATURE) {
            bufferedSource.skip(2L);
            int readShortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
            if ((readShortLe & 1) == 0) {
                bufferedSource.skip(18L);
                long readShortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
                int readShortLe3 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                bufferedSource.skip(readShortLe2);
                if (fileMetadata == null) {
                    bufferedSource.skip(readShortLe3);
                    return null;
                }
                readExtra(bufferedSource, readShortLe3, new Function2<Integer, Long, Unit>() { // from class: okio.internal.ZipKt$readOrSkipLocalHeader$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    /* renamed from: invoke */
                    public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, Long l10) {
                        invoke(num.intValue(), l10.longValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Long] */
                    /* JADX WARN: Type inference failed for: r0v17, types: [T, java.lang.Long] */
                    /* JADX WARN: Type inference failed for: r10v3, types: [T, java.lang.Long] */
                    public final void invoke(int i9, long j10) {
                        if (i9 == 21589) {
                            if (j10 >= 1) {
                                int readByte = BufferedSource.this.readByte() & UByte.MAX_VALUE;
                                boolean z10 = (readByte & 1) == 1;
                                boolean z11 = (readByte & 2) == 2;
                                boolean z12 = (readByte & 4) == 4;
                                BufferedSource bufferedSource2 = BufferedSource.this;
                                long j11 = z10 ? 5L : 1L;
                                if (z11) {
                                    j11 += 4;
                                }
                                if (z12) {
                                    j11 += 4;
                                }
                                if (j10 < j11) {
                                    throw new IOException("bad zip: extended timestamp extra too short");
                                }
                                if (z10) {
                                    objectRef.element = Long.valueOf(bufferedSource2.readIntLe() * 1000);
                                }
                                if (z11) {
                                    objectRef2.element = Long.valueOf(BufferedSource.this.readIntLe() * 1000);
                                }
                                if (z12) {
                                    objectRef3.element = Long.valueOf(BufferedSource.this.readIntLe() * 1000);
                                    return;
                                }
                                return;
                            }
                            throw new IOException("bad zip: extended timestamp extra too short");
                        }
                    }
                });
                return new FileMetadata(fileMetadata.isRegularFile(), fileMetadata.isDirectory(), null, fileMetadata.getSize(), (Long) objectRef3.element, (Long) objectRef.element, (Long) objectRef2.element, null, 128, null);
            }
            throw new IOException(Intrinsics.stringPlus("unsupported zip: general purpose bit flag=", getHex(readShortLe)));
        }
        throw new IOException("bad zip: expected " + getHex(LOCAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(readIntLe));
    }

    private static final EocdRecord readZip64EocdRecord(BufferedSource bufferedSource, EocdRecord eocdRecord) throws IOException {
        bufferedSource.skip(12L);
        int readIntLe = bufferedSource.readIntLe();
        int readIntLe2 = bufferedSource.readIntLe();
        long readLongLe = bufferedSource.readLongLe();
        if (readLongLe == bufferedSource.readLongLe() && readIntLe == 0 && readIntLe2 == 0) {
            bufferedSource.skip(8L);
            return new EocdRecord(readLongLe, bufferedSource.readLongLe(), eocdRecord.getCommentByteCount());
        }
        throw new IOException("unsupported zip: spanned");
    }

    public static final void skipLocalHeader(@NotNull BufferedSource bufferedSource) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        readOrSkipLocalHeader(bufferedSource, null);
    }
}
