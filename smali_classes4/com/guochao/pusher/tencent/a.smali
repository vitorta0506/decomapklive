.class public final synthetic Lcom/guochao/pusher/tencent/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/pusher/tencent/TencentLivePusher;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/pusher/tencent/TencentLivePusher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/pusher/tencent/a;->a:Lcom/guochao/pusher/tencent/TencentLivePusher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/tencent/a;->a:Lcom/guochao/pusher/tencent/TencentLivePusher;

    invoke-static {v0}, Lcom/guochao/pusher/tencent/TencentLivePusher;->a(Lcom/guochao/pusher/tencent/TencentLivePusher;)V

    return-void
.end method
