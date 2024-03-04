.class Lcom/guochao/faceshow/views/TimeSeekBar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/TimeSeekBar;->m(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/TimeSeekBar;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/TimeSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar$b;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar$b;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {p1}, Lcom/guochao/faceshow/views/TimeSeekBar;->e(Lcom/guochao/faceshow/views/TimeSeekBar;)J

    move-result-wide v0

    int-to-long v2, p2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/views/TimeSeekBar;->h(Lcom/guochao/faceshow/views/TimeSeekBar;J)J

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar$b;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {p1}, Lcom/guochao/faceshow/views/TimeSeekBar;->e(Lcom/guochao/faceshow/views/TimeSeekBar;)J

    move-result-wide v0

    int-to-long p2, p3

    mul-long v0, v0, p2

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/views/TimeSeekBar;->j(Lcom/guochao/faceshow/views/TimeSeekBar;J)J

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar$b;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {p1}, Lcom/guochao/faceshow/views/TimeSeekBar;->k(Lcom/guochao/faceshow/views/TimeSeekBar;)Lcom/guochao/faceshow/views/TimeSeekBar$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar$b;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {p1}, Lcom/guochao/faceshow/views/TimeSeekBar;->k(Lcom/guochao/faceshow/views/TimeSeekBar;)Lcom/guochao/faceshow/views/TimeSeekBar$d;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/views/TimeSeekBar$b;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {p2}, Lcom/guochao/faceshow/views/TimeSeekBar;->g(Lcom/guochao/faceshow/views/TimeSeekBar;)J

    move-result-wide p2

    iget-object v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar$b;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {v0}, Lcom/guochao/faceshow/views/TimeSeekBar;->i(Lcom/guochao/faceshow/views/TimeSeekBar;)J

    move-result-wide v0

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/guochao/faceshow/views/TimeSeekBar$d;->a(JJ)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
