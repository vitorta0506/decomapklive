.class public abstract Lorg/light/internal/relinker/elf/Elf$DynamicStructure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/internal/relinker/elf/Elf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DynamicStructure"
.end annotation


# static fields
.field public static final DT_NEEDED:I = 0x1

.field public static final DT_NULL:I = 0x0

.field public static final DT_STRTAB:I = 0x5


# instance fields
.field public tag:J

.field public val:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
