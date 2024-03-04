.class Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->N0(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;->a:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;->a:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;->a:Landroid/util/SparseArray;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;->a:Landroid/util/SparseArray;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Ljava/util/List;)V

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$h;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
