package org.light.internal.relinker.elf;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.light.internal.relinker.elf.Elf;
/* loaded from: classes7.dex */
public class Dynamic64Structure extends Elf.DynamicStructure {
    public Dynamic64Structure(ElfParser elfParser, Elf.Header header, long j10, int i9) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(header.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j11 = j10 + (i9 * 16);
        this.tag = elfParser.readLong(allocate, j11);
        this.val = elfParser.readLong(allocate, j11 + 8);
    }
}
