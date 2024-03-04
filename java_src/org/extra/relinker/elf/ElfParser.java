package org.extra.relinker.elf;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.UByte;
import kotlin.UShort;
import okhttp3.internal.ws.WebSocketProtocol;
import org.extra.relinker.elf.Elf;
/* loaded from: classes7.dex */
public class ElfParser implements Closeable, Elf {
    private final int MAGIC = 1179403647;
    private final FileChannel channel;

    public ElfParser(File file) throws FileNotFoundException {
        if (file != null && file.exists()) {
            this.channel = new FileInputStream(file).getChannel();
            return;
        }
        throw new IllegalArgumentException("File is null or does not exist");
    }

    private long offsetFromVma(Elf.Header header, long j10, long j11) throws IOException {
        for (long j12 = 0; j12 < j10; j12++) {
            Elf.ProgramHeader programHeader = header.getProgramHeader(j12);
            if (programHeader.type == 1) {
                long j13 = programHeader.vaddr;
                if (j13 <= j11 && j11 <= programHeader.memsz + j13) {
                    return (j11 - j13) + programHeader.offset;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.channel.close();
    }

    public Elf.Header parseHeader() throws IOException {
        this.channel.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (readWord(allocate, 0L) == 1179403647) {
            short readByte = readByte(allocate, 4L);
            boolean z10 = readByte(allocate, 5L) == 2;
            if (readByte == 1) {
                return new Elf32Header(z10, this);
            }
            if (readByte == 2) {
                return new Elf64Header(z10, this);
            }
            throw new IllegalStateException("Invalid class type!");
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    public List<String> parseNeededDependencies() throws IOException {
        long j10;
        this.channel.position(0L);
        ArrayList arrayList = new ArrayList();
        Elf.Header parseHeader = parseHeader();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(parseHeader.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j11 = parseHeader.phnum;
        int i9 = 0;
        if (j11 == WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            j11 = parseHeader.getSectionHeader(0).info;
        }
        long j12 = 0;
        while (true) {
            if (j12 >= j11) {
                j10 = 0;
                break;
            }
            Elf.ProgramHeader programHeader = parseHeader.getProgramHeader(j12);
            if (programHeader.type == 2) {
                j10 = programHeader.offset;
                break;
            }
            j12++;
        }
        if (j10 == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList<Long> arrayList2 = new ArrayList();
        long j13 = 0;
        while (true) {
            Elf.DynamicStructure dynamicStructure = parseHeader.getDynamicStructure(j10, i9);
            long j14 = j10;
            long j15 = dynamicStructure.tag;
            if (j15 == 1) {
                arrayList2.add(Long.valueOf(dynamicStructure.val));
            } else if (j15 == 5) {
                j13 = dynamicStructure.val;
            }
            i9++;
            if (dynamicStructure.tag == 0) {
                break;
            }
            j10 = j14;
        }
        if (j13 != 0) {
            long offsetFromVma = offsetFromVma(parseHeader, j11, j13);
            for (Long l10 : arrayList2) {
                arrayList.add(readString(allocate, l10.longValue() + offsetFromVma));
            }
            return arrayList;
        }
        throw new IllegalStateException("String table offset not found!");
    }

    protected void read(ByteBuffer byteBuffer, long j10, int i9) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i9);
        long j11 = 0;
        while (j11 < i9) {
            int read = this.channel.read(byteBuffer, j10 + j11);
            if (read == -1) {
                throw new EOFException();
            }
            j11 += read;
        }
        byteBuffer.position(0);
    }

    protected short readByte(ByteBuffer byteBuffer, long j10) throws IOException {
        read(byteBuffer, j10, 1);
        return (short) (byteBuffer.get() & UByte.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int readHalf(ByteBuffer byteBuffer, long j10) throws IOException {
        read(byteBuffer, j10, 2);
        return byteBuffer.getShort() & UShort.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long readLong(ByteBuffer byteBuffer, long j10) throws IOException {
        read(byteBuffer, j10, 8);
        return byteBuffer.getLong();
    }

    protected String readString(ByteBuffer byteBuffer, long j10) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            long j11 = 1 + j10;
            short readByte = readByte(byteBuffer, j10);
            if (readByte != 0) {
                sb2.append((char) readByte);
                j10 = j11;
            } else {
                return sb2.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long readWord(ByteBuffer byteBuffer, long j10) throws IOException {
        read(byteBuffer, j10, 4);
        return byteBuffer.getInt() & 4294967295L;
    }
}
