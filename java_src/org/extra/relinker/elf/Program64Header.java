package org.extra.relinker.elf;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.extra.relinker.elf.Elf;
/* loaded from: classes7.dex */
public class Program64Header extends Elf.ProgramHeader {
    public Program64Header(ElfParser elfParser, Elf.Header header, long j10) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(header.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j11 = header.phoff + (j10 * header.phentsize);
        this.type = elfParser.readWord(allocate, j11);
        this.offset = elfParser.readLong(allocate, 8 + j11);
        this.vaddr = elfParser.readLong(allocate, 16 + j11);
        this.memsz = elfParser.readLong(allocate, j11 + 40);
    }
}
