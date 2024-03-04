.class Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->setTimeFormatter(Li1/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li1/i;

.field final synthetic b:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;


# direct methods
.method constructor <init>(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;Li1/i;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$d;->b:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    iput-object p2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$d;->a:Li1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$d;->a:Li1/i;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Li1/i;->formatMinute(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
