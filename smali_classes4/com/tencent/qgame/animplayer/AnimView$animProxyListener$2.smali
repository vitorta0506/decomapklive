.class final Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;",
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
        "\u0000\t\n\u0000\n\u0002\u0008\u0003*\u0001\u0001\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "com/tencent/qgame/animplayer/AnimView$animProxyListener$2$1",
        "invoke",
        "()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qgame/animplayer/AnimView;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/AnimView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->this$0:Lcom/tencent/qgame/animplayer/AnimView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;

    invoke-direct {v0, p0}, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;-><init>(Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;->invoke()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;

    move-result-object v0

    return-object v0
.end method
