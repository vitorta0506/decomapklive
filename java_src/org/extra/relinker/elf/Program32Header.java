package org.extra.relinker.elf;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.extra.relinker.elf.Elf;
/* loaded from: classes7.dex */
public class Program32Header extends Elf.ProgramHeader {
    public Program32Header(ElfParser elfParser, Elf.Header header, long j10) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(header.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j11 = header.phoff + (j10 * header.phentsize);
        this.type = elfParser.readWord(allocate, j11);
        this.offset = elfParser.readWord(allocate, 4 + j11);
        this.vaddr = elfParser.readWord(allocate, 8 + j11);
        this.memsz = elfParser.readWord(allocate, j11 + 20);
    }
}
