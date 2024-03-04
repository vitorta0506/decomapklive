.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/m;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/m;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
