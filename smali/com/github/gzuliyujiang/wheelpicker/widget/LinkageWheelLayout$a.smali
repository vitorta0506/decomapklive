.class Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;


# direct methods
.method constructor <init>(Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout$a;->a:Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout$a;->a:Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;

    invoke-static {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->k(Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;)Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout$a;->a:Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;

    invoke-static {v1}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->l(Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;)Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout$a;->a:Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;

    invoke-static {v2}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->m(Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;)Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout$a;->a:Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;

    invoke-static {v3}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->n(Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;)Li1/e;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Li1/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
