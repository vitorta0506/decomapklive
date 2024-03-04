package org.extra.relinker.elf;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.extra.relinker.elf.Elf;
/* loaded from: classes7.dex */
public class Dynamic32Structure extends Elf.DynamicStructure {
    public Dynamic32Structure(ElfParser elfParser, Elf.Header header, long j10, int i9) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(header.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j11 = j10 + (i9 * 8);
        this.tag = elfParser.readWord(allocate, j11);
        this.val = elfParser.readWord(allocate, j11 + 4);
    }
}
