.class public Lorg/light/internal/relinker/elf/Section32Header;
.super Lorg/light/internal/relinker/elf/Elf$SectionHeader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/light/internal/relinker/elf/ElfParser;Lorg/light/internal/relinker/elf/Elf$Header;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/light/internal/relinker/elf/Elf$SectionHeader;-><init>()V

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget-boolean v1, p2, Lorg/light/internal/relinker/elf/Elf$Header;->bigEndian:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    iget-wide v1, p2, Lorg/light/internal/relinker/elf/Elf$Header;->shoff:J

    iget p2, p2, Lorg/light/internal/relinker/elf/Elf$Header;->shentsize:I

    mul-int p3, p3, p2

    int-to-long p2, p3

    add-long/2addr v1, p2

    const-wide/16 p2, 0x1c

    add-long/2addr v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lorg/light/internal/relinker/elf/ElfParser;->readWord(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/light/internal/relinker/elf/Elf$SectionHeader;->info:J

    return-void
.end method
