.class Lcom/guochao/faceshow/views/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/a$a;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/views/a$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/a$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/a$a$a;->b:Lcom/guochao/faceshow/views/a$a;

    iput p2, p0, Lcom/guochao/faceshow/views/a$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/a$a$a;->b:Lcom/guochao/faceshow/views/a$a;

    iget-object v0, p1, Lcom/guochao/faceshow/views/a$a;->b:Lcom/guochao/faceshow/views/a;

    iget-object v0, v0, Lcom/guochao/faceshow/views/a;->c:Lcom/guochao/faceshow/views/a$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/guochao/faceshow/views/a$a;->a:Ljava/util/List;

    iget v0, p0, Lcom/guochao/faceshow/views/a$a$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/a$a$a;->b:Lcom/guochao/faceshow/views/a$a;

    iget-object p1, p1, Lcom/guochao/faceshow/views/a$a;->b:Lcom/guochao/faceshow/views/a;

    iget-object v0, p1, Lcom/guochao/faceshow/views/a;->c:Lcom/guochao/faceshow/views/a$b;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/views/a$b;->onPayonnerV2Click(Landroid/app/Dialog;)V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/a$a$a;->b:Lcom/guochao/faceshow/views/a$a;

    iget-object p1, p1, Lcom/guochao/faceshow/views/a$a;->b:Lcom/guochao/faceshow/views/a;

    iget-object v0, p1, Lcom/guochao/faceshow/views/a;->c:Lcom/guochao/faceshow/views/a$b;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/views/a$b;->onUSDTClick(Landroid/app/Dialog;)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/views/a$a$a;->b:Lcom/guochao/faceshow/views/a$a;

    iget-object p1, p1, Lcom/guochao/faceshow/views/a$a;->b:Lcom/guochao/faceshow/views/a;

    iget-object v0, p1, Lcom/guochao/faceshow/views/a;->c:Lcom/guochao/faceshow/views/a$b;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/views/a$b;->onPayonnerClick(Landroid/app/Dialog;)V

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/views/a$a$a;->b:Lcom/guochao/faceshow/views/a$a;

    iget-object p1, p1, Lcom/guochao/faceshow/views/a$a;->b:Lcom/guochao/faceshow/views/a;

    iget-object v0, p1, Lcom/guochao/faceshow/views/a;->c:Lcom/guochao/faceshow/views/a$b;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/views/a$b;->onPayPalClick(Landroid/app/Dialog;)V

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object p1, p0, Lcom/guochao/faceshow/views/a$a$a;->b:Lcom/guochao/faceshow/views/a$a;

    iget-object p1, p1, Lcom/guochao/faceshow/views/a$a;->b:Lcom/guochao/faceshow/views/a;

    iget-object v0, p1, Lcom/guochao/faceshow/views/a;->c:Lcom/guochao/faceshow/views/a$b;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/views/a$b;->onBankCardPay(Landroid/app/Dialog;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/a$a$a;->b:Lcom/guochao/faceshow/views/a$a;

    iget-object p1, p1, Lcom/guochao/faceshow/views/a$a;->b:Lcom/guochao/faceshow/views/a;

    iget-object v0, p1, Lcom/guochao/faceshow/views/a;->c:Lcom/guochao/faceshow/views/a$b;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/views/a$b;->onAliPayClick(Landroid/app/Dialog;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
