.class Lcom/guochao/faceshow/mine/view/BlackListActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BlackListActivity$a;->a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/mine/model/PeopleBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/model/PeopleBean;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/BlackListActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BlackListActivity$a;Lcom/guochao/faceshow/mine/model/PeopleBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/BlackListActivity$a;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$a;->a:Lcom/guochao/faceshow/mine/model/PeopleBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/BlackListActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BlackListActivity$a;->a:Lcom/guochao/faceshow/mine/view/BlackListActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$a;->a:Lcom/guochao/faceshow/mine/model/PeopleBean;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/BlackListActivity;->b0(Lcom/guochao/faceshow/mine/view/BlackListActivity;Lcom/guochao/faceshow/mine/model/PeopleBean;)V

    return-void
.end method
