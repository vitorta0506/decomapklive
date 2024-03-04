.class Lcom/guochao/faceshow/views/SliderViewContainer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/SliderViewContainer;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/SliderViewContainer;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/SliderViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/SliderViewContainer;->a(Lcom/guochao/faceshow/views/SliderViewContainer;)Lcom/guochao/faceshow/views/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/s;->w(F)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 2
    iget-object v4, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-static {v4}, Lcom/guochao/faceshow/views/SliderViewContainer;->a(Lcom/guochao/faceshow/views/SliderViewContainer;)Lcom/guochao/faceshow/views/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/views/s;->A()J

    move-result-wide v4

    iget-object v6, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-static {v6}, Lcom/guochao/faceshow/views/SliderViewContainer;->b(Lcom/guochao/faceshow/views/SliderViewContainer;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long/2addr v4, v0

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/SliderViewContainer;->a(Lcom/guochao/faceshow/views/SliderViewContainer;)Lcom/guochao/faceshow/views/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/s;->A()J

    move-result-wide v0

    iget-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/SliderViewContainer;->b(Lcom/guochao/faceshow/views/SliderViewContainer;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/SliderViewContainer;->b(Lcom/guochao/faceshow/views/SliderViewContainer;)J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long p1, v4, v2

    if-gez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/SliderViewContainer;->b(Lcom/guochao/faceshow/views/SliderViewContainer;)J

    move-result-wide v0

    neg-long v0, v0

    :cond_1
    :goto_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/SliderViewContainer;->b(Lcom/guochao/faceshow/views/SliderViewContainer;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p1, v2, v3}, Lcom/guochao/faceshow/views/SliderViewContainer;->c(Lcom/guochao/faceshow/views/SliderViewContainer;J)J

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/SliderViewContainer;->e()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/SliderViewContainer;->d(Lcom/guochao/faceshow/views/SliderViewContainer;)Lcom/guochao/faceshow/views/SliderViewContainer$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/SliderViewContainer;->d(Lcom/guochao/faceshow/views/SliderViewContainer;)Lcom/guochao/faceshow/views/SliderViewContainer$b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/SliderViewContainer$a;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-static {v1}, Lcom/guochao/faceshow/views/SliderViewContainer;->b(Lcom/guochao/faceshow/views/SliderViewContainer;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/guochao/faceshow/views/SliderViewContainer$b;->a(J)V

    :cond_0
    return-void
.end method
