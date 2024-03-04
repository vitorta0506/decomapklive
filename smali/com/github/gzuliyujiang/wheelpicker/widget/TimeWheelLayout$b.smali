.class Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->setDefaultValue(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

.field final synthetic b:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;


# direct methods
.method constructor <init>(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$b;->b:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    iput-object p2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$b;->a:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$b;->b:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-static {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->o(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object v1

    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$b;->b:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-static {v2}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->p(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object v2

    iget-object v3, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$b;->a:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->u(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V

    return-void
.end method
