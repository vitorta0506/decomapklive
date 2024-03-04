package org.light.internal.relinker.elf;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.light.internal.relinker.elf.Elf;
/* loaded from: classes7.dex */
public class Section32Header extends Elf.SectionHeader {
    public Section32Header(ElfParser elfParser, Elf.Header header, int i9) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(header.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.info = elfParser.readWord(allocate, header.shoff + (i9 * header.shentsize) + 28);
    }
}
