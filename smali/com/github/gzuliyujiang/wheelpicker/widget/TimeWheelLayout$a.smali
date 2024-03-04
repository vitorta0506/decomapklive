.class Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;


# direct methods
.method constructor <init>(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$a;->a:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$a;->a:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-static {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->n(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Li1/h;

    move-result-object v0

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$a;->a:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-static {v1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->k(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$a;->a:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-static {v2}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->l(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$a;->a:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-static {v3}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->m(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Li1/h;->a(III)V

    return-void
.end method
