.class public Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->d:Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$a;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->a:F

    return-void
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager$b;->b:F

    return-void
.end method
