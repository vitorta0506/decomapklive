.class public abstract Lorg/light/internal/relinker/elf/Elf$Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/internal/relinker/elf/Elf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Header"
.end annotation


# static fields
.field public static final ELFCLASS32:I = 0x1

.field public static final ELFCLASS64:I = 0x2

.field public static final ELFDATA2MSB:I = 0x2


# instance fields
.field public bigEndian:Z

.field public phentsize:I

.field public phnum:I

.field public phoff:J

.field public shentsize:I

.field public shnum:I

.field public shoff:J

.field public shstrndx:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDynamicStructure(JI)Lorg/light/internal/relinker/elf/Elf$DynamicStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getProgramHeader(J)Lorg/light/internal/relinker/elf/Elf$ProgramHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSectionHeader(I)Lorg/light/internal/relinker/elf/Elf$SectionHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
