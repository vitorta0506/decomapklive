.class Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/lib_core/feature/Feature;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/lib_core/feature/Feature;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mvpLL:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mvpIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mvpIV:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mvpIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mvpIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mvpLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mvpIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/lib_core/feature/Feature;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;->a(Lcom/guochao/lib_core/feature/Feature;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
