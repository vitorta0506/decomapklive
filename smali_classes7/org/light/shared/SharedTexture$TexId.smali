.class Lorg/light/shared/SharedTexture$TexId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/shared/SharedTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TexId"
.end annotation


# instance fields
.field public refCnt:Ljava/util/concurrent/atomic/AtomicLong;

.field public texId:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/atomic/AtomicLong;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/light/shared/SharedTexture$TexId;->texId:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 4
    iput p1, p0, Lorg/light/shared/SharedTexture$TexId;->texId:I

    .line 5
    iput-object p2, p0, Lorg/light/shared/SharedTexture$TexId;->refCnt:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method
