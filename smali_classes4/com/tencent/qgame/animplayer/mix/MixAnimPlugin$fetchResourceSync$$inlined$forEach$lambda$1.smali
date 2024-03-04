.class final Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->fetchResourceSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/graphics/Bitmap;",
        "invoke",
        "com/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $src:Lcom/tencent/qgame/animplayer/mix/Src;

.field final synthetic this$0:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/mix/Src;Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$1;->$src:Lcom/tencent/qgame/animplayer/mix/Src;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$1;->this$0:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$1;->invoke(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$1;->$src:Lcom/tencent/qgame/animplayer/mix/Src;

    const-string v1, "fetch image "

    const-string v2, "AnimPlayer.MixAnimPlugin"

    if-nez p1, :cond_0

    .line 3
    sget-object v3, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$1;->$src:Lcom/tencent/qgame/animplayer/mix/Src;

    invoke-virtual {v5}, Lcom/tencent/qgame/animplayer/mix/Src;->getSrcId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " bitmap return null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v3, Lcom/tencent/qgame/animplayer/util/BitmapUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/BitmapUtil;

    invoke-virtual {v3}, Lcom/tencent/qgame/animplayer/util/BitmapUtil;->createEmptyBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 5
    :goto_0
    invoke-virtual {v0, v3}, Lcom/tencent/qgame/animplayer/mix/Src;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$1;->$src:Lcom/tencent/qgame/animplayer/mix/Src;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/Src;->getSrcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " finish bitmap is "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$1;->this$0:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-static {p1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->access$resultCall(Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;)V

    return-void
.end method
