.class Lcom/guochao/faceshow/activity/LanguageActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/LanguageActivity;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/LanguageActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/LanguageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/LanguageActivity$b;->a:Lcom/guochao/faceshow/activity/LanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/LanguageActivity$b;->a:Lcom/guochao/faceshow/activity/LanguageActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/LanguageActivity;->P1(Lcom/guochao/faceshow/activity/LanguageActivity;)Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->c()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/LanguageActivity$b;->a:Lcom/guochao/faceshow/activity/LanguageActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/LanguageActivity$b;->a:Lcom/guochao/faceshow/activity/LanguageActivity;

    const v1, 0x7f120192

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/LanguageActivity$b;->a:Lcom/guochao/faceshow/activity/LanguageActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/LanguageActivity;->T1()V

    return-void
.end method
