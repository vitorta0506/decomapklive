.class Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->setDefaultValue(Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

.field final synthetic b:Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;


# direct methods
.method constructor <init>(Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout$b;->b:Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;

    iput-object p2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout$b;->a:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout$b;->b:Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;

    invoke-static {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->n(Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;)Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    move-result-object v1

    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout$b;->b:Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;

    invoke-static {v2}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->o(Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;)Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    move-result-object v2

    iget-object v3, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout$b;->a:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->r(Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;)V

    return-void
.end method