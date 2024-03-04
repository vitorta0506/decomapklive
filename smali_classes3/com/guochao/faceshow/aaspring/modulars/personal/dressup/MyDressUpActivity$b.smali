.class Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissLoading()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->lay_content:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$b$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$b;)V

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showNetErrorView(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
