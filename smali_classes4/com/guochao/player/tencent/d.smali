.class public final synthetic Lcom/guochao/player/tencent/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/player/tencent/TencentLivePlayer;

.field public final synthetic b:Lcom/guochao/player/tencent/TencentLivePlayer$Player;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/player/tencent/d;->a:Lcom/guochao/player/tencent/TencentLivePlayer;

    iput-object p2, p0, Lcom/guochao/player/tencent/d;->b:Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/player/tencent/d;->a:Lcom/guochao/player/tencent/TencentLivePlayer;

    iget-object v1, p0, Lcom/guochao/player/tencent/d;->b:Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-static {v0, v1}, Lcom/guochao/player/tencent/TencentLivePlayer;->e(Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V

    return-void
.end method
