.class public final Lcom/tencent/qgame/animplayer/mix/Resource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u0010R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/mix/Resource;",
        "",
        "src",
        "Lcom/tencent/qgame/animplayer/mix/Src;",
        "(Lcom/tencent/qgame/animplayer/mix/Src;)V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "loadType",
        "Lcom/tencent/qgame/animplayer/mix/Src$LoadType;",
        "getLoadType",
        "()Lcom/tencent/qgame/animplayer/mix/Src$LoadType;",
        "setLoadType",
        "(Lcom/tencent/qgame/animplayer/mix/Src$LoadType;)V",
        "tag",
        "getTag",
        "setTag",
        "type",
        "Lcom/tencent/qgame/animplayer/mix/Src$SrcType;",
        "getType",
        "()Lcom/tencent/qgame/animplayer/mix/Src$SrcType;",
        "setType",
        "(Lcom/tencent/qgame/animplayer/mix/Src$SrcType;)V",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loadType:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/qgame/animplayer/mix/Src;)V
    .locals 2
    .param p1    # Lcom/tencent/qgame/animplayer/mix/Src;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->id:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;->UNKNOWN:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->type:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    .line 4
    sget-object v1, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->UNKNOWN:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->loadType:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    .line 5
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->tag:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getSrcId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->id:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getSrcType()Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->type:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    .line 8
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getLoadType()Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->loadType:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    .line 9
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getSrcTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->tag:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoadType()Lcom/tencent/qgame/animplayer/mix/Src$LoadType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->loadType:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/tencent/qgame/animplayer/mix/Src$SrcType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->type:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    return-object v0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->id:Ljava/lang/String;

    return-void
.end method

.method public final setLoadType(Lcom/tencent/qgame/animplayer/mix/Src$LoadType;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/mix/Src$LoadType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->loadType:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->tag:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lcom/tencent/qgame/animplayer/mix/Src$SrcType;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/mix/Src$SrcType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->type:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    return-void
.end method
