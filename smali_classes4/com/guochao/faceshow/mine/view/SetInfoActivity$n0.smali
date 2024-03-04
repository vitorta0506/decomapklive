.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/activity/LanguageActivity$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->getEvent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$n0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$n0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->d1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$n0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMasteryOfLanguage:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->b1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
