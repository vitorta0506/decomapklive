.class public abstract Lorg/light/internal/relinker/elf/Elf$ProgramHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/internal/relinker/elf/Elf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProgramHeader"
.end annotation


# static fields
.field public static final PT_DYNAMIC:I = 0x2

.field public static final PT_LOAD:I = 0x1


# instance fields
.field public memsz:J

.field public offset:J

.field public type:J

.field public vaddr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
