.class final Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$2;
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
        "Ljava/lang/String;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke",
        "com/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$2$2"
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

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$2;->$src:Lcom/tencent/qgame/animplayer/mix/Src;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$2;->this$0:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$2;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$2;->$src:Lcom/tencent/qgame/animplayer/mix/Src;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/mix/Src;->setTxt(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch text "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$2;->$src:Lcom/tencent/qgame/animplayer/mix/Src;

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/mix/Src;->getSrcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finish txt is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AnimPlayer.MixAnimPlugin"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$2;->this$0:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-static {p1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->access$resultCall(Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;)V

    return-void
.end method
