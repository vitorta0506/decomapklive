.class Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;
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
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->T1()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    const v1, 0x7f1209dd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    const v1, 0x7f1209dc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    const v1, 0x7f120a2b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    const v1, 0x7f12010f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    const v1, 0x7f120648

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroidx/fragment/app/FragmentManager;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/TitleTabAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity$a;->a(Ljava/util/List;)V

    return-void
.end method
