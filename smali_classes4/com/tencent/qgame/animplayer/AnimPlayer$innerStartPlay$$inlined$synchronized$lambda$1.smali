.class final Lcom/tencent/qgame/animplayer/AnimPlayer$innerStartPlay$$inlined$synchronized$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/AnimPlayer;->innerStartPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/tencent/qgame/animplayer/AnimPlayer$innerStartPlay$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $fileContainer$inlined:Lcom/tencent/qgame/animplayer/file/IFileContainer;

.field final synthetic this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimPlayer;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$innerStartPlay$$inlined$synchronized$lambda$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$innerStartPlay$$inlined$synchronized$lambda$1;->$fileContainer$inlined:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$innerStartPlay$$inlined$synchronized$lambda$1;->this$0:Lcom/tencent/qgame/animplayer/AnimPlayer;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimPlayer$innerStartPlay$$inlined$synchronized$lambda$1;->$fileContainer$inlined:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    invoke-static {v0, v1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->access$innerStartPlay(Lcom/tencent/qgame/animplayer/AnimPlayer;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    return-void
.end method
