.class Lcom/guochao/faceshow/aaspring/views/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/n;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/n;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/n;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/n$a;->a:Lcom/guochao/faceshow/aaspring/views/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/n$a;->a:Lcom/guochao/faceshow/aaspring/views/n;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/n;->b(Lcom/guochao/faceshow/aaspring/views/n;)Lcom/guochao/faceshow/aaspring/views/m;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/n$a;->a:Lcom/guochao/faceshow/aaspring/views/n;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/views/n;->a(Lcom/guochao/faceshow/aaspring/views/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    invoke-interface {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/m;->a(Landroid/widget/PopupWindow;Lcom/guochao/faceshow/aaspring/beans/PayoneerData;)V

    return-void
.end method
