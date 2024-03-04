.class Lcom/guochao/faceshow/mine/view/BlackListActivity$a;
.super Lcom/guochao/faceshow/utils/AAComAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BlackListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/utils/AAComAdapter<",
        "Lcom/guochao/faceshow/mine/model/PeopleBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/BlackListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BlackListActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a;->a:Lcom/guochao/faceshow/mine/view/BlackListActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/utils/AAComAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/mine/model/PeopleBean;)V
    .locals 5

    .line 1
    iget-object v0, p2, Lcom/guochao/faceshow/mine/model/PeopleBean;->nick_name:Ljava/lang/String;

    const v1, 0x7f0a0c1e

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->setText(ILjava/lang/String;)Lcom/guochao/faceshow/utils/AAViewHolder;

    const v0, 0x7f0a0201

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getImage(I)Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/views/NormalCircleImageView;

    const-string v2, "#d5b67f"

    .line 3
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    const/4 v2, 0x5

    .line 4
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderWidth(I)V

    .line 5
    iget-object v2, p2, Lcom/guochao/faceshow/mine/model/PeopleBean;->img:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a;->a:Lcom/guochao/faceshow/mine/view/BlackListActivity;

    const v4, 0x7f0f0089

    invoke-static {v2, v1, v4, v3}, Lhc/a;->l(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    const v1, 0x7f0a0177

    .line 6
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$a;

    invoke-direct {v2, p0, p2}, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$a;-><init>(Lcom/guochao/faceshow/mine/view/BlackListActivity$a;Lcom/guochao/faceshow/mine/model/PeopleBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$b;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$b;-><init>(Lcom/guochao/faceshow/mine/view/BlackListActivity$a;Lcom/guochao/faceshow/mine/model/PeopleBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/utils/AAViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/mine/model/PeopleBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/BlackListActivity$a;->a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/mine/model/PeopleBean;)V

    return-void
.end method
