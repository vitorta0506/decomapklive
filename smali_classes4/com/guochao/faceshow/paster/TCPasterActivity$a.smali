.class Lcom/guochao/faceshow/paster/TCPasterActivity$a;
.super Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/paster/TCPasterActivity;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/paster/TCPasterActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/paster/TCPasterActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$a;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 1

    const v0, 0x7f0a05c7

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->c(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p1

    .line 4
    new-instance p2, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;-><init>(Lcom/guochao/faceshow/paster/TCPasterActivity$a;I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/paster/TCPasterActivity$a;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    return-void
.end method
