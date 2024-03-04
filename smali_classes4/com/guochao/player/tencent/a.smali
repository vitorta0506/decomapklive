.class public final synthetic Lcom/guochao/player/tencent/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Lcom/guochao/player/tencent/TencentLivePlayer;

.field public final synthetic d:Lcom/guochao/player/tencent/TencentLivePlayer$Player;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/player/tencent/a;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/guochao/player/tencent/a;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/guochao/player/tencent/a;->c:Lcom/guochao/player/tencent/TencentLivePlayer;

    iput-object p4, p0, Lcom/guochao/player/tencent/a;->d:Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/player/tencent/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/player/tencent/a;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/guochao/player/tencent/a;->c:Lcom/guochao/player/tencent/TencentLivePlayer;

    iget-object v3, p0, Lcom/guochao/player/tencent/a;->d:Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/player/tencent/TencentLivePlayer;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V

    return-void
.end method
